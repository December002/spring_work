package com.example.boot04;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@GetMapping("/")
	public String home(HttpServletRequest request) {
		
		List<String> noticeList=new ArrayList<String>();
		noticeList.add("spring boot 시작 입니다.");
		noticeList.add("어쩌구...");
		noticeList.add("저쩌구...");
		
		request.setAttribute("noticeList", noticeList);
		
		return "home" ;
	}
	
	@GetMapping("/fortune")
	public ModelAndView fortune(ModelAndView mView) {
		//오늘의 운세
		String fortuneToday="비가 와요";
		//ModelAndView 객체에 모델과 view page 의 정보를 담고
		mView.addObject("fortuneToday",fortuneToday);
		mView.setViewName("fortune");
		//리턴 해준다.
		return mView;
	}
	
	@GetMapping("/fortune2")
	public String fortune2(HttpServletRequest request) {
		//오늘의 운세
		String fortuneToday="비가 와요";
		request.setAttribute("fortuneToday", fortuneToday);
		//리턴 해준다.
		return "fortune";
	}
	
}
