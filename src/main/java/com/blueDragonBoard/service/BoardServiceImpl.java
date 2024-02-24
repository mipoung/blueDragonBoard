package com.blueDragonBoard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueDragonBoard.dao.BoardDao;
import com.blueDragonBoard.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao boardDAO;

	@Override
	public List<BoardVo> boardList() {
		
		return boardDAO.boardList();
	}

	@Override
	public int boardInsert(BoardVo bvo) {
		int result = 0;
		result = boardDAO.boardInsert(bvo);
		return result;
	}

}
