package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	// servletContext().getRealPath("경로") 형식을 대신하여 파일 자원을 불러올 수 있다
	@Value("classpath:account.txt")
	private Resource account;
	
	public int sendMail(HashMap<String, String> param) 
			throws IOException, AddressException, MessagingException {
		
		File f = account.getFile();
		Scanner sc = new Scanner(f);
		String data = null;
		while(sc.hasNextLine()) {
			data = sc.nextLine();
		}
		sc.close();
		
		String host = "smtp.naver.com";
		int port = 465;
		final String username = data.split("/")[0];
		final String password = data.split("/")[1];
		
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		
		Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
			String un = username;
			String pw = password;
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});
		mailSession.setDebug(true);
		
		InternetAddress from = new InternetAddress("rkdwns21@naver.com");
		InternetAddress to = new InternetAddress(param.get("email"));
		
		Message mimeMessage = new MimeMessage(mailSession);
		mimeMessage.setFrom(from);
		mimeMessage.setRecipient(Message.RecipientType.TO, to);
		mimeMessage.setSubject(param.get("title"));
		mimeMessage.setText(param.get("content"));
		Transport.send(mimeMessage);
		
		return 1;
	}
	// 유저 메일 인증 번호 발송
	public int sendMailconfirm(String ma, HttpSession session) throws IOException {

		File f = account.getFile();
		Scanner sc = new Scanner(f);
		
		String data = null;
		while(sc.hasNextLine()) {
			data = sc.nextLine();
		}
		sc.close();
		
		final String serverId = data.split("/")[0];
		final String serverPw = data.split("/")[1];
		
		String host = "smtp.naver.com";	
		int port = 465;
		
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		
		Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
			String un = serverId;
			String pw = serverPw;
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});
		mailSession.setDebug(true); 	
		
		Message mimeMessage = new MimeMessage(mailSession);
		
		try {
			mimeMessage.setFrom(new InternetAddress("rkdwns21@naver.com"));
			
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(ma));
			
			mimeMessage.setSubject("OnePlus 인증번호 발송");
			
			mimeMessage.setText("1234");
			
			Transport.send(mimeMessage);
			
			return 1;
			
		} catch (AddressException e) {
			System.out.println("잘못된 주소");
			e.printStackTrace();
			return -1;
		} catch (MessagingException e) {
			System.out.println("메시지 전송에 문제 발생");
			e.printStackTrace();
			return -2;
		}
	}

	
	
	
	
	
}
