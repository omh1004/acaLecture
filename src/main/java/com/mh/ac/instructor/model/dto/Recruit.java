package com.mh.ac.instructor.model.dto;

import java.sql.Date;

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
  int salary;
  int acdNo;
  String intState;
}
