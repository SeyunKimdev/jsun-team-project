package com.rewrite.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.review.domain.ReviewVO;

public class ReviewDAO {
public SqlSession sqlSession;
	
	public ReviewDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	reviewList전체 불러오기
	public List<ReviewVO> selectAll() {
		return sqlSession.selectList("review.selectAll");
	}
	
		
}
