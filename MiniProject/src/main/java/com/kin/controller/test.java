package com.kin.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kin.entity.chucvu;

@Controller
@RequestMapping("/")
public class test {
	@Autowired
	SessionFactory sessionFactory;
	
	@GetMapping
	@Transactional
	public String ViewDangnhap() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from chucvu";
		List<chucvu> list = session.createSQLQuery(sql).getResultList();
		for (chucvu cv : list) {
			System.out.println(cv.getId());
		}
		return "dangnhap";
	}	
}
