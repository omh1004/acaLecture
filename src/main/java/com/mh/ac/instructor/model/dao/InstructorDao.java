package com.mh.ac.instructor.model.dao;

import com.mh.ac.instructor.model.dto.Instructor;
import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;

import org.apache.ibatis.session.SqlSession;

public interface InstructorDao {
    Instructor findInstructorById(SqlSession session, String id);
    int insertInstructor(SqlSession session, Instructor instructor);
    Recruit getRecruitByNo(SqlSession session, long no);
    int insertSupInfo(SqlSession session, SupInfo supInfo);
}
