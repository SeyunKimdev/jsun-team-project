package com.rewrite.member.dao;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.member.domain.MemberDTO;
import com.rewrite.member.domain.MemberVO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class MemberDAO {
	
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MemberDTO> selectAll(Map<String, Object>searchMap){
		return sqlSession.selectList("member.selectAll", searchMap);
	}
//	아이디 중복검사
	public boolean checkId(String memberIdentification) {
		return sqlSession.selectOne("member.checkId", memberIdentification) != null;
	}
	
// 닉네임 중복검사
	public boolean checkNickname(String memberNickname) {
		return sqlSession.selectOne("member.checkNickname", memberNickname) != null;
	}
	
//	휴대폰 중복검사
	public boolean checkPhone(String memberPhone) {
		return sqlSession.selectOne("member.checkPhone", memberPhone) != null;
	}
	
//	휴대폰 인증
	
	
//	회원가입
	public void join(MemberVO memberVO) {
		sqlSession.insert("member.join", memberVO);
	}
	
//	로그인
	public Long login(String memberIdentification, String memberPassword) {
		Map<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberIdentification", memberIdentification);
		loginMap.put("memberPassword", memberPassword);
		return sqlSession.selectOne("member.login", loginMap);
	}
	
//	이름 조회
	public String selectName(Long memberId) {
		return sqlSession.selectOne("member.selectName", memberId);
	}
}
