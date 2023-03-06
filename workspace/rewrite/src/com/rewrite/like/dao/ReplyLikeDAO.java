package com.rewrite.like.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;

public class ReplyLikeDAO {
	public SqlSession sqlSession;
	
	public ReplyLikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
