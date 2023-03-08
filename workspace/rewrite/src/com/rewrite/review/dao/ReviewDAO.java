package com.rewrite.review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.review.domain.ReviewDTO;
import com.rewrite.review.domain.ReviewVO;

public class ReviewDAO {
public SqlSession sqlSession;
	
	public ReviewDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	reviewList전체 불러오기
	public List<ReviewDTO> selectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("review.selectAll");
	}
	
//	게시물 총 개수 구하기
	public Long getTotal(String keyword) {
		return sqlSession.selectOne("review.getTotal",keyword);
	}
		
}
