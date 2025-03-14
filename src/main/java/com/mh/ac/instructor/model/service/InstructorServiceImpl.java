package com.mh.ac.instructor.model.service;


import com.mh.ac.instructor.model.dao.InstructorDao;
import com.mh.ac.instructor.model.dto.Instructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class InstructorServiceImpl implements InstructorService {

    private final InstructorDao instructorDao;
    private final SqlSession session;

    public InstructorServiceImpl(InstructorDao instructorDao, SqlSession session) {
        this.instructorDao = instructorDao;
        this.session = session;
    }

    @Override
    public boolean findInstructorById(String id) {
        Instructor ins = instructorDao.findInstructorById(session,id);
        boolean flag = false;
        if(ins != null){
            flag = true;
        }
        return flag;
    }

    @Override
    public int insertInstructor(Instructor instructor) {
        return instructorDao.insertInstructor(session, instructor);
    }
}
