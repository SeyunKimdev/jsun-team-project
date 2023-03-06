package com.rewrite.feed;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.rewrite.Action;
import com.rewrite.Result;
import com.rewrite.feed.dao.FeedDAO;
import com.rewrite.feed.domain.FeedVO;
import com.rewrite.file.dao.FileDAO;
import com.rewrite.file.domain.FeedFileVO;
import com.rewrite.file.domain.FileVO;

public class FeedWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		FeedVO feedVO = new FeedVO();
		FeedFileVO fileVO = new FeedFileVO();
		FeedDAO feedDAO = new FeedDAO();
		FileDAO fileDAO = new FileDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		int fileSize = 1024 * 1024 * 5; //5M
		Long feedCurrentSequence = 0L;
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		feedVO.setFeedHashTag(multipartRequest.getParameter("hashTagAll"));
		feedVO.setFeedContent(multipartRequest.getParameter("content"));
		// 로그인 하면은 이거 활성화
		//feedVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
//		로그인 구현되면 이거 삭제
		feedVO.setMemberId(1L);
		
		feedDAO.feedWrite(feedVO);
		
		feedCurrentSequence = feedDAO.getCurrentSequence();
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		System.out.println(uploadPath);
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			fileVO.setFeedId(feedCurrentSequence);
			
			fileDAO.insert(fileVO);
		}
		
		result.setPath(req.getContextPath() + "/feedListOk.feed");
		result.setRedirect(true);
		
		return result;
	}

}
