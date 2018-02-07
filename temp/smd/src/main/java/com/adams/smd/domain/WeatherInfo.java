package com.adams.smd.domain;

import java.io.Serializable;

public class WeatherInfo implements Serializable{
	
	private static final long serialVersionUID = 6023217383505267661L;
	
	private String city;
	private String date;
	private int hightTemp;
	private int lowTemp;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHightTemp() {
		return hightTemp;
	}
	public void setHightTemp(int hightTemp) {
		this.hightTemp = hightTemp;
	}
	public int getLowTemp() {
		return lowTemp;
	}
	public void setLowTemp(int lowTemp) {
		this.lowTemp = lowTemp;
	}
	@Override
	public String toString() {
		return "WeatherInfo [city=" + city + ", date=" + date + ", hightTemp=" + hightTemp + ", lowTemp=" + lowTemp
				+ "]";
	}
	
}
