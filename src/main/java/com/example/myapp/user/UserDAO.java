package com.example.myapp.user;

import com.example.myapp.board.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAO {

    @Autowired
    SqlSessionTemplate sqlSession;
    public UserVO getUser(UserVO user) {
        return sqlSession.selectOne("getUser", user);
    }
}
