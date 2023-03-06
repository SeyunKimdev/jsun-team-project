package com.rewrite.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;
import com.rewrite.file.dao.FileDAO;

public class FeedModifyController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long feedId = Long.valueOf(req.getParameter("feedId"));
		Result result = new Result();
		FeedDAO feedDAO = new FeedDAO();
		FileDAO fileDAO = new FileDAO();
		
		req.setAttribute("feed", feedDAO.feedSelect(feedId));
		req.setAttribute("files", fileDAO.select(feedId));
		
		result.setPath("/templates/feed/feedModify.jsp");
		
		return result;
	}

}
