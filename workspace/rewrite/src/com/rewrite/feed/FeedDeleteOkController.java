package com.rewrite.feed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;

public class FeedDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		FeedDAO feedDAO = new FeedDAO();
		Long feedId = Long.valueOf(req.getParameter("feedId"));
		
		feedDAO.feedDelete(feedId);
		
		result.setPath("/feedListOk.feed");
		result.setRedirect(true);
		
		return result;
	}
}
