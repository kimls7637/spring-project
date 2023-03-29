package com.spring.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterAdvice {
	@After("PointcutCommon.aPointcut()")
	public void printLog2(JoinPoint jp) {
		//System.out.println("로그2");
		
		String methodName = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		
		System.out.println(methodName+" 메소드"+args[0]+"인자로 수행 완료");
	}
}
