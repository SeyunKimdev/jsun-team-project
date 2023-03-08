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
import com.rewrite.file.domain.ReviewFileVO;
import com.rewrite.notice.dao.NoticeDAO;
import com.rewrite.notice.domain.NoticeVO;
import com.rewrite.review.dao.ReviewDAO;
import com.rewrite.review.domain.ReviewDTO;
import com.rewrite.review.domain.ReviewVO;

public class ReviewListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ReviewDAO reviewDAO = new ReviewDAO();
		FileDAO fileDAO = new FileDAO();
		JSONArray reviewJsons = new JSONArray();
		JSONObject fileJsons = new JSONObject();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		
		List<ReviewFileVO> fileList = null;
		List<ReviewDTO> reviewList = null;
		
		String temp = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		String sort = req.getParameter("sort");
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		keyword = keyword == null || keyword.equals("null") ? null : keyword;
		Long total = reviewDAO.getTotal(keyword);
		
//		한페이지에 출력되는 게시글 개수
		int rowCount = 24;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		sort = sort == null ? "recent" : sort;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("sort", sort);
		pageMap.put("keyword", keyword);
		
		reviewList = reviewDAO.selectAll(pageMap);
		reviewList.stream().map(review -> new JSONObject(review)).forEach(reviewJsons::put);
		reviewList.stream().map(ReviewDTO::getReviewId).map(fileDAO::selectReview).collect(Collectors.toList())
		.stream().filter(files -> files.size() != 0).map(files -> files.get(0)).map(file -> new JSONObject(file))
		.forEach(json -> {
			try {
				fileJsons.put(String.valueOf(json.get("reviewId")), json);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		});
		
		req.setAttribute("reviews", reviewJsons.toString());
		req.setAttribute("files", fileJsons.toString());
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("sort", sort);
		req.setAttribute("keyword", keyword);
		
		result.setPath("/templates/review/boardReview.jsp");
		
		return result;
	}

}
