package com.uc.smvc;

import java.awt.List;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.uc.db.BoardDAO;
import com.uc.db.BoardVO;
import com.uc.db.MemberDAO;
import com.uc.db.MemberVO;
import com.uc.db.PageMaker;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MemberDAO dao; //servlet-context.xml파일에 memberDAO 빈 미리 생성되어 있어야 함
	                          //또는 MemberDAO 클래스 정의에서 @Component 해서 미리 memberDAO빈이 생성된다
	
	
	@Autowired
	private BoardDAO boardDAO;   //클래스이름->BoardDAO. 내가 지어도 되는 이름 boardDAO
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)   //루트(/)로 요청하면 main이 돌아감
	public String home(Locale locale, Model model) {
		//return "main";
		return "/start";
	}
	
	@RequestMapping("/StartLoginOK.do")  //  /LoginOK.do로 요청하면 main이 돌아감. 회원가입
	public String StartLoginOK(HttpServletRequest request) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd"); 
		
	//	MemberDAO dao = new MemberDAO();      위에서 @Autowired private MemberDAO dao 연결해줘서 막아도됨
		MemberVO find = dao.checkMember(id, passwd);//find는 vo임
		
		if (find !=null) {//회원
			HttpSession session = request.getSession();
	         session.setAttribute("name", find.getName()); 
	         
	         return "main";
		} 
		else{// 비회원
			return "start";
		}
		
	}
	
	
	@RequestMapping("/logoutOK.do")
	   public String logoutOK(HttpServletRequest request) {
	      HttpSession session = request.getSession();
	      session.invalidate();

	      return "start";
	   }
	
	
	//메인
	@RequestMapping("/start")   //루트(/)로 요청하면 main이 돌아감
	public String startdo(HttpServletRequest request, Model model) {
		return "start";
	}
	
	
	//로그인 성공 시 볼 수 있는 메인
	@RequestMapping("/main")   //루트(/)로 요청하면 main이 돌아감
	public String maindo(HttpServletRequest request, Model model) {
		return "main";
	}

	
	@RequestMapping("/memberList.do")
	public String memberList(Model model) { //Model model ->model을 쓰겠다
	//	MemberDAO dao = new MemberDAO();    
		ArrayList<MemberVO> botari = dao.getAll();// DB에서 모든 회원을 가져옴. botari
		
		for(MemberVO vo:botari) {
			System.out.println("아이디:"+vo.getId());
			System.out.println("비밀번호:"+vo.getPasswd());
			System.out.println("이름:"+vo.getName());
			System.out.println("나이:"+vo.getAge());
			System.out.println("성별:"+vo.getGender());
			System.out.println("이메일:"+vo.getEmail());
			System.out.println("전화번호:"+vo.getTel());
		}
		
		model.addAttribute("botari",botari);     //model -> botari결과를 담아서 넘겨준다(이름은 또 "botari"로!)
		
		return "memberlist";
	}

	@RequestMapping("/joinOK.do")     //회원등록
	public String joinOK(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		MemberVO vo = new MemberVO(id,passwd,name,age,gender,email,tel);
	//	MemberDAO dao = new MemberDAO();
		dao.join(vo); //db에다가 입력받은 회원정보(vo)를 저장한다.
		
		HttpSession session = request.getSession();
        session.setAttribute("name", vo.getName()); 

		return "main"; 
	}
	
	
	@RequestMapping("/join")   //루트(/)로 요청하면 main이 돌아감. start의 회원가입하기
	public String joindo(HttpServletRequest request, Model model) {
		return "join"; 
	}
	
	
	@RequestMapping("/SongNow")   //요즘 잘 듣는 노래
	public String songdo(HttpServletRequest request, Model model) {
	
		
		return "/Song/SongNow"; 
	}
	
	@RequestMapping("/SongSia")   //시아
	public String songsiado(HttpServletRequest request, Model model) {
	
		
		return "/Song/SongSia"; 
	}
	
	
	@RequestMapping("/SongImagine")   //상상용
	public String songimaginedo(HttpServletRequest request, Model model) {
	
		
		return "/Song/SongImagine"; 
	}
	
	@RequestMapping("/SongBillie")   //빌리
	public String songbilliedo(HttpServletRequest request, Model model) {
	
		
		return "/Song/SongBillie"; 
	}

	@RequestMapping("/SongPanic")   //패앳디
	public String songpanicdo(HttpServletRequest request, Model model) {
	
		
		return "/Song/SongPanic"; 
	}
	
	
	@RequestMapping("/SakuraStory")   //사쿠라스토리
	public String sakurastorydo(HttpServletRequest request, Model model) {
	
		
		return "/Sakura/SakuraStory"; 
	}
	
	@RequestMapping("/SakuraCherry")   //사쿠라 체리
	public String sakuracherrydo(HttpServletRequest request, Model model) {
	
		
		return "/Sakura/SakuraCherry"; 
	}
	
	@RequestMapping("/SakuraSong")   //사쿠라 노래
	public String sakurasongdo(HttpServletRequest request, Model model) {
	
		
		return "/Sakura/SakuraSong"; 
	}
	
	@RequestMapping("/PinStory")   //핀과제이크 스토리
	public String pinstorydo(HttpServletRequest request, Model model) {
	
		
		return "/Pin/PinStory"; 
	}
	
	@RequestMapping("/Pinpin")   //핀과제이크 스토리
	public String pinpindo(HttpServletRequest request, Model model) {
	
		
		return "/Pin/Pinpin"; 
	}
	
	@RequestMapping("/PinJake")   //핀과제이크 스토리
	public String pinjakedo(HttpServletRequest request, Model model) {
	
		
		return "/Pin/PinJake"; 
	}
	
	@RequestMapping("/PinSong")   //핀과제이크 스토리
	public String pinsongdo(HttpServletRequest request, Model model) {
	
		
		return "/Pin/PinSong"; 
	}
	
	
	@RequestMapping("/memberjoin.do")
	public String memberjoin(HttpServletRequest request, Model model) {
		return "memberjoin";
	}
	
	
	@RequestMapping("/delete.do")
    public String memberdeletePage(@RequestParam int num , HttpServletRequest req, Model model, HttpSession session) throws UnsupportedEncodingException{

		model.addAttribute("num",num);
		
		
    	ArrayList<BoardVO> boardBotari = boardDAO.getAll();    //Model사용시 쓰는 거 (게시판 입력내용 가져옴)
    	model.addAttribute("boardBotari",boardBotari);         //Model사용 시 쓰는거
    	
		
       req.setCharacterEncoding("EUC-KR");
       


       boardDAO.Delete(num);
       session.invalidate();
       
       return "/board/boardList";
       
       
    }
	
	
	@RequestMapping("/update.do")
	public String update(@RequestParam @Nullable String name ,String subject,String content, int num , HttpServletRequest request, Model model,HttpSession session)throws UnsupportedEncodingException {
		

        
        model.addAttribute("name",name);
        model.addAttribute("subject",subject);
        model.addAttribute("content",content);
        model.addAttribute("num",num);
        
		
    	ArrayList<BoardVO> boardBotari = boardDAO.getAll();    //Model사용시 쓰는 거 (게시판 입력내용 가져옴)
    	model.addAttribute("boardBotari",boardBotari);         //Model사용 시 쓰는거
    	
    	request.setCharacterEncoding("EUC-KR");
  
       boardDAO.update(name,subject,content,num);
       session.invalidate();
       
       return "/board/boardList";
	}
	
	
	
	//게시판 보여주기
    @RequestMapping("/boardList.do")
	public String boardList(HttpServletRequest request, Model model) {

    	 // BoardDAO boardDAO = new BoardDAO();  ->위에서 오토와이어드 했으므로 막아줘도 된다
    		ArrayList<BoardVO> boardBotari = boardDAO.getAll();// board테이블에서 모든 내용을 가져옴
    		
    		for(BoardVO vo:boardBotari) {
    			System.out.println("글번호:"+vo.getNum());
    			System.out.println("제목:"+vo.getSubject());
    			System.out.println("글쓴이:"+vo.getName());
    			System.out.println("내용:"+vo.getContent());
    			System.out.println("날짜:"+vo.getRegdate());
    		}
    		
    		model.addAttribute("boardBotari",boardBotari);     //model -> botari결과를 담아서 넘겨준다(이름은 또 "botari"로!)
		
		return "/board/boardList";
	}
    
    
    //게시판등록
    @RequestMapping("/boardInsertForm.do")
   	public String boardInsertForm(HttpServletRequest request, Model model) {
   		
   		return "/board/boardInsertForm";
   	}
    
    
      //게시판 작성 
	  @RequestMapping("/boardInsertOK.do")    //Http->넘긴 값 받아주는거
	    public String boardInsertOK(HttpServletRequest request ,Model model) {     //게시판 입력한 내용을 board 테이블에 등록  //,Model model(Model사용시 씀)
	    	
//	    	try { 
//				req.setCharacterEncoding("EUC-KR");   //한글 안 깨지게 하는 거!
//			} catch (UnsupportedEncodingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		  
		  


			  String name = request.getParameter("name");   //게시판에 입력한 내용을 받았다
		    	String subject = request.getParameter("subject");
		    	String content = request.getParameter("content");
		    	
		    	//board table에 저장. HomeController랑 BoardDAO랑 연결되게 코드 짜야함
		        //BoardDAO boardDAO = new BoardDAO();
		    	//BoardVO boardVO = new (writer,title,)   -> 넘길게 3개밖에 없어서 이거 안쓰고 함
		    	boardDAO.boardInsert(name,subject,content);
		    	
		 
		    	ArrayList<BoardVO> boardBotari = boardDAO.getAll();    //Model사용시 쓰는 거 (게시판 입력내용 가져옴)
		    	model.addAttribute("boardBotari",boardBotari);         //Model사용 시 쓰는거
			  
			  

		  
		  
	    	
	    	
	    	
//	     	return "redirect:boardList.do";    //boardList를 다시 수행하라(redirect) 게시판전체보기 화면 다시 보여조~
	    	return "/board/boardList"; //->이 페이지 자체를 다시 보여주는거기 때문에 게시판등록한 리스트 내용은 못 읽어냄!(DB에 저장되긴 함) 그래서 redirect쓴다
	    }                                 //이렇게 쓰고싶으면 Model model 해줘야한다
	    
	  

	  @RequestMapping("/listContent.do")   //boardList.jsp에 있음
	    public String listContent(HttpServletRequest request,Model model) {     //게시판 입력한 내용을 board 테이블에 등록  //,Model model(Model사용시 씀)
	    	
	    	int num = Integer.parseInt(request.getParameter("num"));   //boardList에서 버튼 클릭 시 PK인 no를 처리해야함
	    	
	    //	BoardDAO boardDAO = new BoardDAO();
	    	BoardVO vo = boardDAO.getContent(num);  //board에서 선택한 no와 일치하는 content를 가져온다
	    	
	    	HttpSession session = request.getSession();
	         session.setAttribute("num",num);
	         
	         
	    	model.addAttribute("vo",vo);     //"a"<-이런식으로 해도 됨! just name! vo가 내용
	    	
//	     	return "redirect:boardList.do";    //boardList를 다시 수행하라(redirect) 게시판전체보기 화면 다시 보여조~
	    	return "/board/boardContent";   //=> /board/boardContent.jsp
	    }                                

	
	  
	  

	
}
