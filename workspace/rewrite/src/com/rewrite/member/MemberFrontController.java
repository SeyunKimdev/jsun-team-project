package com.rewrite.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;

public class MemberFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/join")) {
			result = new Result();
			result.setPath("/templates/member/join.jsp");
			
		}else if(target.equals("/joinOk")) {
			result = new JoinOkController().execute(req, resp);
			
		}else if(target.equals("/checkIdOk")) {
			new CheckIdOkController().execute(req, resp);
			
		}else if(target.equals("/checkNicknameOk")) {
			new CheckNicknameOkController().execute(req, resp);
			
		}else if(target.equals("/checkPhoneOk")) {
			new CheckPhoneOkController().execute(req, resp);
		}
		else if(target.equals("/smsOk")) {
			new SmsOkController().execute(req, resp);
		}
		else if(target.equals("/login")) {
			result = new LoginController().execute(req, resp);
			
		}else if(target.equals("/loginOk")) {
			result = new LoginOkController().execute(req, resp);
			
		}else if(target.equals("/logout")) {
			result = new LogoutController().execute(req, resp);
			
		}else if(target.equals("/findPw")) {
			result = new Result();
			result.setPath("/templates/member/findPw.jsp");
			
		}
		else if(target.equals("/findId")) {
			result = new Result();
			result.setPath("/templates/member/findId.jsp");
			
		}
		else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
