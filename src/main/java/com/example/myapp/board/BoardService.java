package com.example.myapp.board;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo);
    public void deleteBoard(int id);
    public int updateBoard(BoardVO vo);
    public BoardVO getBoard(int seq);
    public List<BoardVO> getBoardList();
}
