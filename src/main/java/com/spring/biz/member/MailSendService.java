package com.spring.biz.member;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service("mss")
public class MailSendService {

	@Autowired
	private JavaMailSenderImpl mailSender;
	private int size;
	

	//인증키 생성
	private String getKey(int size) {
		this.size = size;
		return getAuthCode();
	}

	//인증코드 랜덤수 생성
	private String getAuthCode() {
		Random random = new Random();
		StringBuffer buffer = new StringBuffer();
		int num = 0;

		while(buffer.length() < size) {
			num = random.nextInt(10);
			buffer.append(num);
		}

		return buffer.toString();
	}

	//인증메일 보내기
	public String sendAuthMail(String email) {
		//6자리 랜덤 인증번호 생성
		String authKey = getKey(6);

		//인증메일 보내기
		try {
			MailUtils sendMail = new MailUtils(mailSender);
			sendMail.setSubject("회원가입 이메일 인증");
			sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")
					.append("<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>")
					.append("<a href='http://192.168.0.187:8088/app/signUpConfirm.do?email=")
					.append(email)
					.append("&authKey=")
					.append(authKey)
					.append("' target='_blenk'>이메일 인증 확인</a>")
					.toString());
			sendMail.setFrom("hyeongjin1111@gmail.com", "ACENSE관리자");
			sendMail.setTo(email);
			sendMail.send();
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return authKey;
	}

	//인증메일 보내기
	public String sendChkMail(String email) {
		//6자리 난수 인증번호 생성
		String authKey = getKey(6);

		//인증메일 보내기
		try {
			MailUtils sendMail = new MailUtils(mailSender);
			sendMail.setSubject("ACENSE메일 인증번호입니다.");
			sendMail.setText(new StringBuffer().append("<h2>[인증번호]</h2>")
					.append(authKey)
					.toString());
			sendMail.setFrom("hyeongjin1111@gmail.com", "ACENSE관리자");
			sendMail.setTo(email);
			sendMail.send();
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return authKey;
	}

}