package com.railproject.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="train_detail")
public class Train {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="train_id")
	private int trainId;
	
	@Column(name="train_no")
	private String trainNo;
	
	@Column(name="train_name")
	private String trainName;
	
	@Column(name="train_start")
	private String trainStart;
	
	@Column(name="train_end")
	private String trainEnd;
	
	@Column(name="train_date")
	private String trainDate;
	
	@Column(name="train_time")
	private String trainTime;
	
	@Column(name="train_class")
	private String trainClass;
	
	@Column(name="train_seat")
	private String trainSeat;
	
	@Column(name="train_fare")
	private int trainFare;
	
	
	

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public String getTrainNo() {
		return trainNo;
	}

	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public String getTrainStart() {
		return trainStart;
	}

	public void setTrainStart(String trainStart) {
		this.trainStart = trainStart;
	}

	public String getTrainEnd() {
		return trainEnd;
	}

	public void setTrainEnd(String trainEnd) {
		this.trainEnd = trainEnd;
	}

	public String getTrainDate() {
		return trainDate;
	}

	public void setTrainDate(String trainDate) {
		this.trainDate = trainDate;
	}

	public String getTrainTime() {
		return trainTime;
	}

	public void setTrainTime(String trainTime) {
		this.trainTime = trainTime;
	}

	public String getTrainClass() {
		return trainClass;
	}

	public void setTrainClass(String trainClass) {
		this.trainClass = trainClass;
	}

	public String getTrainSeat() {
		return trainSeat;
	}

	public void setTrainSeat(String trainSeat) {
		this.trainSeat = trainSeat;
	}

	public int getTrainFare() {
		return trainFare;
	}

	public void setTrainFare(int trainFare) {
		this.trainFare = trainFare;
	}

	@Override
	public String toString() {
		return "Train [trainId=" + trainId + ", trainNo=" + trainNo + ", trainName=" + trainName + ", trainStart="
				+ trainStart + ", trainEnd=" + trainEnd + ", trainDate=" + trainDate + ", trainTime=" + trainTime
				+ ", trainClass=" + trainClass + ", trainSeat=" + trainSeat + ", trainFare=" + trainFare + "]";
	}

	

	
	
	
	
	
}
