package com.li.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.li.entity.User;
import com.li.service.UserService;

@Controller
@RequestMapping("/li")
public class UserController {
	
	@Resource
	private UserService us;
	
	@RequestMapping("/tosuccess")
	public String login(){
		return "success";
	}
	
	@RequestMapping( value="/{id}/user" ,method=RequestMethod.POST)
	@ResponseBody
	public List<User> selectUser(){
		System.out.println("dasdasd");
		List<User> l=us.selectUser();
		System.out.println("size:"+l.size());
		return l;
		
	}

}
