package com.sfle.core.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sfle.commons.pojo.SfleResult;
import com.sfle.core.service.MailService;

@Controller
@RequestMapping("/mail")
public class MailController {

	@Autowired
	private MailService mailService;
	
	@RequestMapping("/send")
	@ResponseBody
	public SfleResult sendMail() {
		
		mailService.sendMail("subject", "content", "18240405800@163.com");
		
		return SfleResult.ok();
	}
	
}
