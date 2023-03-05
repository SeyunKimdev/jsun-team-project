package com.rewrite.ranking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.member.dao.MemberDAO;

public class RankingFilterActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		ArrayList<String> types = null;
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		MemberDAO memberDAO = new MemberDAO();
		
		PrintWriter out = resp.getWriter();
		
		System.out.println(req.getParameter("married"));
		System.out.println(req.getParameter("gender"));
		System.out.println(req.getParameter("type"));
		
		if(req.getParameterValues("type") != null) {
			types = new ArrayList<String>(Arrays.asList(req.getParameterValues("type")));
			searchMap.put("types", types);
		}
		
		if(req.getParameter("married") != null) {
			searchMap.put("married", req.getParameter("married"));
		}
		
		if(req.getParameter("gender") != null) {
			searchMap.put("gender", req.getParameter("gender"));
		}
		
		searchMap.put("startRow", 0);
		searchMap.put("rowCount", 5);
		
		memberDAO.selectAll(searchMap).stream().map(member -> new JSONObject(member)).forEach(jsons::put);

		out.append(jsons.toString());
		out.close();
		
		return null;
	}

}
