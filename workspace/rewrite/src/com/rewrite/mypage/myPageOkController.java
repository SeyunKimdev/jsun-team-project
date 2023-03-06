package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.mypage.dao.MypageDAO;
import com.rewrite.mypage.domain.MypageDTO;

public class myPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDTO mypageDTO = new MypageDTO();
		mypageDTO.setMemberId(1L);
		Long memberId = mypageDTO.getMemberId();
		
		// 로그인 하면 아래쪽 ?
		/* Long memberId = Long.valueOf(req.getParameter("memberId")); */
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
		req.setAttribute("mypage", mypageDAO.mypageSelect(memberId));
		
		result.setPath("/mypage.mypage");
		
		return result;
	}
}
