package com.project.cine.daos;

import java.util.List;

import com.project.cine.dtos.FavorDto;

public interface IFavorDao {

	//장르 선호도 구하기
	public List<FavorDto> getUserFavor(String id);
}
