package com.project.cine.service;

import java.util.List;
import com.project.cine.dtos.BoardDto;


public interface IBoardService {

	
		public static List<BoardDto> getAllList() {
			// TODO Auto-generated method stub
			return null;
		}		//1.글목록 조회
	
		public boolean insertBoard(BoardDto dto);		//2.새글 추가
		
		public BoardDto getBoard(int w_seq);			//3.글 상세보기
		
		public boolean updateBoard(BoardDto dto);		//4.글 수정하기
		
		public boolean readCount(int w_seq);			//5.글 조회수(update문 실행: readcount컬럼에 1씩 증가)
		
		public boolean mulDel(String[] w_seqs) ;		//6.글 삭제하기/글여러개 삭제하기
		
		public boolean replyBoard(BoardDto dto) ;		//7.답글 추가:(UPDATE)추가하기 전에 부모의 STEP보다 큰 값을 가지는 글들의 STEP+1
														//        :(INSERT)부모의 STEP+1 한 값과 글내용들을  추가한다.
														// 한번 요청에 두가지 이상의 작업이 실행되기때문에 트랜젝션 처리가 필요하다.
}
