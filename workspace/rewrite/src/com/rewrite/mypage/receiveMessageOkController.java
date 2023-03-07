package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.mypage.dao.MypageDAO;
import com.rewrite.mypage.domain.ReceiveMessageDTO;

public class receiveMessageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		ReceiveMessageDTO receiveMessageDTO = new ReceiveMessageDTO();
		JSONArray jsons = new JSONArray();
		mypageDAO.selectAll().stream().map(receiveMessage -> new JSONObject(receiveMessage)).forEach(jsons::put);
		req.setAttribute("receiveMessages", jsons);
		
		result.setPath("/templates/mypage/receiveMessage.jsp");
		
		return result;
	}

}
