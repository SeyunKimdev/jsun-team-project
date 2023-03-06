package com.rewrite.reply.dao;

import java.util.List;
import java.util.Map;

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
	
//	댓글 목록
	public List<ReplyDTO> selectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("reply.selectAll", pageMap);
	}
	
	public boolean isNextPage(Map<String, Object> pageMap) {
		return sqlSession.selectList("reply.isNextPage", pageMap).size() != 0;
	}
	
//	댓글 수정
	public void replyUpdate(ReplyVO replyVO) {
		sqlSession.update("reply.replyUpdate", replyVO);
	}
	
//	댓글 삭제
	public void replyDelete(Long replyId) {
		sqlSession.delete("reply.replyDelete", replyId);
	}
	
//	댓글 조회
	public ReplyVO replySelect(Long replyId) {
		return sqlSession.selectOne("reply.replySelect", replyId);
	}
}
