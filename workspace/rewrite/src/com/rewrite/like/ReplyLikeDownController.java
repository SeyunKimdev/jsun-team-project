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
import com.rewrite.like.domain.ReplyLikeVO;

public class ReplyLikeDownController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		ReplyLikeVO replyLikeVO = new ReplyLikeVO();
		LikeDAO likeDAO = new LikeDAO();
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
		replyLikeVO.setReplyId(Long.valueOf(req.getParameter("replyId")));
		replyLikeVO.setMemberId(Long.valueOf(req.getParameter("memberId")));
		
		boolean check = likeDAO.replyLikeCheck(replyLikeVO);
		
		if(!check) {
			likeDAO.replyLikeDown(replyLikeVO);
			likeDAO.feedLikeCountUpdate(Long.valueOf(req.getParameter("replyId")));
		}else {
			try {
				json.put("check", false);
				out.print(json.toString());
			} catch (JSONException e) {
				e.printStackTrace();
			}finally {
				out.close();
			}
		}
		
		return null;
	}

}
