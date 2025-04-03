package com.stm.entities;

public class Student {

	private int id;
	private String name;
	private String email;
	private String contact;
	private String classname;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public Student(int id, String name, String email, String contact, String classname) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.classname = classname;
	}
	public Student(String name, String email, String contact, String classname) {
		super();
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.classname = classname;
	}
	public Student() {
		super();
	}
	public Student(int id) {
		super();
		this.id = id;
	}
	
	
	
	
	
	
}
