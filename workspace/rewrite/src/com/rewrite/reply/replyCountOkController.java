package com.rewrite.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.reply.dao.ReplyDAO;

public class replyCountOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		ReplyDAO replyDAO = new ReplyDAO();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		
		try {
			jsonObject.put("count",replyDAO.replyCount(Long.valueOf(req.getParameter("feedId"))));
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			out.print(jsonObject.toString());
		}
		out.close();
		
		return null;
	}

}
