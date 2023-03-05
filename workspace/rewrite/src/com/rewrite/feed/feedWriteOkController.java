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
import com.rewrite.file.domain.FileVO;

public class feedWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		FeedVO feedVO = new FeedVO();
		FileVO fileVO = new FileVO();
		FeedDAO feedDAO = new FeedDAO();
		FileDAO fileDAO = new FileDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		System.out.println("경로 : " + uploadPath);
		
		int fileSize = 1024 * 1024 * 5; //5M
		Long feedCurrentSequence = 0L;
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		System.out.println(multipartRequest.getParameter("hashtag"));
		feedVO.setFeedHashTag(multipartRequest.getParameter("hashtag"));
		feedVO.setFeedContent(multipartRequest.getParameter("content"));
		//feedVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		feedVO.setMemberId(1L);
		
		feedDAO.feedWrite(feedVO);
		
		feedCurrentSequence = feedDAO.getCurrentSequence();
		Enumeration<?> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = (String)fileNames.nextElement();
			System.out.println("파일이름" + fileName);
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			System.out.println(feedCurrentSequence);
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			fileVO.se(feedCurrentSequence);
			
			fileDAO.insert(fileVO);
		}
		
		result.setPath(req.getContextPath() + "/feedListOk.feed");
		result.setRedirect(true);
		
		return result;
	}

}
