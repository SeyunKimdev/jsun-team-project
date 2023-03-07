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

public class editOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		MypageDTO mypageDTO = new MypageDTO();
//		mypageDTO.setMemberId(1L);
//		Long memberId = mypageDTO.getMemberId();
		

		Long memberId = Long.valueOf(req.getParameter("memberId"));
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
//		req.setAttribute("mypage", new JSONObject(mypageDAO.editSelect(memberId)));
		req.setAttribute("mypage", mypageDAO.editSelect(memberId));
		
		result.setPath("/templates/mypage/edit.jsp");
		
		return result;
	}

}
