package com.blueDragonBoard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blueDragonBoard.vo.BoardVo;

@Mapper
public interface BoardDao {
	
	List<BoardVo> boardList();
	int boardInsert(BoardVo bvo);

}
