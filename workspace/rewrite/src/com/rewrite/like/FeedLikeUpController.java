package com.rewrite.like;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.like.dao.LikeDAO;
import com.rewrite.like.domain.FeedLikeVO;

public class FeedLikeUpController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FeedLikeVO feedLikeVO = new FeedLikeVO();
		LikeDAO likeDAO = new LikeDAO();
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
		Integer count = null;
		feedLikeVO.setFeedId(Long.valueOf(req.getParameter("feedId")));
		feedLikeVO.setMemberId(Long.valueOf(req.getParameter("memberId")));
		
		Long check = likeDAO.feedLikeCheck(feedLikeVO);
		if(check == 0) {
			likeDAO.feedLikeUp(feedLikeVO);
			likeDAO.feedLikeCountUpdate(Long.valueOf(req.getParameter("feedId")));
			count = likeDAO.feedLikeCount(Long.valueOf(req.getParameter("feedId")));
			try {
				json.put("likeCount", count);
				out.print(json.toString());
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		out.close();
		return null;
	}

}
