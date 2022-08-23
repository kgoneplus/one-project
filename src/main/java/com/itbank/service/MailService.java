package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;
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

import com.itbank.oneplus.MemberDTO;

@Service
public class MailService {
	
	// servletContext().getRealPath("경로") 형식을 대신하여 파일 자원을 불러올 수 있다
	@Value("classpath:account.txt")
	private Resource account;
	
	// 아이디 찾기 메일 전송
	public int sendMail(MemberDTO param) 
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
		InternetAddress to = new InternetAddress(param.getEmail());
		
		Message mimeMessage = new MimeMessage(mailSession);
		mimeMessage.setFrom(from);
		mimeMessage.setRecipient(Message.RecipientType.TO, to);
		mimeMessage.setSubject("Oneplus ID찾기");
		mimeMessage.setText(param.getUserid());
		Transport.send(mimeMessage);
		
		return 1;
	}
	
	// 이메일 인증번호 발송
	public String sendMailconfirm(String ma) throws IOException {

		File f = account.getFile();
		Scanner sc = new Scanner(f);
		Random ran = new Random();
		String n1 = ran.nextInt(10) + "";
		String n2 = ran.nextInt(10) + "";
		String n3 = ran.nextInt(10) + "";
		String n4 = ran.nextInt(10) + "";
		String confirm = n1+ n2+ n3 + n4;
		
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
			mimeMessage.setFrom(new InternetAddress("rkdwns21@naver.com"));		// 보내는사람?
			
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(ma));		// 받는사람??
			
			mimeMessage.setSubject("OnePlus 인증번호 발송");
			
			mimeMessage.setText(confirm);
			
			Transport.send(mimeMessage);
			
			return confirm;
			
		} catch (AddressException e) {
			System.out.println("잘못된 주소");
			e.printStackTrace();
			return null;
		} catch (MessagingException e) {
			System.out.println("메시지 전송에 문제 발생");
			e.printStackTrace();
			return null;
		}
	}

	
	
	
	
	
}
