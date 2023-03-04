package com.rewrite.feed;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;
import com.rewrite.feed.domain.FeedDTO;

public class FeedListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FeedDAO feedDAO = new FeedDAO();
		Result result = new Result();
		JSONArray feedJsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		
		List<FeedDTO> feedList = null;
		
		String temp = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		String sort = req.getParameter("sort");
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		Long total = feedDAO.getTotal(keyword);

//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 4;
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
		pageMap.put("keyword", keyword);
		pageMap.put("sort", sort);
		
		feedList = feedDAO.getFeedList(pageMap);
		
		feedList.stream().map(feed -> new JSONObject(feed)).forEach(feedJsons::put);
		
		req.setAttribute("feeds", feedJsons.toString());
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("sort", sort);
		req.setAttribute("keyword", keyword);
		
		result.setPath("/feedList.feed");
		
		return result;
	}

}
