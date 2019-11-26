package com.itjob.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateString {
	
	public static String convertDateToString(Date date, String formatter) {
		DateFormat dateFormat = new SimpleDateFormat(formatter);
		String strDate = dateFormat.format(date);

		return strDate;
	}

	public static Date convertStringToDate(String strDate, String formatter) {
		SimpleDateFormat formatter1 = new SimpleDateFormat(formatter);
		try {
			Date date = formatter1.parse(strDate);

			return date;

		} catch (ParseException e) {
			e.printStackTrace();

			return null;
		}
	}

}
