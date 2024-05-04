package com.entity;

public class BookDtls {
	
	private int bookId;
	private String bookname;
	private String author;
	private String price;
	private String dop;
	private String edition;
	private String maxprice;
	private String status;
	private String photoName;
	private String email;
	public BookDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookDtls(String bookname, String author, String price, String status, String photoName, String email) {
		super();
		this.bookname = bookname;
		this.author = author;
		this.price = price;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "BookDtls [bookId=" + bookId + ", bookname=" + bookname + ", author=" + author + ", price=" + price
				+ ", status=" + status + ", photoName=" + photoName + ", email=" + email + "]";
	}
	
	

}
