package com.railproject.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book_ticket")
public class BookTicket {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	private int book_id;
	
	@Column(name="book_train_no")
	private String bookTrainNo;
	
	@Column(name="book_train_name")
	private String bookTrainName;
	
	@Column(name="book_from")
	private String bookFrom;
	
	@Column(name="book_to")
	private String bookTo;
	
	@Column(name="book_date")
	private String bookDate;
	
	@Column(name="book_time")
	private String bookTime;
	
	@Column(name="book_seat")
	private String bookSeat;
	
	@Column(name="book_fare")
	private String bookFare;
	
	@Column(name="book_class")
	private String bookClass;

	@Column(name="book_user_session")
	private String bookUser;

	@Column(name="book_p_name")
	private String bookPName;
	
	@Column(name="book_p_age")
	private String bookPAge;
	
	@Column(name="book_p_gender")
	private String bookPGender;
	
	@Column(name="book_p_mobile")
	private String bookPMobile;
	
	@Column(name="book_p_email")
	private String bookPEmail;

	public String getBookDate() {
		return bookDate;
	}

	public void setBookDate(String bookDate) {
		this.bookDate = bookDate;
	}

	public String getBookTime() {
		return bookTime;
	}

	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}

	public String getBookSeat() {
		return bookSeat;
	}

	public void setBookSeat(String bookSeat) {
		this.bookSeat = bookSeat;
	}

	public String getBookFare() {
		return bookFare;
	}

	public void setBookFare(String bookFare) {
		this.bookFare = bookFare;
	}

	public String getBookClass() {
		return bookClass;
	}

	public void setBookClass(String bookClass) {
		this.bookClass = bookClass;
	}

	public String getBookPAge() {
		return bookPAge;
	}

	public void setBookPAge(String bookPAge) {
		this.bookPAge = bookPAge;
	}

	public String getBookPGender() {
		return bookPGender;
	}

	public void setBookPGender(String bookPGender) {
		this.bookPGender = bookPGender;
	}

	public String getBookPMobile() {
		return bookPMobile;
	}

	public void setBookPMobile(String bookPMobile) {
		this.bookPMobile = bookPMobile;
	}

	public String getBookPEmail() {
		return bookPEmail;
	}

	public void setBookPEmail(String bookPEmail) {
		this.bookPEmail = bookPEmail;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getBookTrainNo() {
		return bookTrainNo;
	}

	public void setBookTrainNo(String bookTrainNo) {
		this.bookTrainNo = bookTrainNo;
	}

	public String getBookTrainName() {
		return bookTrainName;
	}

	public void setBookTrainName(String bookTrainName) {
		this.bookTrainName = bookTrainName;
	}

	public String getBookFrom() {
		return bookFrom;
	}

	public void setBookFrom(String bookFrom) {
		this.bookFrom = bookFrom;
	}

	public String getBookTo() {
		return bookTo;
	}

	public void setBookTo(String bookTo) {
		this.bookTo = bookTo;
	}

	public String getBookUser() {
		return bookUser;
	}

	public void setBookUser(String bookUser) {
		this.bookUser = bookUser;
	}

	public String getBookPName() {
		return bookPName;
	}

	public void setBookPName(String bookPName) {
		this.bookPName = bookPName;
	}

	@Override
	public String toString() {
		return "BookTicket [book_id=" + book_id + ", bookTrainNo=" + bookTrainNo + ", bookTrainName=" + bookTrainName
				+ ", bookFrom=" + bookFrom + ", bookTo=" + bookTo + ", bookDate=" + bookDate + ", bookTime=" + bookTime
				+ ", bookSeat=" + bookSeat + ", bookFare=" + bookFare + ", bookClass=" + bookClass + ", bookUser="
				+ bookUser + ", bookPName=" + bookPName + ", bookPAge=" + bookPAge + ", bookPGender=" + bookPGender
				+ ", bookPMobile=" + bookPMobile + ", bookPEmail=" + bookPEmail + "]";
	}

	
	
	
	
	
	
}
