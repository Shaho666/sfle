package com.sfle.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.sfle.commons.pojo.MailSenderInfo;
import com.sfle.core.service.MailService;

@Service
public class MailServiceImpl implements MailService {

	@Autowired
	private MailSender mailSender;
	
	@Autowired
    private SimpleMailMessage simpleMailMessage;
	
	@Override
	public boolean sendTextMail(MailSenderInfo mailInfo) {
		// 判断是否需要身份认证
		
		return false;
	}

	@Override
	public boolean sendHtmlMail(MailSenderInfo mailInfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void sendMail(String subject, String content, String to) {
		
		simpleMailMessage.setSubject(subject); //设置邮件主题
        simpleMailMessage.setTo(to);             //设定收件人
        simpleMailMessage.setText(content);  //设置邮件主题内容
        
        mailSender.send(simpleMailMessage); //发送邮件
		
	}

}
