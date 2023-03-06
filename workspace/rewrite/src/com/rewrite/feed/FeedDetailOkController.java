package com.rewrite.feed;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;
import com.rewrite.feed.domain.FeedDTO;
import com.rewrite.file.dao.FileDAO;
import com.rewrite.file.domain.FeedFileVO;
import com.rewrite.reply.dao.ReplyDAO;

public class FeedDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long feedId = Long.valueOf(req.getParameter("feedId"));
		Result result = new Result();
		ReplyDAO replyDAO = new ReplyDAO();
		FeedDAO feedDAO = new FeedDAO();
		FileDAO fileDAO = new FileDAO();
		
		req.setAttribute("replyCount",replyDAO.replyCount(feedId) );
		req.setAttribute("feed", feedDAO.feedSelect(feedId));
		req.setAttribute("page", req.getParameter("page"));
		req.setAttribute("keyword", req.getParameter("keyword"));
		req.setAttribute("sort", req.getParameter("sort"));
		req.setAttribute("files", fileDAO.select(feedId));
		
		result.setPath("/feedDetail.feed");
		
		return result;
	}

}
