package com.rewrite.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.notice.domain.NoticeVO;

public class NoticeDAO {
public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<NoticeVO> selectAll() {
		
		return sqlSession.selectList("notice.selectAll");
	}

}
