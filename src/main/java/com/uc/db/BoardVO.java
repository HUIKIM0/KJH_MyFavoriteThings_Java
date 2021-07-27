package com.uc.db;

import java.sql.Timestamp;
import java.util.Date;

public class BoardVO {
	private Integer num;
	private String name;
	private String passwd;
	private String subject;
	private String content;
	private String ip;
	private Date regdate;
	private Integer readcount;
	private Integer re_ref;
	private Integer re_lev;
	private Integer re_seq;
	private String filename;
	
	
//	public BoardVO(int num, String name, String passwd, String subject, String content,String ip,Date regdate,
//			       int readcount, int re_ref,int re_lev,int re_seq,String filename) {
//		super();
//		this.num = num;
//		this.name = name;
//		this.passwd = passwd;
//		this.subject = subject;
//		this.content = content;
//	    this.ip=ip;
//	    this.regdate=regdate;
//	    this.readcount=readcount;
//	    this.re_ref=re_ref;
//	    this.re_lev=re_lev;
//	    this.re_seq=re_seq;
//	    this.filename=filename;
//	}

	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	public Integer getReadcount() {
		return readcount;
	}
	public void setReadcount(Integer readcount) {
		this.readcount = readcount;
	}
	
	
	public Integer getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(Integer re_ref) {
		this.re_ref = re_ref;
	}
	
	
	public Integer getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(Integer re_lev) {
		this.re_lev = re_lev;
	}
	
	
	public Integer getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(Integer re_seq) {
		this.re_seq = re_seq;
	}
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

}


