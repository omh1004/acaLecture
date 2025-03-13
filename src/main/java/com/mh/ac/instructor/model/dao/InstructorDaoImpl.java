package com.mh.ac.instructor.model.dao;

import com.mh.ac.instructor.model.dto.Instructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

public class InstructorDaoImpl implements InstructorDao {

    @Override
    public Instructor findInstructorById(SqlSession session, String id) {
        return session.selectOne("instructor.findInstructorById", id);
    }

    @Override
    public int insertInstructor(SqlSession session, Instructor instructor) {
        return session.insert("instructor.insertInstructor", instructor);
    }

}
