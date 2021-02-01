package com.project.cine.utils;

public class Util {

	//배우명단 세로 편집
	public static String getActorList(String actorsList)
	{
		int iCount = 0;
		int iSize = actorsList.length();
		String result = "";
		
		for(int i = 0; i < iSize; i++)
		{
			if(actorsList.charAt(i) == ',')
			{
				result += "<br>";	//다음 문자가 ','면 줄바꿈 태그 추가
				iCount++;			//배우 숫자 + 1
			}
			else
				result += Character.toString(actorsList.charAt(i));
			
			//명단의 최대 배우 숫자는 7명으로 제한 
			if(iCount > 6)
				break;
		}

		return result;
	}
	
	//배우명단에서 한글이름만 잘라내기
	public static String getActorNameKR(String actorsList)
	{
		String[] array = actorsList.split(",");
		String result = "";
		int iCount = 0;
		
		for(int i = 0; i < array.length; i++)
		{
			//1.'/'의 위치를 찾기
			//2.처음부터 찾은 위치까지 자르면 배우의 한글이름
			int end = array[i].indexOf("/");
			result += array[i].substring(0, end);

			iCount++;
			if(iCount == 3)		//배우 이름은 3명까지만
				break;
			else
				result += ", ";	//배우 이름 사이에 콤마 넣기(제일 끝에는 x)
		}
		
		return result;
	}
}
