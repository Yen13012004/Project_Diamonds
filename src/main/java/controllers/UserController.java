package controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.impl.CustomerDAOImpl;
import entities.Customer;
import util.Cipher;

@Controller
public class UserController {
	@Autowired
	CustomerDAOImpl customerService;

	@RequestMapping(value={"/", "home"})
	public String home(Model model) {
		/*
		 * // model.addAttribute("page", "home");
		 */		return "user/home";
	}
	
	@RequestMapping(value={ "user/about"})
	public String about(Model model) {
		return "user/about";
	}
	@RequestMapping(value={ "user/singlePost"})
	public String singlePost(Model model) {
		return "user/singlePost";
	}
	@RequestMapping(value={ "user/404"})
	public String notFound(Model model) {
		return "user/404";
	}
	@RequestMapping(value={ "user/shop"})
	public String shop(Model model) {
		return "user/shop";
	}
	@RequestMapping(value={ "user/blog"})
	public String blog(Model model) {
		return "user/blog";
	}
	@RequestMapping(value={ "user/contact"})
	public String contact(Model model) {
		return "user/contact";
	}
	
	@RequestMapping(value = "dang-nhap", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("page", "login");
		return "user/login";
	}
	//POST: dang-nhap (xử lý đăng nhập)
	@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
	public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
		Customer cus = customerService.getCustomer(username);
		String passMd5 = Cipher.GenerateMD5(password);
		if (cus == null || !cus.getPassword().equals(passMd5)) {
			model.addAttribute("msg", "Thông tin đăng nhập sai");
			model.addAttribute("page", "login");
			return "user/login";
		}
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(3600);
		session.setAttribute("userCustomerId", cus.getCustomerId());
		session.setAttribute("avatar", cus.getAvatar());
		session.setAttribute("fullName", cus.getFullName());
		return "redirect:/home";
	}
	//GET: thoat 
	@RequestMapping(value = "thoat")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:user/login";
	}
}
