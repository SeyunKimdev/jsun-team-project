package com.rewrite.ranking;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rewrite.Action;
import com.rewrite.Result;

public class RankingController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ArrayList<String> types = null;
		
		if(req.getParameterValues("type") != null) {
			types = new ArrayList<String>(Arrays.asList(req.getParameterValues("type")));
		}
		
		
		result.setPath("/templates/ranking/ranking.jsp");
		return result;
	}

}
