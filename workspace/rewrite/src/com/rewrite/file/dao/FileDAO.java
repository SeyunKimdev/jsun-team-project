package com.rewrite.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.file.domain.FeedFileVO;
import com.rewrite.file.domain.FileVO;
import com.rewrite.file.domain.ReviewFileVO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class FileDAO {
public SqlSession sqlSession;
	
	public FileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	//	첨부파일 추가
		public void insert(FeedFileVO feedFileVO) {
			sqlSession.insert("file.insert", feedFileVO);
		}
		
	//	첨부파일 조회
		public List<FeedFileVO> select(Long feedId) {
			return sqlSession.selectList("file.select", feedId);
		}

		
	//	첨부파일 삭제
		public void delete(Long feedId) {
			sqlSession.delete("file.delete", feedId);
		}
//		------------------review----------------------------
//		review 첨부파일 조회
		public List<ReviewFileVO> selectReview(Long reviewId) {
			return sqlSession.selectList("file.selectfile", reviewId);
		}
	

}
