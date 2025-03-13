package com.mh.ac.teacher.model.service;

import com.mh.ac.teacher.model.dao.TeacherDao;
import com.mh.ac.teacher.model.dto.Teacher;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl implements TeacherService {

    private final TeacherDao teacherDao;
    private final SqlSession session;

    public TeacherServiceImpl(TeacherDao teacherDao, SqlSession session) {
        this.teacherDao = teacherDao;
        this.session = session;
    }

    @Override
    public boolean findTeacherById(String id) {
        Teacher teac = teacherDao.findTeacherById(session, id);
        boolean flag = false;
        if (teac != null) {
            flag = true;
        }
        return flag;
    }

    @Override
    public int insertTeacher(Teacher teacher) {
        return teacherDao.insertTeacher(session, teacher);
    }
}
