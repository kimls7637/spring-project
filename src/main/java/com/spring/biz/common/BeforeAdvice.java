package com.spring.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service //하단의 메소드를 수행하기 위해서 로그어드바이스 자체를 객체화해야 Impl에서 로그어드바이스를 호출할 수 있음. 같은 레벨에서 수행되기 때문에 Service를 쓴다.
@Aspect //이게 있어야 실행시 위빙처리가 가능, 메소드와 어드바이스를 보고 결합해준다
public class BeforeAdvice {
	
	//동작시점 어노테이션을 통해 누구와 결합할지 결정할 수 있다.
	@Before("PointcutCommon.aPointcut()") //원래 AfterRunning처럼 써야하지만 1개일때는 이렇게 사용
	public void printLog(JoinPoint jp) {
		//System.out.println("[로그] 비즈니스 메소드 수행전에 호출되는 로그");
		
		String methodName = jp.getSignature().getName(); //메
		Object[] args = jp.getArgs(); //핵심관심이 사용하는 인자
		
		System.out.println(methodName+" 메소드"+args[0]+"인자로 수행 예정");
	}
}
