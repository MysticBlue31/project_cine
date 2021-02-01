package com.project.cine.utils;

public class Util {

	//배우명단 편집
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
}
