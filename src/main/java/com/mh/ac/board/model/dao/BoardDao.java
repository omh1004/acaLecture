package com.mh.ac.board.model.dao;

import com.mh.ac.board.model.dto.Board;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

public interface BoardDao {
    List<Board> getAllBoards(SqlSession session);
    Board getBoardById(SqlSession session, int boardId);
    int insertBoard(SqlSession session, Board board);
    int updateBoard(SqlSession session, Board board);
    int deleteBoard(SqlSession session, int boardId);

    // 추가: 최신 게시글 가져오기
    List<Board> getLatestBoards(SqlSession session);
}
