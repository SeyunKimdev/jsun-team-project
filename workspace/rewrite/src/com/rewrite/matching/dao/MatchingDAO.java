package com.rewrite.matching.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;

public class MatchingDAO {
public SqlSession sqlSession;
	
	public MatchingDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
