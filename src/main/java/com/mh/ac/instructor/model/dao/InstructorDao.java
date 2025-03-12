package com.mh.ac.instructor.model.dao;

import com.mh.ac.instructor.model.dto.Instructor;
import com.mh.ac.instructor.model.dto.Recruit;

import org.apache.ibatis.session.SqlSession;

public interface InstructorDao {

    Instructor findInstructorById(SqlSession sqlSession, String username);
    public Recruit getRecruitByNo(SqlSession session, long no);
}