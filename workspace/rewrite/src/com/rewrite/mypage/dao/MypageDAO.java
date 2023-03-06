package com.rewrite.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.mypage.domain.MypageDTO;
import com.rewrite.mypage.domain.ReceiveMessageDTO;

public class MypageDAO {
	
public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	내 정보 보기
	public MypageDTO mypageSelect(Long memberId) {
		return sqlSession.selectOne("mypage.mypageSelect", memberId);
	}
	
//	수정 정보 보기
	public MypageDTO editSelect(Long memberId) {
		return sqlSession.selectOne("mypage.mypageSelect", memberId);
	}
	
//	내 코인 보기
	public MypageDTO mycoinSelect(Long memberId) {
		return sqlSession.selectOne("mypage.mypageSelect", memberId);
	}
	
//	내가 받은 메세지 보기
	public List<ReceiveMessageDTO> selectAll() {
		return sqlSession.selectList("receiveMessage.selectAll");
	}
	
//	받은 메세지 상세보기
	public ReceiveMessageDTO select(Long messageId) {
		return sqlSession.selectOne("receiveMessage.select", messageId);
	}
}
