package com.rewrite.event.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;


public class EventDAO {
	public SqlSession sqlSession;
	
	public EventDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
//	-----------------------------------------DAO 매소드-----------------------------------------
	
//	이벤트 목록 추가
	
//	이벤트 목록 수정
	
//	이벤트 조회
	
//	이벤트 삭제
	
//	이벤트 상세보기
	
	

}
