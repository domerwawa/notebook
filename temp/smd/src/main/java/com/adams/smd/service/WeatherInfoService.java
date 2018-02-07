package com.adams.smd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.adams.smd.mapper.WeatherInfoMapper;
import com.adams.smd.domain.WeatherInfo;

@Service
public class WeatherInfoService {
	  @Autowired
	  private WeatherInfoMapper weatherInfoMapper;
	  
	  @Transactional
	  public List<WeatherInfo> getAllWeatherInfo() {
		  return weatherInfoMapper.getAllWeatherInfo();
	  }
}
