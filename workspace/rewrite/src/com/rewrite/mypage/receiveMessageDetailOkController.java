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
		Result result = new Result();
		ReceiveMessageDTO receiveMessageDTO = new ReceiveMessageDTO();
		receiveMessageDTO.setMessageId(2L);
		Long messageId = receiveMessageDTO.getMessageId();
		MypageDAO mypageDAO = new MypageDAO();
		
		// 로그인 하면 아래쪽 ?
//		 Long messageId = Long.valueOf(req.getParameter("messageId")); 
//		 req.setAttribute("receiveMessage", new JSONObject(mypageDAO.select(messageId)));
		 req.setAttribute("receiveMessage", mypageDAO.select(messageId));
		
		System.out.println("넘어가기 전");
		result.setPath("/receiveMessageDetail.mypage");
		
		return result;
	}

}
