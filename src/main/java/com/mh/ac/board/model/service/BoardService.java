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

    List<Board> getHireList();   // ✅ 채용 공고 리스트 가져오기 추가

    Board getBoardByRecNo(int recNo); // 조회한 No를 기준으로 해당 게시물로 이동


}
