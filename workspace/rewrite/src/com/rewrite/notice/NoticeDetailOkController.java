package com.rewrite.notice;

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

public class NoticeDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long noticeId = Long.valueOf(req.getParameter("noticeId"));
		Result result = new Result();
		NoticeDAO noticeDAO = new NoticeDAO();
		req.setAttribute("notice", new JSONObject(noticeDAO.select(noticeId)));
		result.setPath("templates/notice/noticeDetail.jsp");
		return result;
	}

}


