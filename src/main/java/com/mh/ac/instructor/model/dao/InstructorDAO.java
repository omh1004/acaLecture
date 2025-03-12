package com.mh.ac.instructor.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mh.ac.instructor.model.dto.Recruit;

public interface InstructorDAO {
  public Recruit getRecruitByNo(SqlSession session, long no);
}
