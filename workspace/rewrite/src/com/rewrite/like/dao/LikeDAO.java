package com.rewrite.like.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.like.domain.FeedLikeVO;
import com.rewrite.like.domain.ReplyLikeVO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class LikeDAO {
	public SqlSession sqlSession;
	
	public LikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void feedLikeUp(FeedLikeVO feedLikeVO) {
		sqlSession.selectOne("like.feedLikeUp",feedLikeVO);
	}
	
	public void replyLikeUp(ReplyLikeVO replyLikeVO) {
		sqlSession.selectOne("like.replyLikeUp",replyLikeVO);
	}
	
	public boolean feedLikeCheck(FeedLikeVO feedLikeVO) {
		return sqlSession.selectOne("like.feedLikeCheck",feedLikeVO) == null;
	}
	
	public boolean replyLikeCheck(ReplyLikeVO replyLikeVO) {
		return sqlSession.selectOne("like.replyLikeCheck",replyLikeVO) == null;
	}
	
	public void feedLikeDown(FeedLikeVO feedLikeVO) {
		sqlSession.delete("like.feedLikeDown", feedLikeVO);
	}
	
	public void replyLikeDown(ReplyLikeVO replyLikeVO) {
		sqlSession.delete("like.replyLikeDown", replyLikeVO);
	}	
	
	public Integer feedLikeCount(Long feedId) {
		return sqlSession.selectOne("like.feedLikeCount", feedId);
	}
	
	public Integer replyLikeCount(Long replyId) {
		return sqlSession.selectOne("like.replyLikeCount", replyId);
	}
	
	public void feedLikeCountUpdate(Long feedId) {
		sqlSession.selectOne("like.feedLikeCountUpdate", feedId);
	}
	
	public void replyLikeCountUpdate(Long replyId) {
		sqlSession.selectOne("like.replyLikeCountUpdate", replyId);
	}
}
