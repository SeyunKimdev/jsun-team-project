package com.rewrite.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.member.dao.MemberDAO;

public class CheckPhoneOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out = resp.getWriter();
		MemberDAO memberDAO = new MemberDAO();
		JSONObject json = new JSONObject();
		try {
			json.put("check", memberDAO.checkPhone(req.getParameter("memberPhone")));
			out.print(json.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
		
		return null;
	}

}
