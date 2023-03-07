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
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
		feedLikeVO.setFeedId(Long.valueOf(req.getParameter("feedId")));
		feedLikeVO.setMemberId(Long.valueOf(req.getParameter("memberId")));
		
		boolean check = likeDAO.feedLikeCheck(feedLikeVO);
		System.out.println("좋아요 하락 : " + check);
		
		if(!check) {
			likeDAO.feedLikeDown(feedLikeVO);
			likeDAO.feedLikeCountUpdate(Long.valueOf(req.getParameter("feedId")));
		}else {
			try {
				json.put("check", false);
				out.print(json.toString());
			} catch (JSONException e) {
				e.printStackTrace();
			}
				out.close();
			
		}
		
		return null;
	}

}
