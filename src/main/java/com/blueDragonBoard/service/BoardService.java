package com.blueDragonBoard.service;

import java.util.List;

import com.blueDragonBoard.vo.BoardVo;

public interface BoardService {
	
	List<BoardVo> boardList();

	int boardInsert(BoardVo bvo);

}
