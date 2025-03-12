package com.mh.ac.board.model.service;

import com.mh.ac.board.model.dto.Board;
import java.util.List;

public interface BoardService {
    List<Board> getAllBoards();
    Board getBoardById(int boardId);
    int insertBoard(Board board);
    int updateBoard(Board board);
    int deleteBoard(int boardId);

    // 추가: 최신 게시글 조회
    List<Board> getLatestBoards();
}
