package com.rewrite.like.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;

public class FeedLikeDAO {
	public SqlSession sqlSession;
	
	public FeedLikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
