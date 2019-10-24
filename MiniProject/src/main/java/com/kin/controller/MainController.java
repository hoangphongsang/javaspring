package com.kin.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kin.entity.chucvu;

@Controller
@Transactional
public class MainController {

	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "trangchu";
	}

	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public String ViewDangnhap() {
		try {
			Session session = sessionFactory.getCurrentSession();
			String sql = "from chucvu";
			List<chucvu> list = session.createSQLQuery(sql).getResultList();
			for (chucvu cv : list) {
				System.out.println(cv.getId());
			}
			return "dangnhap";
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return null;
	}
}
