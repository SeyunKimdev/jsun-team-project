package com.rewrite.like.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.like.domain.FeedLikeVO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class LikeDAO {
	public SqlSession sqlSession;
	
	public LikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void feedLikeUp(FeedLikeVO feedLikeVO) {
		sqlSession.selectOne("like.feedLikeUp",feedLikeVO);
	}
	

	public Long feedLikeCheck(FeedLikeVO feedLikeVO) {
		return sqlSession.selectOne("like.feedLikeCheck",feedLikeVO);
	}
	
	public void feedLikeDown(FeedLikeVO feedLikeVO) {
		sqlSession.delete("like.feedLikeDown", feedLikeVO);
	}
	
	public Integer feedLikeCount(Long feedId) {
		return sqlSession.selectOne("like.feedLikeCount", feedId);
	}
	
	public void feedLikeCountUpdate(Long feedId) {
		sqlSession.selectOne("like.feedLikeCountUpdate", feedId);
	}
	
}
