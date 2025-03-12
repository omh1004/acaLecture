package com.mh.ac.instructor.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mh.ac.instructor.model.dto.Recruit;

@Repository
public class InstructorDAOImpl implements InstructorDAO{
  @Override
  public Recruit getRecruitByNo(SqlSession session, long no){
    return session.selectOne("getRecruitByNo",no);
  }
}
