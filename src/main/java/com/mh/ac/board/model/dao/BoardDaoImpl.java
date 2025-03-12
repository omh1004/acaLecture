package com.mh.ac.board.model.dao;

import com.mh.ac.board.model.dto.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class BoardDaoImpl implements BoardDao {

    @Override
    public List<Board> getAllBoards(SqlSession session) {
        return session.selectList("board.getAllBoards");
    }

    @Override
    public Board getBoardById(SqlSession session, int boardId) {
        return session.selectOne("board.getBoardById", boardId);
    }

    @Override
    public int insertBoard(SqlSession session, Board board) {
        return session.insert("board.insertBoard", board);
    }

    @Override
    public int updateBoard(SqlSession session, Board board) {
        return session.update("board.updateBoard", board);
    }

    @Override
    public int deleteBoard(SqlSession session, int boardId) {
        return session.delete("board.deleteBoard", boardId);
    }

    @Override
    public List<Board> getLatestBoards(SqlSession session) {
        return session.selectList("board.getLatestBoards");
    }
}
