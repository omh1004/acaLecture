package com.mh.ac.teacher.model.dao;

import com.mh.ac.teacher.model.dto.Teacher;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherDaoImpl implements TeacherDao {

    @Override
    public Teacher findTeacherById(SqlSession session, String username) {
        return null;
    }
}
