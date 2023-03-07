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
import com.rewrite.mypage.domain.SendMessageDTO;

public class sendMessageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("sendMessage 체크");
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		SendMessageDTO sendMessageDTO = new SendMessageDTO();
		JSONArray jsons = new JSONArray();
		mypageDAO.selectSendAll(memberId).stream().map(sendMessage -> new JSONObject(sendMessage)).forEach(jsons::put);
		req.setAttribute("sendMessages", jsons);
		
		result.setPath("/templates/mypage/sendMessage.jsp");
		
		return result;
	}

}
