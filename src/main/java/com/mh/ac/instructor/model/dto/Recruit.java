package com.mh.ac.instructor.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Recruit {
  long recNo;
  String recTitle;
  String recSubj;
  String intStartDate;
  String intEndDate;
  String intStartTime;
  String intEndTime;
  int salary;
  int acdNo;
  String intState;
}
