package com.project.cine.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.cine.dtos.BoardDto;

@Repository
public class BoardDao implements IBoardDao {
	
	private String namespace = "com.project.cine.board.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<BoardDto> getAllList() {
		return sqlSession.selectList(namespace+"getAllList");
	}

	@Override
	public BoardDto getBoard(int w_seq) {
		Map<String, Integer>map=new HashMap<>();
		map.put("w_seq", w_seq);
		return sqlSession.selectOne(namespace+"getAllList",map);
	}
	
	@Override
	public boolean insertBoard(BoardDto dto) {
		int count=sqlSession.insert(namespace+"insertBoard", dto);
		return count>0?true:false;
	}


	@Override
	public boolean updateBoard(BoardDto dto) {
		int count=sqlSession.update(namespace+"ansUpdateBoard", dto);
		return count>0?true:false;
	}

	@Override
	public boolean readCount(int w_seq) {
		int count=sqlSession.update(namespace+"readCount", w_seq);
		return count>0?true:false;
	}

	@Override
	public boolean mulDel(String[] w_seqs) {
		Map<String,String[]> map=new HashMap<>();
		map.put("w_seqs", w_seqs);
		int count=sqlSession.update(namespace+"muldel", map);
		return count>0?true:false;
	}


	@Override
	public int replyBoardUpdate(BoardDto dto) {
		return sqlSession.update(namespace+"replyUpdate", dto);
	}


	@Override
	public int replyBoardInsert(BoardDto dto) {
		return sqlSession.insert(namespace+"replyInsert", dto);
	}

	
	
}
