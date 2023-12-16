package com.example.myapp.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;
    public int insertBoard(BoardVO vo) {
        return sqlSession.insert("insertBoard", vo);
    }

    public void deleteBoard(int seq) {
        sqlSession.delete("deleteBoard", seq);
    }

    public int updateBoard(BoardVO vo) {
        return sqlSession.update("updateBoard", vo);
    }

    public BoardVO getBoard(int seq) {
        return sqlSession.selectOne("getBoard", seq);
    }

    public List<BoardVO> getBoardList() {
        return sqlSession.selectList("getBoardList");
    }
}
