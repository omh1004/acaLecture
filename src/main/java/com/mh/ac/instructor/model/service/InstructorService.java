package com.mh.ac.instructor.model.service;

import com.mh.ac.instructor.model.dto.Instructor;
import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;

public interface InstructorService {
    boolean findInstructorById(String id);
    int insertInstructor(Instructor instructor);
    Recruit getRecruitByNo(long no);
    int insertSupInfo(SupInfo supInfo);

    
    Instructor searchInstructorById(String id);

}
