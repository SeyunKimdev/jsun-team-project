package com.rewrite.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.member.dao.MemberDAO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SmsOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String api_key = "NCSF8LRG4LDF323M";
		String api_secret = "UGS24OKHX6YCPEFTFUK7WBZFEFD35UCD";
		Message coolsms = new Message(api_key, api_secret);
		PrintWriter out = resp.getWriter();
		MemberDAO memberDAO = new MemberDAO();
		String phone = req.getParameter("memberPhone");
		String code = "";
		JSONObject json = new JSONObject();
		Random random = new Random();

		for (int i = 0; i < 6; i++) {
			code += random.nextInt(10);
		}

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phone);
		params.put("from", "01041998127");
		params.put("type", "SMS");
		params.put("text", "REWrite 인증번호 \n[ " + code + "]");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());

		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

		System.out.println(code);
		try {
			json.put("code", code);
			out.print(json.toJSONString());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.close();
		}

		return null;
	}

}
