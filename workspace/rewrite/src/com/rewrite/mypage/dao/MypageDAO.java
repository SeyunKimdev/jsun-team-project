package com.rewrite.mypage.dao;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.mybatis.config.MyBatisConfig;
import com.rewrite.mypage.domain.MypageDTO;

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
	
//	
	
}
