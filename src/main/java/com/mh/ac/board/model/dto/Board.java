package com.mh.ac.board.model.dto;

import lombok.Data;

@Data
public class Board {
    private int recNo; // 공고 번호
    private String recTitle; // 공고 제목
    private String recSubj; // 공고 내용
    private String intStartDate; // 모집 시작 날짜
    private String intEndDate; // 모집 종료 날짜
    private String intStartTime; // 모집 시작 시간
    private String intEndTime; // 모집 종료 시간
    private String salary; // 급여 정보
    private int acDno; // 학원 번호
    private String intState; // 모집 상태
    private String recContent; // 게시글
    private String lectureType;// 대면강의 비대면 강의 구분
}