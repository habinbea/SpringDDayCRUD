package com.example.myapp.board;

import com.example.myapp.board.BoardDAO;
import com.example.myapp.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Comparator;
import java.util.List;

@Controller
public class BoardController {

    @Autowired
    BoardDAO boardDAO;

    @RequestMapping(value = "/board/list", method = RequestMethod.GET)
    public String boardlist(Model model) {
        List<BoardVO> list = boardDAO.getBoardList();
        LocalDate currentDate = LocalDate.now();

        for (BoardVO vo : list) {
            try {
                LocalDate ddate = LocalDate.parse(vo.getDdate(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                long daysBetween = ChronoUnit.DAYS.between(currentDate, ddate);
                vo.setDaysRemaining(daysBetween);
            } catch (Exception e) {
                e.printStackTrace();
                vo.setDaysRemaining(0); // handle appropriately in the future
            }
        }
        list.sort(Comparator.comparingLong(BoardVO::getDaysRemaining));
        model.addAttribute("list", list);
        return "posts";
    }

    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo) {
        int i = boardDAO.insertBoard(vo);
        if (i == 0)
            System.out.println("Add failed!");
        else
            System.out.println("Add successful!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardDAO.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
    public String editOK(BoardVO vo) {
        int i = boardDAO.updateBoard(vo);
        if (i == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/delete/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        boardDAO.deleteBoard(id);
        return "redirect:../list";
    }

    @RequestMapping(value = "/board/view/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardDAO.getBoard(id);

        try {
            LocalDate currentDate = LocalDate.now();
            LocalDate ddate = LocalDate.parse(boardVO.getDdate(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            long daysRemaining = ChronoUnit.DAYS.between(currentDate, ddate);
            boardVO.setDaysRemaining(daysRemaining);
        } catch (Exception e) {
            e.printStackTrace();
            boardVO.setDaysRemaining(0); // or handle appropriately
        }

        model.addAttribute("boardVO", boardVO);
        return "view";
    }
}
