package com.rewrite.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.mypage.dao.MypageDAO;
import com.rewrite.mypage.domain.MypageDTO;

public class editChangeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multi = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		MypageDAO mypageDAO = new MypageDAO();
		MypageDTO mypageDTO = new MypageDTO();
		
		mypageDTO.setMemberId(memberId);
		mypageDTO.setProfileJob(multi.getParameter("memberPassword"));
		mypageDTO.setProfileJob(multi.getParameter("memberNickname"));
		mypageDTO.setProfileJob(multi.getParameter("memberEmail"));
		mypageDTO.setProfileJob(multi.getParameter("profileLocation"));
		mypageDTO.setProfileJob(multi.getParameter("profileJob"));
		mypageDTO.setProfileJob(multi.getParameter("profileHeight"));
		mypageDTO.setProfileJob(multi.getParameter("profileMarried"));
		mypageDTO.setProfileJob(multi.getParameter("profileChild"));
		mypageDTO.setProfileJob(multi.getParameter("profileMbti"));
		mypageDTO.setProfileJob(multi.getParameter("profileHobby"));
		mypageDTO.setProfileJob(multi.getParameter("profileSalary"));
		System.out.println("값 가져옴");
		
		mypageDAO.editChange(mypageDTO);
		System.out.println(mypageDAO);
		
		System.out.println(req.getContextPath());
		result.setPath(req.getContextPath() + "/mypage/mypageOk.mypage");
		result.setRedirect(true);
		
		return result;
	}

}
