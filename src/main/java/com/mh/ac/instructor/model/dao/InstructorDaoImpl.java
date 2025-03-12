package com.mh.ac.instructor.model.dao;

import com.mh.ac.instructor.model.dto.Instructor;
import org.apache.ibatis.session.SqlSession;

public class InstructorDaoImpl implements InstructorDao {

    @Override
    public Instructor findInstructorById(SqlSession sqlSession, String username) {
        return null;
    }

}
