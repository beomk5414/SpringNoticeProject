package com.rsupport.notice.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rsupport.notice.command.member.IdCheckCommand;
import com.rsupport.notice.command.member.MemberCommand;
import com.rsupport.notice.command.member.MemberInsertCommand;
import com.rsupport.notice.command.member.MemberLoginCommand;
import com.rsupport.notice.command.member.SignUpCheckCommand;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	private MemberCommand command;
	private SignUpCheckCommand checkCommand;
	
	@RequestMapping(value = "signUpPage.do", method = RequestMethod.GET)
	public String signUpPage() {
		return "member/signUpPage";
	}
	
	@RequestMapping(value = "idCheck.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> idCheck(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		checkCommand = new IdCheckCommand();
		return checkCommand.execute(sqlSession, model);
	}
	
	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String signUp(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		command = new MemberInsertCommand();
		command.execute(sqlSession, model);
		Map<String, Object> map = model.asMap();
		int result = (int)map.get("signUpResult");
		return "redirect:index.do?signUpResult=" + result;
	}

	@RequestMapping(value = "loginPage.do", method = RequestMethod.GET)
	public String loginPage(Model model) {
		return "member/loginPage";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		command = new MemberLoginCommand();
		command.execute(sqlSession, model);
		Map<String, Object> map = model.asMap();
		int result = (int)map.get("loginResult");
		return "redirect:index.do?loginResult=" + result;
	}
	
	

}
