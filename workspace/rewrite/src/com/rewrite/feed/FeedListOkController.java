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

public class FeedListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FileDAO fileDAO = new FileDAO();
		FeedDAO feedDAO = new FeedDAO();
		Result result = new Result();
		JSONArray feedJsons = new JSONArray();
		JSONObject fileJsons = new JSONObject();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		
		List<FeedFileVO> fileList = null;
		List<FeedDTO> feedList = null;
		
		String temp = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		String sort = req.getParameter("sort");
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		keyword = keyword == null || keyword.equals("null") ? null : keyword;
		Long total = feedDAO.getTotal(keyword);

//		한 페이지에 출력되는 게시글의 개수
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
		
		feedList = feedDAO.getFeedList(pageMap);
		
		feedList.stream().map(feed -> new JSONObject(feed)).forEach(feedJsons::put);
		
		feedList.stream().map(FeedDTO::getFeedId).map(fileDAO::select).collect(Collectors.toList())
		.stream().filter(files -> files.size() != 0).map(files -> files.get(0)).map(file -> new JSONObject(file))
		.forEach(json -> {
			try {
				fileJsons.put(String.valueOf(json.get("feedId")), json);
			} catch (JSONException e) {
				e.printStackTrace();
			}	
		});
		
		req.setAttribute("feeds", feedJsons.toString());
		req.setAttribute("files", fileJsons.toString());
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
