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
  Date intStartDate;
  Date intEndDate;
  int salary;
  int acdNo;
  String intState;
}
