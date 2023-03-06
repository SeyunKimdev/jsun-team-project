package com.rewrite.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.notice.dao.NoticeDAO;
import com.rewrite.notice.domain.NoticeVO;
import com.rewrite.review.dao.ReviewDAO;
import com.rewrite.review.domain.ReviewVO;

public class boardReviewOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ReviewVO reviewVO = new ReviewVO();
		ReviewDAO reviewDAO = new ReviewDAO();
		JSONArray jsons = new JSONArray();
		reviewDAO.selectAll().stream().map(review -> new JSONObject(review)).forEach(jsons::put);
		req.setAttribute("reviews", jsons);
		return null;
	}

}
