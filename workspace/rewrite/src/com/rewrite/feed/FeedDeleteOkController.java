package com.rewrite.feed;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;
import com.rewrite.file.dao.FileDAO;

public class FeedDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		FeedDAO feedDAO = new FeedDAO();
		FileDAO fileDAO = new FileDAO();
		Long feedId = Long.valueOf(req.getParameter("feedId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		fileDAO.select(feedId).stream().map(file -> new File(uploadPath + file.getFileSystemName())).forEach(file -> {
			if(file.exists()) {
				file.delete();
			}
		});
		
		fileDAO.delete(feedId);
		feedDAO.feedDelete(feedId);
		
		result.setPath("/feedListOk.feed");
		result.setRedirect(true);
		
		return result;
	}
}
