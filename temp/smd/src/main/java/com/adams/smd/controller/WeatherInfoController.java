package com.adams.smd.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.adams.smd.domain.WeatherInfo;
import com.adams.smd.service.WeatherInfoService;

@Controller
@RequestMapping(value = "/main")
public class WeatherInfoController {
	
	@Autowired
	private WeatherInfoService weatherInfoService;
	
	@RequestMapping("/weather_info")
	public String showWeatherPage(Model model) {
		model.addAttribute("weatherInfos", weatherInfoService.getAllWeatherInfo());
		return "weather_info";
	}
	
	@ResponseBody
	@RequestMapping("/weather_info_json")
	public List<WeatherInfo> fetchWeatherInfoJsonDatas() {
		List<WeatherInfo> weatherInfoList = weatherInfoService.getAllWeatherInfo();
		return weatherInfoList;
	}
}
