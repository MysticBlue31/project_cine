package com.project.cine.dtos;

import lombok.Data;

//영화 기본정보 Dto
@Data
public class MovieDto {
	private String m_code;			//영화코드
	private String m_title;			//영화제목
	private String m_titleen;		//영화영문제목
	private String m_showtime;		//상영시간
	private String m_prdtyear;		//제작연도
	private String m_opendate;		//개봉일
	private String m_nation;		//국가
	private String m_genre;			//장르
	private String m_grade;			//관람등급
	private String m_director;		//감독
	private String m_actor;			//배우
	private String m_summary;		//줄거리
	private String m_imgurl;		//포스터 url
	private String m_avgrate;		//평균 평점
	
	public MovieDto() {
		super();
	}

	public MovieDto(String m_code, String m_title, String m_titleen, String m_showtime, String m_prdtyear,
			String m_opendate, String m_nation, String m_genre, String m_grade, String m_director, String m_actor,
			String m_summary, String m_imgurl, String m_avgrate) {
		super();
		this.m_code = m_code;
		this.m_title = m_title;
		this.m_titleen = m_titleen;
		this.m_showtime = m_showtime;
		this.m_prdtyear = m_prdtyear;
		this.m_opendate = m_opendate;
		this.m_nation = m_nation;
		this.m_genre = m_genre;
		this.m_grade = m_grade;
		this.m_director = m_director;
		this.m_actor = m_actor;
		this.m_summary = m_summary;
		this.m_imgurl = m_imgurl;
		this.m_avgrate = m_avgrate;
	}

	@Override
	public String toString() {
		return "MinfoDto [m_code=" + m_code + ", m_title=" + m_title + ", m_titleen=" + m_titleen + ", m_showtime="
				+ m_showtime + ", m_prdtyear=" + m_prdtyear + ", m_opendate=" + m_opendate + ", m_nation=" + m_nation
				+ ", m_genre=" + m_genre + ", m_grade=" + m_grade + ", m_director=" + m_director + ", m_actor="
				+ m_actor + ", m_summary=" + m_summary + ", m_imgurl=" + m_imgurl + ", m_avgrate=" + m_avgrate + "]";
	}
}
