package com.li.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import com.li.entity.User;
import com.li.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	
	public List<User> selectUser() {
		List<User> list=new ArrayList<User>();
		for(int i=1;i<=10;i++){
			User u=new User();
			u.setId("ID"+i);
			u.setName("NAME"+i);
			u.setAddress("ADDRESS"+i);
			u.setAge("AGE"+i);
			list.add(u);
		}
		return list;
		
	}

}
