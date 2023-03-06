package com.rewrite.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.reply.dao.ReplyDAO;
import com.rewrite.reply.domain.ReplyVO;

public class ReplyWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		ReplyVO replyVO = new ReplyVO();
		ReplyDAO replyDAO = new ReplyDAO();
		
		replyVO.setReplyContent(req.getParameter("replyContent"));
//		replyVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		replyVO.setMemberId(1L);
		replyVO.setFeedId(Long.valueOf(req.getParameter("feedId")));
		
		replyDAO.insert(replyVO);
		return null;
	}

}
