package com.sfle.core.service;

import com.sfle.commons.pojo.MailSenderInfo;

public interface MailService {

	public boolean sendTextMail(MailSenderInfo mailInfo);
	
	public boolean sendHtmlMail(MailSenderInfo mailInfo);
	
	public void sendMail(String subject, String content, String to);
	
}
