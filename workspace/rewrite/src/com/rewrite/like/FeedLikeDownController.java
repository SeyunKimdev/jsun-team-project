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

public class FeedLikeDownController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FeedLikeVO feedLikeVO = new FeedLikeVO();
		LikeDAO likeDAO = new LikeDAO();
		JSONObject json = new JSONObject();
		PrintWriter out = resp.getWriter();
		feedLikeVO.setFeedId(Long.valueOf(req.getParameter("feedId")));
		feedLikeVO.setMemberId(Long.valueOf(req.getParameter("memberId")));
		
		Long check = likeDAO.feedLikeCheck(feedLikeVO);
		
		
		if(check != 0) {
			likeDAO.feedLikeDown(feedLikeVO);
			likeDAO.feedLikeCountUpdate(Long.valueOf(req.getParameter("feedId")));
			try {
				json.put("likeCount", likeDAO.feedLikeCount(Long.valueOf(req.getParameter("feedId"))));
				out.print(json.toString());
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		out.close();
		return null;
	}

}
