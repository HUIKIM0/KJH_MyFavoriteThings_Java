package com.uc.db;

public class PageMaker {
	private int totalcount;//전체 개시물 개수
	private int pagenum;//현재 페이지 번호
	private int contentnum;//한 페이지에 몇개 표시?
	private int startPage=1;//현재 페이지 블록의 시작페이지
	private int endPage=5;//현재 페이지 블록의 마지막 페이지
	private boolean prev=false;//이전페이지로 가는 화살표
	private boolean next;//다음페이지로 가는 화살표
	private int currentblock;//현재 페이지 블록
	private int lastblock;//마지막 페이지 블록
	
	public void prevnext(int pagenum) {
		if(pagenum>0&&pagenum<6) {
			setPrev(false);
			setNext(true);
		}else if(getLastblock()==getCurrentblock()) {
			setPrev(true);
			setNext(false);
		}
		else {
			setPrev(true);
			setNext(true);
		}
	}
	
	public int calcpage(int totalcount,int contentnum) { //전체 페이지 수를 계산하는 함수
		//ex)전체게시물 125/한페이지에 표시할 게시물 10 -12.5
		//그럼 13페이지를 가지게 됨
		int totalpage=totalcount/contentnum;
		if(totalcount%contentnum>0) {  
			totalpage++;
		}return totalpage;
	}
	
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getContentnum() {
		return contentnum;
	}
	public void setContentnum(int contentnum) {
		this.contentnum = contentnum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currentblock) {
		this.startPage = (currentblock*5)-4;
		//1페이지 //1 2 3 4 5
		//2페이지 //6 7 8 9 10
		//3페이지 //11 12 13 14
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getlastblock,int getcurrentblock) {
		if(getlastblock==getcurrentblock) {
			this.endPage=calcpage(getTotalcount(),getContentnum());
		}else {
			this.endPage=getStartPage()+4;
		}
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentblock() {
		return currentblock;
	}
	public void setCurrentblock(int pagenum) {
		//페이지 번호를 통해서 구한다
		//페이지번호/페이지그룹안의페이지개수
		//현제 페이지 번호 1 / 5 =>0.2가 0이됨(.2날아감) 0+1=>페이지블록1
		this.currentblock=pagenum/5;
		if(pagenum%5>0) {
			this.currentblock++;
		}
	}
	public int getLastblock() {
		return lastblock;
	}
	public void setLastblock(int totalcount) {
		//10,5=>10*5=>50
		this.lastblock = totalcount;
		if(totalcount %(5*this.contentnum)>0) {
			this.lastblock++;
		}
	}
	
	

}
