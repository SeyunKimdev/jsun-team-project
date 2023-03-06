package com.rewrite.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.reply.dao.ReplyDAO;
import com.rewrite.reply.domain.ReplyVO;

public class replyUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		ReplyDAO replyDAO = new ReplyDAO();
		ReplyVO replyVO = new ReplyVO();
		Long replyId = Long.valueOf(req.getParameter("replyId"));
		JSONObject jsonObject = null;
		
		replyVO.setReplyId(replyId);
		replyVO.setReplyContent(req.getParameter("replyContent"));
		
		replyDAO.replyUpdate(replyVO);
		jsonObject = new JSONObject(replyDAO.replySelect(replyId));
		out.print(jsonObject.toString());
		out.close();
		return null;
	}

}
