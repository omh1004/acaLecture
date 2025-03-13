package com.mh.ac.teacher.model.service;

import com.mh.ac.teacher.model.dto.Teacher;

public interface TeacherService {

    boolean findTeacherById(String id);

    int insertTeacher(Teacher teacher);

}
