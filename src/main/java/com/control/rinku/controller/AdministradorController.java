package com.control.rinku.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Locale;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class AdministradorController {
	private static final Logger logger = LoggerFactory.getLogger(AdministradorController.class);
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String test(HttpServletRequest request, Model model) {
		model.addAttribute("scheme", request.getScheme());
		model.addAttribute("serverName", request.getServerName());
		model.addAttribute("port", request.getServerPort());
		model.addAttribute("contextPath", request.getContextPath());
		System.out.println("");
		return "Index";
	}
	
	@RequestMapping(value="/alta", method = RequestMethod.GET)
	public String alta(HttpServletRequest request, Model model) {
		model.addAttribute("scheme", request.getScheme());
		model.addAttribute("serverName", request.getServerName());
		model.addAttribute("port", request.getServerPort());
		model.addAttribute("contextPath", request.getContextPath());
		System.out.println("");
		return "AltaAsignacion";
	}
	
	@RequestMapping(value="/captura", method = RequestMethod.GET)
	public String captura(HttpServletRequest request, Model model) {
		model.addAttribute("scheme", request.getScheme());
		model.addAttribute("serverName", request.getServerName());
		model.addAttribute("port", request.getServerPort());
		model.addAttribute("contextPath", request.getContextPath());
		System.out.println("");
		return "CapturaMovimientos";
	}
}
