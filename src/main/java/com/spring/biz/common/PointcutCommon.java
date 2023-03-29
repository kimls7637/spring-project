package com.spring.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

//직접 수행하는게 아니기 때문에 Service는 없어도 된다.
@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.spring.biz..*Impl.*(..))")
	public void aPointcut() {}
	@Pointcut("execution(* com.spring.biz..*Impl.select*(..))")
	public void bPointcut() {}
}
