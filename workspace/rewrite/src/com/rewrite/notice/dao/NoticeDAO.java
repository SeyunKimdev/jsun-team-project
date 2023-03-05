package com.rewrite.notice.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.notice.domain.NoticeVO;

public class NoticeDAO {
public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	공지사항들 불러오기
	public List<NoticeVO> selectAll() {
		return sqlSession.selectList("notice.selectAll");
	}

}
