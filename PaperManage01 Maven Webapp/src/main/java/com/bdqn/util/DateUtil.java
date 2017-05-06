package com.bdqn.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public static SimpleDateFormat sdf_1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public static SimpleDateFormat sdf_2 = new SimpleDateFormat("yyyyMMddHHmmss");

	public static SimpleDateFormat sdf_3 = new SimpleDateFormat("yyyy-MM-dd");

	public static SimpleDateFormat sdf_4 = new SimpleDateFormat("yyyyMMddhhmmssSSS");
	public static SimpleDateFormat sdf_5 = new SimpleDateFormat("yyyyMMddhhmm");

	public static String getTimeStamp(){
		 Long ts= System.currentTimeMillis();
		 ts =ts/1000;
		 return ts.toString();
	}

	public static String getNowDate(){
		return sdf_1.format(new Date());
	}

	public static String getNowTime(){
		return sdf_5.format(new Date());
	}

	public static void main(String[] args) {
		System.out.println(getNowTime());
		System.out.println(getNowDate());
	}

}
