package com.rewrite.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;

public class ReplyFrontController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = null;
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		
		if (target.equals("/reply/replyListOk")) {
			new ReplyListOkController().execute(req, resp);
			
		}else if(target.equals("/reply/replyList")){
			result = new Result();
			result.setPath("/templates/feed/feedDetailReply.jsp");
			
		}else if(target.equals("/reply/replyWriteOk")){
			new ReplyWriteOkController().execute(req, resp);
			
		}else if(target.equals("/reply/replyUpdateOk")){
			new replyUpdateOkController().execute(req, resp);
			
		}else if(target.equals("/reply/replyDeleteOk")){
			new replyDeleteOkController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}else {
			
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
