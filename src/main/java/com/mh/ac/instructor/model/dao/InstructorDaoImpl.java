package com.mh.ac.instructor.model.dao;

import com.mh.ac.instructor.model.dto.Instructor;
import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;

import org.apache.ibatis.session.SqlSession;

public class InstructorDaoImpl implements InstructorDao {

    @Override
    public Instructor findInstructorById(SqlSession session, String id) {
        return session.selectOne("instructor.findInstructorById", id);
    }

    @Override
    public int insertInstructor(SqlSession session, Instructor instructor) {
        return session.insert("instructor.insertInstructor", instructor);
    }

    @Override
    public Recruit getRecruitByNo(SqlSession session, long no){
        return session.selectOne("getRecruitByNo",no);
    }
    // 아무말
    @Override
    public int insertSupInfo(SqlSession session, SupInfo supInfo){
        return session.insert("insertSupInfo",supInfo);
    }
}