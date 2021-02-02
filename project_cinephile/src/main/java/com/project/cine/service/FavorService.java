package com.project.cine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cine.daos.IFavorDao;
import com.project.cine.dtos.FavorDto;

@Service
public class FavorService implements IFavorService {

	@Autowired
	private IFavorDao dao;
	
	@Override
	public List<FavorDto> getUserFavor(String id) {
		return dao.getUserFavor(id);
	}
}
