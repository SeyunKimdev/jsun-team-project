package com.rewrite.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.mypage.domain.MypageDTO;
import com.rewrite.mypage.domain.ReceiveMessageDTO;
import com.rewrite.mypage.domain.SendMessageDTO;

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
	public List<ReceiveMessageDTO> selectReceiveAll(Long memberId) {
		return sqlSession.selectList("receiveMessage.selectAll", memberId);
	}
	
//	받은 메세지 상세보기
	public ReceiveMessageDTO selectReceive(Long messageId) {
		return sqlSession.selectOne("receiveMessage.select", messageId);
	}
	
//	내가 쓴 메세지 보기
	public List<SendMessageDTO> selectSendAll(Long memberId) {
		return sqlSession.selectList("sendMessage.selectAll", memberId);
	}
	
//	내가 쓴 메세지 상세보기
	public SendMessageDTO selectSend(Long messageId) {
		return sqlSession.selectOne("sendMessage.select", messageId);
	}
}
