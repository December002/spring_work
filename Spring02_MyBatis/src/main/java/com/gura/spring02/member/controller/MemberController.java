package com.gura.spring02.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring02.member.dao.MemberDao;
import com.gura.spring02.member.dto.MemberDto;
import com.gura.spring02.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	/*
	 * 	@RequestMapping 에 method 속성의 값을 명시하지 않으면 요청 방식을 가리지 않고
	 * 	경로만 맞으면 모두 처리해준다(GET 이건 POST 건)
	 * 
	 * 	method 속성의 값을 명시하면 경로가 맞더라도 요청 방식이 다르면 처리해 주지 않는다.
	 * 	일반적으로 POST 인 경우에는 요청방식을 명시해 주는것이 좋다.
	 */
	
	@RequestMapping(method = RequestMethod.POST, value = "/member/update")
	public String update(@ModelAttribute MemberDto dto) {
		service.updateMember(dto);
		
		return "member/update";
	}
	
	
	//회원 수정폼 요청 처리
	@RequestMapping("/member/updateform")
	public ModelAndView updateform(ModelAndView mView, int num) {
		service.getMemberInfo(mView, num);
		mView.setViewName("member/updateform");
		//모델(data) 와 view page 의 정보가 모두 담긴 ModelAndView 객체를 리턴해주면
		//spring 이 알아서 처리해 준다.
		return mView;
	}
	
	/*
	 * @RequestParam(value="파라미터명", defalutValue="기본값")
	 * 기본값은 없어도 되고 파라미터명과 매개변수명이 일치한다면 생략 가능
	 */
	//회원 삭제 요청처리
	@RequestMapping("/member/delete")
	public String delete(@RequestParam(value = "num", defaultValue = "0") int num) {
		//MemberDao 객체를 이용해서 삭제
		service.deleteMember(num);
		//목록보기로 리다이렉트 응답
		return "redirect:/member/list";	
	}
	
	
	//회원추가 요청정리
	@RequestMapping("/member/insert")
	public String insert(MemberDto dto) {
		//MemberDao 객체를 이용해서 DB에 저장
		service.addMember(dto);
		//view page 로 forward 이동해서 응답.
		return "member/insert";
	}
	
	//회원추가 폼 요청 처리
	@RequestMapping("/member/insertform")
	public String insertform() {
		return "member/insertform";
	}
	
	//회원 목록 보기 요청 처리
	@RequestMapping("/member/list")
	public ModelAndView list(ModelAndView mView) {
		//회원목록을 얻어와서
		service.getMemberList(mView);
		mView.setViewName("member/list");
		// /WEB-INF/views/member/list.jsp 페이지로 forward 이동해서 응답
		return mView;
	}

}
