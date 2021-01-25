package com.project.cine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.cine.daos.IBoardDao;
import com.project.cine.dtos.BoardDto;

@Service
public class BoardService implements IBoardService {

	@Autowired
	private IBoardDao boardDao;
	
	public List<BoardDto> getAllList() {
		return boardDao.getAllList();
	}
	
	@Override
	public BoardDto getBoard(int w_seq) {
		return boardDao.getBoard(w_seq);
	}

	@Override
	public boolean insertBoard(BoardDto dto) {
		return boardDao.insertBoard(dto);
	}


	@Override
	public boolean updateBoard(BoardDto dto) {
		return boardDao.updateBoard(dto);
	}

	@Override
	public boolean readCount(int w_seq) {
		return boardDao.readCount(w_seq);
	}

	@Override
	public boolean mulDel(String[] w_seqs) {
		return boardDao.mulDel(w_seqs);
	}

//	@Transactional
	@Override
	public boolean replyBoard(BoardDto dto) {
		int count=0;
		boardDao.replyBoardUpdate(dto);//update문 실행
		count=boardDao.replyBoardInsert(dto);//insert문 실행
		return count>0?true:false;
	}
	
}
