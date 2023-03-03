package com.rewrite.feed.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;

public class FeedDAO {
public SqlSession sqlSession;
	
	public FeedDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
