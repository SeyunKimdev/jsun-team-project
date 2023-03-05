package com.rewrite.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rewrite.member.domain.MemberDTO;
import com.rewrite.mybatis.config.MyBatisConfig;

public class MemberDAO {
	
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MemberDTO> selectAll(Map<String, Object>searchMap){
		return sqlSession.selectList("member.selectAll", searchMap);
	}
}
