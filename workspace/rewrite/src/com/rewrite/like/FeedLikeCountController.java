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

public class FeedLikeCountController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
		LikeDAO likeDAO = new LikeDAO();
		
		try {
			json.put("likeCount", likeDAO.feedLikeCount(Long.valueOf(req.getParameter("feedId"))));
			out.print(json.toString());
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
		
		
		return null;
	}

}
