package com.mh.ac.instructor.model.service;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;

public interface InstructorService {
  public Recruit getRecruitByNo(long no);
  public int insertSupInfo(SupInfo supInfo);
}
