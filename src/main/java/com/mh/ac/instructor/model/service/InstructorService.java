package com.mh.ac.instructor.model.service;

import com.mh.ac.instructor.model.dto.Instructor;

public interface InstructorService {

    boolean findInstructorById(String id);

    int insertInstructor(Instructor instructor);

    Instructor searchInstructorById(String id);

}
