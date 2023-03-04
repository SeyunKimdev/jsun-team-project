package com.rewrite.feed.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.feed.domain.FeedDTO;
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
	public Long getTotal() {
		return sqlSession.selectOne("feed.getTotal");
	}
	
//	
}
