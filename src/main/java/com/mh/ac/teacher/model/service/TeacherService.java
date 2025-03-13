package com.mh.ac.teacher.model.service;

import java.util.List;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dto.LectureMember;

public interface TeacherService {
  public LectureMember getTeacherByNo(long no);
  public List<SupInfo> getMyRecruits(long no);
  public int cancelHire(long no);
}
