package com.renbaojia.aspectlog;

import com.renbaojia.controller.UserController;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * Created by renba on 2017/6/13.
 */
@Aspect
@Component
public class MyAspect {
    private static final Logger logger = LoggerFactory.getLogger(MyAspect.class);

    @Pointcut("execution(* com.renbaojia.dao..*(..))")
    private void myPointCut() {

    }

    //前置通知
    @Before("myPointCut()")
    public void myBefore(JoinPoint joinPoint) {
      //  logger.info("前置通知:方法名称：" + joinPoint.getSignature().getName());

    }

    //后置通知
    @AfterReturning("myPointCut()")
    public void myAfterReturning(JoinPoint joinPoint) {
    }

    //环绕通知
    @Around("myPointCut()")
    public Object myAround(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        //System.out.println("环绕开始");
        //执行当前目标方法
        Object object = proceedingJoinPoint.proceed();
        //结束
        // System.out.println("环绕结束");
        return object;

    }

    //异常通知
    @AfterThrowing(value = "myPointCut()", throwing = "e")
    public void myAfterThrowing(JoinPoint joinPoint, Throwable e) {
        //  System.out.println(joinPoint.getSignature().getName()+e.getMessage());
        //logger.debug("异常通知" + joinPoint.getSignature().getName() + e.getMessage());
    }

    //最终通知
    @After("myPointCut()")
    public void myAfter() {
      //  System.out.println("最终通知");
    }
}
