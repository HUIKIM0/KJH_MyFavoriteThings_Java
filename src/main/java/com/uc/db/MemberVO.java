package com.uc.db;

import java.sql.Timestamp;

public class MemberVO {
	
	private String id;
	private String passwd;
	private String name;
	private String age;   //서버일때 Integer
    private String gender;
    private String email;
    private String tel;
    
    
    public MemberVO() {
    	
    }
    
	public MemberVO(String id, String passwd, String name, String age, String gender,String email,String tel) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.age=age;
		this.gender=gender;
		this.email=email;
		this.tel = tel;
	}
    
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
    
    
}
