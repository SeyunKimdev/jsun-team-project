package com.rewrite.feed.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.feed.domain.FeedDTO;
import com.rewrite.feed.domain.FeedVO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class FeedDAO {
public SqlSession sqlSession;
	
	public FeedDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	피드 리스트 가져오기 
	public List<FeedDTO> getFeedList(Map<String, Object> pageMap) {
		return sqlSession.selectList("feed.getFeedList", pageMap);
	}
	
//	피드 총 개수
	public Long getTotal(String keyword) {
		return sqlSession.selectOne("feed.getTotal",keyword);
	}
	
// 피드 작성
	public void feedWrite(FeedVO feedVO) {
		sqlSession.selectOne("feed.feedWrite",feedVO);
	}
	
//	현재 시퀀스 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("feed.getCurrentSequence");
	}
	
// 피드 상세보기
	public FeedDTO feedSelect(Long feedId) {
		return sqlSession.selectOne("feed.feedSelect", feedId);
	}
	
//	피드 수정
	public void feedUpdate(FeedVO feedVO) {
		System.out.println(feedVO);
		sqlSession.update("feed.feedUpdate", feedVO);
	}
// 피드 삭제
	public void feedDelete(Long feedId) {
		sqlSession.delete("feed.feedUpdate", feedId);
	}
		
	
}
