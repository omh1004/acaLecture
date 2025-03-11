package com.mh.ac.board.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class Board {
    private int boardId;
    private String title;
    private String content;
    private String writer;
    private Date createdAt;
}
