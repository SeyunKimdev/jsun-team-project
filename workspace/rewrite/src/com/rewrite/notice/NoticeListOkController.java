package com.rewrite.notice;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.notice.dao.NoticeDAO;
import com.rewrite.notice.domain.NoticeVO;

public class NoticeListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		NoticeVO noticeVO = new NoticeVO();
		NoticeDAO noticeDAO = new NoticeDAO();
		JSONArray jsons = new JSONArray();
		noticeDAO.selectAll().stream().map(notice -> new JSONObject(notice)).forEach(jsons::put);
		req.setAttribute("notices", jsons);
		
		result.setPath("/templates/notice/notice.jsp");
		return result;
	}

}
