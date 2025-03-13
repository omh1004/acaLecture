package com.mh.ac.instructor.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SupInfo {
  long supNo;
  String interviewDate;
  String interviewTime;
  String selectState;
  long lemNo;
  long recInfoNo;
}
