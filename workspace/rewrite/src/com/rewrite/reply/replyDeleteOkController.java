package com.rewrite.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.reply.dao.ReplyDAO;

public class replyDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		ReplyDAO replyDAO = new ReplyDAO();
		replyDAO.replyDelete(Long.valueOf(req.getParameter("replyId")));
		return null;
	}

}
