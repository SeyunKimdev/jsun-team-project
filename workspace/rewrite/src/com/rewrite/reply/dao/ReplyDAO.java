package com.rewrite.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.reply.domain.ReplyDTO;
import com.rewrite.reply.domain.ReplyVO;

public class ReplyDAO {
	public SqlSession sqlSession;
	
	public ReplyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
//	댓글 추가
	public void insert(ReplyVO replyVO) {
		sqlSession.insert("reply.insert", replyVO);
	}
	
}
