package com.rewrite.like;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LikeFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		
		if (target.equals("/like/feedLikeUp")) {
			new FeedLikeUpController().execute(req, resp);
			
		}else if (target.equals("/like/feedLikeDown")) {
			new FeedLikeDownController().execute(req, resp);
			
		}else if (target.equals("/like/feedLikeCount")) {
			new FeedLikeCountController().execute(req, resp);
			
		}else if (target.equals("/like/replyLikeUp")) {
			new ReplyLikeUpController().execute(req, resp);
			
		}else if (target.equals("/like/replyLikeDown")) {
			new ReplyLikeDownController().execute(req, resp);
			
		}else if (target.equals("/like/replyLikeCount")) {
			new ReplyLikeCountController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
