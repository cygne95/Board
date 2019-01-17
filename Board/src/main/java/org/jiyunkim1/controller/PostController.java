package org.jiyunkim1.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.jiyunkim1.domain.PostVO;
import org.jiyunkim1.service.PostService;

@Controller
@RequestMapping("/post/*")
public class PostController {
	
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);
	
	@Inject 
	private PostService service;
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerGET(PostVO post, Model model) throws Exception{
		
		logger.info("register get ......");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(PostVO post, Model model) throws Exception {
		
		logger.info("register post ........");
		logger.info(post.toString());
		
		service.register(post);;
		
		model.addAttribute("result", "success");
		
		//return "/post/success";
		return "redirect:/post/listAll";
	}
	
	@RequestMapping(value = "/listAll", method=RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		
		logger.info("show all list...............");
	}

}