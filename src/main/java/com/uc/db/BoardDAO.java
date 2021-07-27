package com.uc.db;


import java.sql.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

//BoardDAO 클래스로 부터 객체-빈(boardDAO)를 생성해서 빈으로 스프링 컨테이너에 등록 시킴.스프링에다가 등록시킨 걸 필요할때마다 쓴다
@Component  //HomeController에서 Autowired 해준거 @Component 이런식으로 해서 받아줘야함
public class BoardDAO {

	
	private Connection conn = null;
	private PreparedStatement pstm = null;
	private ResultSet rs = null; // select문 수행후 결과를 저장하는 객체

	public void connectDB() {
		try {
			// String dbURL = "jdbc:mysql://localhost:3306/BBS"; //MySQL 5.xx 까지 사용
			String dbURL = "jdbc:mysql://localhost:3306/sp51712107?serverTimezone=UTC&useSSL=false";
			String dbID = "spring5";
			String dbPassword = "1234";
			

			// jdbc 드라이브 로딩1
			// Class.forName("com.mysql.jdbc.Driver"); //MySQL 5.xx 까지 사용
			Class.forName("com.mysql.cj.jdbc.Driver");

			// DB 연결
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

			System.out.println("DB 연결 OK");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 연결 실패");
		}
	}

	public void closeDB() {
		try {
			if (pstm != null)
				pstm.close();
			if (rs != null)
				rs.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int login(String id,String password) {
		String SQL="select * password from member where id=?";
		try {
			pstm=conn.prepareStatement(SQL);
			pstm.setString(1,id);
			rs=pstm.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) 
					return 1;//로그인 성공
					else
						return 0; //비밀번호 불일치
			}
			return -1; //아이디가 없음
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}

	// 게시판 등록할때 사용할거! 게시판 하나의 내용을 DB에 등록
	public void boardInsert(String name,String subject,String content) { // 회원 1명 DB에 등록(회원가입)->예전주석

		connectDB();//

		String SQL = "insert into board(name,subject,content) values(?,?,?)";  //writer,title,content,regdate(no는 자동증가이므로 내가 하는게 아님!)

		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, name);
			pstm.setString(2, subject);
			pstm.setString(3, content);	


			pstm.executeUpdate(); // insert, update, delete 문에 사용
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDB();
	}

	// *******************************
	public BoardVO getContent(int num) {
		connectDB();
		String SQL = "select * from board where num=?";  //no값으로 글 내용을 불러오기 위함
		BoardVO vo = null;// 결과를 담는 그릇 객체,객체 안만들어짐,변수 선언만 해놓은 셈임

		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setInt(1, num);

			rs = pstm.executeQuery(); // select 문 수행시=>결과가 생성되는데 이 결과를 rs에 담음
			// 결과 출력
			if (rs.next() == true) {//결과:no,title,writer,content,regdate
				vo=new BoardVO();
				vo.setNum(rs.getInt("num"));
				vo.setName(rs.getString("name"));
				vo.setSubject(rs.getString("subject"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getDate("regdate"));
			} else {//결과가 없음(회원 아님)

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeDB();
		return vo;
	}
	
	// ******************************board table에 있는 모든 레코드를 넘겨줌
	public ArrayList<BoardVO> getAll( ) {
		ArrayList<BoardVO> botari = new ArrayList<BoardVO>();
		
		connectDB();
		String SQL = "select * from board";//전체 회원 가져오는 sql
		BoardVO vo = null;//결과를 담는 그릇 객체
			
		try {
			pstm = conn.prepareStatement(SQL);
			rs=pstm.executeQuery(); //select 문 수행 결과가 rs 테이블에 다 담겨져 있음
			
			//rs 테이블의 모든 레코드를 botari에 담는다
			while(rs.next() == true) {
				vo = new BoardVO();//1개의 레코드를 담을 빈그릇(vo)을 준비
				vo.setNum(rs.getInt("num"));
				vo.setName(rs.getString("name"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setSubject(rs.getString("subject"));
				vo.setContent(rs.getString("content"));
				vo.setIp(rs.getString("ip"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRe_ref(rs.getInt("re_ref"));
				vo.setRe_lev(rs.getInt("re_lev"));
				vo.setRe_seq(rs.getInt("re_seq"));
				vo.setFilename(rs.getString("filename"));
				botari.add(vo); 
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		closeDB();
		return botari;
	}
	
//	public ArrayList<BoardVO> listAll(int start,int end,String search_option,String keyword) throws Exception{
//		Map<String,Object>map=new HashMap<>();
//		map.put("search_option",search_option);
//		map.put("keyword",keyword);
//		map.put("start",start);
//		map.put("end",end);
//		return map;
//		
//		
//	}
	
	

	public void Delete(int num) {// 회원 1명 DB에 등록하는거

		   connectDB();//
		   
		   

		   String SQL = "delete from board where num =?";

		   try {
		      pstm = conn.prepareStatement(SQL);
		      pstm.setInt(1, num);// tel);
		      
		      pstm.executeUpdate(); // insert, update, delete 문에 사용
		   } catch (SQLException e) {
		      e.printStackTrace();
		   }
		   closeDB();
		}
	
	
	
	

	
	//수정하기
	public void update(String name,String subject,String content,int num) {   //vo는 namecardVO 이므로 이렇게 써줌
		connectDB(); // DB불러서 DB연결
		
		String SQL = "update board set name=?,subject=?,content=? where num=?";

		try { // 예외처리 꼭 해줘야 한다

			pstm = conn.prepareStatement(SQL); // 이거 공식임. 
			pstm.setString(1, name);
			pstm.setString(2, subject);
			pstm.setString(3, content);
			pstm.setInt(4, num);
			
			
			pstm.executeUpdate();  //insert,update,delect문에 사용 (얘내들은 MYSQL에서 수행할때 결과 테이블을 안 띄워줌)
		} catch (SQLException e) {
			e.printStackTrace();
		}//try end
		closeDB(); // 연결을 해줬으니까 DB연결끊어줌
	} 
	
	
//	//삭제하기(num로)
//	public void delete(String ) {   //vo는 namecardVO 이므로 이렇게 써줌
//		connectDB(); // DB불러서 DB연결
//		String SQL = "delete from board where name=?"; // MYSQL문의 insert into user value(' ',' '); 라는 형식을 취하는 값을 수행
//
//		try { // 예외처리 꼭 해줘야 한다
//			pstm = conn.prepareStatement(SQL); // 이거 공식임. 
//			pstm.setInt(1,num);  //두번째 물음표에 stno
//
//			pstm.executeUpdate();  //insert,update,delect문에 사용 (얘내들은 MYSQL에서 수행할때 결과 테이블을 안 띄워줌)
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}//try end
//		closeDB(); // 연결을 해줬으니까 DB연결끊어줌
//	} 
	
}
