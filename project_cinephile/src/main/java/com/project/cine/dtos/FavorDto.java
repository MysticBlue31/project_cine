package com.project.cine.dtos;

import lombok.Data;

//장르 선호도 Dto
@Data
public class FavorDto {
	private int f_seq;			//번호
	private String id;			//사용자 id
	private String f_genre;		//선호 장르
	private int f_score;		//선호도
}
