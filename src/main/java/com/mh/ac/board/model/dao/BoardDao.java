package com.mh.ac.board.model.dao;

import java.util.List;
import com.mh.ac.board.model.dto.Board;

public interface BoardDao {
    List<Board> getAllBoards();  // 게시글 목록 조회
    Board getBoardById(int boardId);  // 특정 게시글 조회
    int insertBoard(Board board);  // 게시글 추가
    int updateBoard(Board board);  // 게시글 수정
    int deleteBoard(int boardId);  // 게시글 삭제
}