package com.rewrite.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;
import com.rewrite.feed.FeedDeleteOkController;
import com.rewrite.feed.FeedDetailOkController;
import com.rewrite.feed.FeedListOkController;
import com.rewrite.feed.FeedModifyController;
import com.rewrite.feed.FeedModifyOkController;
import com.rewrite.feed.FeedWriteOkController;

public class ReplyFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null; 
		
		if (target.equals("/replyListOk")) {
			result = new ReplyListOkController().execute(req, resp);
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
