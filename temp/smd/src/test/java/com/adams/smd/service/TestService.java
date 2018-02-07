package com.adams.smd.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestService {

	public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("spring-context.xml");
		WeatherInfoService weatherInfoService=(WeatherInfoService) ctx.getBean("weatherInfoService", WeatherInfoService.class);
		weatherInfoService.getAllWeatherInfo();

	}

}
