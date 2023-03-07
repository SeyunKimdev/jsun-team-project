package com.rewrite.review;

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
import com.rewrite.file.dao.FileDAO;
import com.rewrite.file.domain.FileVO;
import com.rewrite.notice.dao.NoticeDAO;
import com.rewrite.notice.domain.NoticeVO;
import com.rewrite.review.dao.ReviewDAO;
import com.rewrite.review.domain.ReviewDTO;
import com.rewrite.review.domain.ReviewVO;

public class ReviewListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ReviewDTO reviewDTO = new ReviewDTO();
		ReviewDAO reviewDAO = new ReviewDAO();
		FileDAO fileDAO = new FileDAO();
		JSONArray jsons = new JSONArray();
		JSONObject fileJson = new JSONObject();
		List<FileVO> fileList = null;
		List<ReviewDTO> reviewList = null;
		
		
		reviewList = reviewDAO.selectAll();
		reviewList.stream().map(review -> new JSONObject(review)).forEach(jsons::put);
		reviewList.stream().map(ReviewDTO::getReviewId).map(fileDAO::select).collect(Collectors.toList())
		.stream().filter(files -> files.size() !=0).map(files -> files.get(0)).map(file -> new JSONObject(file))
		.forEach(json -> {
			try {
				fileJson.put(String.valueOf(json.get("reviewId")), false);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		});
		
		req.setAttribute("reviews", jsons.toString());
		req.setAttribute("files", fileJson.toString());
		System.out.println(jsons.toString());
		System.out.println(fileJson.toString());
		result.setPath("/templates/review/boardReview.jsp");
		return result;
	}

}
