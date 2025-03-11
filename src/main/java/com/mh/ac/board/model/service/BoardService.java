package com.mh.ac.board.model.service;

import java.util.List;
import com.mh.ac.board.model.dto.Board;

public interface BoardService {
    List<Board> getAllBoards();
    Board getBoardById(int boardId);
    int insertBoard(Board board);
    int updateBoard(Board board);
    int deleteBoard(int boardId);
}
