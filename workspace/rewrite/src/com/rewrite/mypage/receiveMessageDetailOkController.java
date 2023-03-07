package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.mypage.dao.MypageDAO;
import com.rewrite.mypage.domain.MypageDTO;
import com.rewrite.mypage.domain.ReceiveMessageDTO;

public class receiveMessageDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("detail들어옴");
		Long messageId = Long.valueOf(req.getParameter("messageId"));
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
//		 req.setAttribute("receiveMessage", new JSONObject(mypageDAO.selectReceive(messageId)));
		 req.setAttribute("receiveMessage", mypageDAO.selectReceive(messageId));
		
		System.out.println("넘어가기 전");
		result.setPath("/templates/mypage/receiveMessageDetail.jsp");
		
		return result;
	}

}
