package com.rewrite.feed;

import java.io.File;
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

public class FeedModifyOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		FeedVO feedVO = new FeedVO();
		FeedFileVO fileVO = new FeedFileVO();
		FileDAO	fileDAO = new FileDAO();
		FeedDAO feedDAO = new FeedDAO();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Long feedId = Long.valueOf(multipartRequest.getParameter("feedId"));
		
		feedVO.setFeedId(feedId);
		feedVO.setFeedHashTag(multipartRequest.getParameter("hashTagAll"));
		feedVO.setFeedContent(multipartRequest.getParameter("content"));
		
		
		fileDAO.select(feedId).stream().map(file -> new File(uploadPath + file.getFileSystemName())).forEach(file -> {
			System.out.println(file.getAbsolutePath());
			if(file.exists()) {
				file.delete();
			}
		});
		
		feedDAO.feedUpdate(feedVO);
		fileDAO.delete(feedId);
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			fileVO.setFeedId(feedId);
			
			fileDAO.insert(fileVO);
		}
		
		result.setPath(req.getContextPath() + "/feedListOk.feed");
		result.setRedirect(true);
		
		return result;
	}

}
