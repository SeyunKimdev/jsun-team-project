package com.rewrite.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;

public class FeedFrontController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null; 
		
		if (target.equals("/feedDetailOk")) {
			result = new FeedDetailOkController().execute(req, resp);
			
		}else if (target.equals("/feedDetail")) {
			result = new Result();
			result.setPath("templates/feed/feedDetail.jsp");
			
		}else if (target.equals("/feedList")) {
			result = new Result();
			result.setPath("templates/feed/feed.jsp");
			
		}else if (target.equals("/feedListOk")) {
			result = new FeedListOkController().execute(req, resp);
			
		}else if (target.equals("/feedWrite")) {
			result = new Result();
			result.setPath("templates/feed/feedInsert.jsp");
			
		}else if (target.equals("/feedWriteOk")) {
			result = new FeedWriteOkController().execute(req, resp);
			
		}else if (target.equals("/feedDeleteOk")) {
			result = new FeedDeleteOkController().execute(req, resp);
			
		}else if (target.equals("/feedModify")) {
			result = new FeedModifyController().execute(req, resp);
			
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
			System.err.println("result == null");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
