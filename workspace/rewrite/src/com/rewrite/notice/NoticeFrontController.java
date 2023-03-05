package com.rewrite.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Result;
import com.rewrite.event.ListOkController;

public class NoticeFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		if (target.equals("/noticeListOk")) {
			result = new NoticeListOkController().execute(req, resp);
		}else if(target.equals("/notice")){
			result = new Result();
			result.setPath(req.getContextPath() + "/noticeListOk.notice");
		}else {
			System.err.println(target);
		}
		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
