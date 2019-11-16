package com.railproject.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="train_news")
public class News {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="news_id")
	private int newsId;
	
	@Column(name="news_date")
	private String newsDate;
	
	/* @DateTimeFormat(pattern= "dd/MM/yyyy") */
	@Temporal(TemporalType.DATE)
	@Column(name="test_date")
	private Date testDate;
	
	@Column(name="news")
	private String newsDetail;
	
	private MultipartFile newsFile;

	
	
	
	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(String newsDate) {
		this.newsDate = newsDate;
	}

	public String getNewsDetail() {
		return newsDetail;
	}

	public void setNewsDetail(String newsDetail) {
		this.newsDetail= newsDetail;
	}

	
	
	public Date getTestDate() {
		return testDate;
	}

	public void setTestDate(Date testDate) {
		this.testDate = testDate;
	}

	

	public MultipartFile getNewsFile() {
		return newsFile;
	}

	public void setNewsFile(MultipartFile newsFile) {
		this.newsFile = newsFile;
	}

	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsDate=" + newsDate + ", testDate=" + testDate + ", newsDetail="
				+ newsDetail + ", newsFile=" + newsFile + "]";
	}

	
	




	
	
	
}
