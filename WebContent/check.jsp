<%@ page language="java" import="java.sql.*" import="java.util.*" contentType="text/html;; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>试卷</title>
</head>
<body> 
<%
JspWriter mout=pageContext.getOut();

String us = request.getParameter("username");
String ch = request.getParameter("choose");
int num = Integer.parseInt(us);
int cho = Integer.parseInt(ch);
if(cho == 1)
{
	mout.print(num+"道整数题目");
	mout.print("<br>");
		String[] str = new String[num+1];
		str[0]="";
		for(int i=1;i<=num;i++)
		{
			String ss="";
			int state = 0;
			int intVal3 = (int)(Math.random()*4+1);
			int intVal1 = 0;
			int intVal2 = 0;
			while(state == 0)
			{
				intVal1 = (int)(Math.random()*100+1);
				intVal2 = (int)(Math.random()*100+1);
				
				ss = intVal1+""+intVal2;
				
				for(int j=0;j<i;j++)
				{
					if(ss.equals(str[i-1]))
						state=0;
					else
					{
						state=1;
						str [i]=intVal1+""+intVal2;
					}
				}
			}
			
			mout.print(i+" 、 ");
			if(intVal3==1){
				mout.print(intVal1);
				mout.print("  +  ");
				mout.print(intVal2);
				mout.print("= ?");
				mout.print("<br>");
			}
			if(intVal3==2){
				mout.print(intVal1);
				mout.print("  -  ");
				mout.print(intVal2);
				mout.print("= ?");
				mout.print("<br>");
				}
			if(intVal3==3){
				mout.print(intVal1);
				mout.print("  *  ");
				mout.print(intVal2);
				mout.print("= ?");
				mout.print("<br>");
				}
			if(intVal3==4){
				mout.print(intVal1);
				mout.print("  ÷  ");
				mout.print(intVal2);
				mout.print("= ?");
				mout.print("<br>");
				}
		}
}
	if(cho == 2)
	{
		mout.print(num+"道真分数题目");
		mout.print("<br>");
		String[] st = new String[num+1];
		st[0]="";
		for(int i=1;i<=num;i++)
		{
			int num1 = 0;
			int num2 = 0;
			int num3 = 0;
			int num4 = 0;
			
			String ss="";
			String ss1="";
			String ss2="";
			int state = 0;
			int intVal3 = (int)(Math.random()*4+1);
			while(state == 0)
			{
				
				while(num1==num2)
				{	
					num1 = (int)(Math.random()*100+1);num2 = (int)(Math.random()*100+1);
				
					if(num1<num2)
					{
						ss1=num1+"/"+num2;
					}
					else
					{
						ss1=num2+"/"+num1;
					}
				}
				
				while(num3==num4)
				{
					num3 = (int)(Math.random()*100+1);num4 = (int)(Math.random()*100+1);
					if(num3<num4)
					{
						ss2=num3+"/"+num4;
					}
					else
					{
						ss2=num4+"/"+num3;
					}
				}
				
				ss =ss1+ss2;
				for(int j=0;j<i;j++)
				{
					if(ss.equals(st[i-1]))
						state=0;
					else
					{
						state=1;
						st [i]=ss1+ss2;
					}
				}
			}
			
			mout.print(i+" 、 ");
			if(intVal3==1){
				mout.print(ss1);
				mout.print("  +  ");
				mout.print(ss2);
				mout.print("= ?");
				mout.print("<br>");
			}
			if(intVal3==2){
				mout.print(ss1);
				mout.print("  -  ");
				mout.print(ss2);
				mout.print("= ?");
				mout.print("<br>");
				}
			if(intVal3==3){
				mout.print(ss1);
				mout.print("  *  ");
				mout.print(ss2);
				mout.print("= ?");
				mout.print("<br>");
				}
			if(intVal3==4){
				mout.print(ss1);
				mout.print("  ÷  ");
				mout.print(ss2);
				mout.print("= ?");
				mout.print("<br>");
			}
		}
	}



%>
</body>
</html>