package com.rewrite.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.member.dao.MemberDAO;
import com.rewrite.member.domain.MemberVO;


public class JoinOkController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		memberVO.setMemberIdentification(req.getParameter("memberIdentification"));
		memberVO.setMemberPassword(req.getParameter("memberPassword"));
		memberVO.setMemberNickname(req.getParameter("memberNickname"));
		memberVO.setMemberPhone(req.getParameter("memberPhone"));
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberBirth(req.getParameter("memberBirth"));
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberGender(req.getParameter("memberGender"));
		
		memberDAO.join(memberVO);
		
		result.setPath(req.getContextPath() + "/login.member");
		result.setRedirect(true);
		
		return result;
	}
}
