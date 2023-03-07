package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.mypage.dao.MypageDAO;

public class sendMessageDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		Long messageId = Long.valueOf(req.getParameter("messageId"));
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
		req.setAttribute("sendMessage", new JSONObject(mypageDAO.selectReceive(messageId)));
		result.setPath("/templates/mypage/sendMessageDetail.jsp");
		
		return result;
	}

}
