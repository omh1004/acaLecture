package com.mh.ac.board.model.service;

import com.mh.ac.board.model.dao.BoardDao;
import com.mh.ac.board.model.dto.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    private final BoardDao boardDao;
    private final SqlSession session;

    public BoardServiceImpl(BoardDao boardDao, SqlSession session) {
        this.boardDao = boardDao;
        this.session = session;
    }

    @Override
    public List<Board> getAllBoards() {
        return boardDao.getAllBoards(session);
    }

    @Override
    public Board getBoardById(int boardId) {
        return boardDao.getBoardById(session, boardId);
    }

    @Override
    public int insertBoard(Board board) {
        return boardDao.insertBoard(session, board);
    }

    @Override
    public int updateBoard(Board board) {
        return boardDao.updateBoard(session, board);
    }

    @Override
    public int deleteBoard(int boardId) {
        return boardDao.deleteBoard(session, boardId);
    }

    @Override
    public List<Board> getLatestBoards() {
        return boardDao.getLatestBoards(session);
    }

    @Override
    public List<Board> getHireList() {  // ✅ DB에서 채용 공고 가져오기
        return boardDao.getHireList(session);
    }

}
