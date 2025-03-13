package com.mh.ac.board.controller;

import com.mh.ac.board.model.dto.Board;
import com.mh.ac.board.model.service.BoardService;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Log4j2
@Controller
//@RequestMapping("/lecture")
public class BoardController {

    @Autowired
    private BoardService boardService;
//    private final Logger logger = LoggerFactory.getLogger(BoardController.class);

//    public BoardController(BoardService boardService) {
//        this.boardService = boardService;
//    }

    // 게시글 목록 조회
    @GetMapping("/list")
    public String list(Model model) {
        List<Board> boardList = boardService.getAllBoards();
        model.addAttribute("boardList", boardList);
        return "board/list"; // JSP 파일 경로
    }

    // 게시글 상세 조회
    @GetMapping("/view/{id}")
    public String view(@PathVariable("id") int boardId, Model model) {
        Board board = boardService.getBoardById(boardId);
        model.addAttribute("board", board);
        return "board/view"; // JSP 파일 경로
    }

    // 게시글 작성 페이지 이동
    @GetMapping("/write")
    public String writeForm() {

        log.info("start");
        System.out.println("system start");

        return "index"; // JSP 파일 경로
    }

    // 게시글 등록
    @PostMapping("/write")
    public String write(@ModelAttribute Board board) {
        int result = boardService.insertBoard(board);
        return result > 0 ? "redirect:/board/list" : "common/error";
    }

    // 게시글 수정
    @PostMapping("/update")
    public String update(@ModelAttribute Board board) {
        int result = boardService.updateBoard(board);
        return result > 0 ? "redirect:/board/list" : "common/error";
    }

    // 게시글 삭제
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int boardId) {
        int result = boardService.deleteBoard(boardId);
        return result > 0 ? "redirect:/board/list" : "common/error";
    }

    // 메인 페이지에서 최신 게시글 가져와서 뿌려주자.
    @GetMapping({"/"})
    public String index(Model model) {
        log.info("start");
        List<Board> boardList = boardService.getLatestBoards(); // 최신 게시글 가져오기
        System.out.println("boardList size: " + (boardList != null ? boardList.size() : "null"));
        log.info("boardList size: " + (boardList != null ? boardList.size() : "null"));
        model.addAttribute("boardList", boardList);
        return "index"; // index.jsp로 이동
    }

//    // 고용 정보 게시판 형태로 뿌려주기sksk
//    @GetMapping("/instructor/hirelist")
//    public String hirelist(Model model) {
//        List<Board> hireList = boardService.getHireList(); // ✅ DB에서 고용 정보 가져오기
//        model.addAttribute("hireList", hireList); // ✅ JSP로 전달
//        return "instructor/hirelist"; // ✅ JSP 파일 호출
//    }
}
