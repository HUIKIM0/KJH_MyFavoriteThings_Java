package com.uc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.springframework.stereotype.Component;


@Component  //MemberDAO 클래스로 부터 객체-빈(memberDAO)를 생성해서 빈으로 스프링 컨테이너에 등록 시킴
public class MemberDAO {

	private Connection conn = null;
	private PreparedStatement pstm = null;
	private ResultSet rs = null; // select문 수행후 결과를 저장하는 객체

	public void connectDB() {
		try {
			// String dbURL = "jdbc:mysql://localhost:3306/BBS"; //MySQL 5.xx 까지 사용
			String dbURL = "jdbc:mysql://localhost:3306/sp51712107?serverTimezone=UTC"; //..?....??
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

	// public void join(String name, String id, String pwd, String tel) {
	public void join(MemberVO vo) {// 회원 1명 DB에 등록(회원가입)

		connectDB();//

		String SQL = "insert into member values(?,?,?,?,?,?,?)";

		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, vo.getId());
			pstm.setString(2, vo.getPasswd());
			pstm.setString(3, vo.getName());
			pstm.setString(4, vo.getAge());
			pstm.setString(5, vo.getGender());
			pstm.setString(6, vo.getEmail());
			pstm.setString(7, vo.getTel());

			pstm.executeUpdate(); // insert, update, delete 문에 사용
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDB();
	}

	// *******************************
	public MemberVO checkMember(String id, String passwd) {
		connectDB();
		String SQL = "select * from member where id=? and passwd=?";//회원검사
		MemberVO vo = null;// 결과를 담는 그릇 객체,객체 안만들어짐,변수 선언만 해놓은 셈임

		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, id);
			pstm.setString(2, passwd);

			rs = pstm.executeQuery(); // select 문 수행시=>결과가 생성되는데 이 결과를 rs에 담음
			// 결과 출력
			if (rs.next() == true) {//결과가 있음(회원임)
				vo=new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setName(rs.getString("name"));
				vo.setTel(rs.getString("tel"));
			} else {//결과가 없음(회원 아님)

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeDB();
		return vo;
	}
	
	// *******************************
	public ArrayList<MemberVO> getAll( ) {
		ArrayList<MemberVO> botari = new ArrayList<MemberVO>();
		
		connectDB();
		String SQL = "select * from member";//전체 회원 가져오는 sql
		MemberVO vo = null;//결과를 담는 그릇 객체
			
		try {
			pstm = conn.prepareStatement(SQL);
			rs=pstm.executeQuery(); //select 문 수행 결과가 rs 테이블에 다 담겨져 있음
			
			//rs 테이블의 모든 레코드를 botari에 담는다
			while(rs.next() == true) {
				vo = new MemberVO();//1개의 레코드를 담을 빈그릇(vo)을 준비
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setName(rs.getString("name"));
				vo.setAge(rs.getString("age"));
				vo.setGender(rs.getString("gender"));
				vo.setEmail(rs.getString("email"));
				vo.setTel(rs.getString("tel"));
				botari.add(vo); 
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		closeDB();
		return botari;
	}
}
