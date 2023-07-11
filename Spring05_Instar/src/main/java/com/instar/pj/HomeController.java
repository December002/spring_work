package com.instar.pj;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.instar.pj.gallery.service.GalleryService;


@Controller
public class HomeController {
	@Autowired
	private GalleryService service;
	
	@RequestMapping("/")
	public String home(HttpServletRequest request) {
		service.getList(request);
		
		return "home";
	}	
	
}
