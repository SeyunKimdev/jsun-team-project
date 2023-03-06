package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;

public class MypageFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null; 
		
		if (target.equals("/mypageOk")) {
			result = new myPageOkController().execute(req, resp);
			
		} else if(target.equals("/mypage")) {
			result = new Result();
			result.setPath("/templates/mypage/mypage.jsp");
			
		} else if(target.equals("/editOk")) {
			result = new editOkController().execute(req, resp);
			
		} else if(target.equals("/edit")) {
			result = new Result();
			result.setPath("/templates/mypage/edit.jsp");
			
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
		}else {
			System.err.println("result == null");
		}
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
