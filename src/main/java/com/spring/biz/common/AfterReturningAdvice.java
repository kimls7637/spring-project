package com.spring.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterReturningAdvice {

	@AfterReturning(pointcut="PointcutCommon.bPointcut()", returning="obj") //인자가 있을때 이렇게 사용
	public void printLogARA(JoinPoint jp, Object obj) {
		///// System.out.println("[ARA 로그] 비즈니스 메서드 수행 이후에 호출되는 로그");

		String methodName = jp.getSignature().getName(); //메
		Object[] args = jp.getArgs(); //핵심관심이 사용하는 인자
		System.out.println("[로그]"+methodName);
		System.out.println("인자 "+args[0] +" 사용");

		System.out.println("결과 "+obj +" 반환됨");
	} 



}