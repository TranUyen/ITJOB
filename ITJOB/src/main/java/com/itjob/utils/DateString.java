package com.itjob.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

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

	public static boolean SendEmail(String friendemail, String name) {
        try {
        	String myemail = "tranthuuyen.nt@gmail.com";
            String mypassword = "tranuyen";

            Email email = new SimpleEmail();
            email.setHostName("smtp.googlemail.com");
            email.setSmtpPort(465);
            email.setAuthenticator(new DefaultAuthenticator(myemail,mypassword));
            email.setSSLOnConnect(true);
            email.setFrom(myemail);
            email.setSubject("Email thông báo ITjob");
            email.setMsg("Có ứng viên ứng tuyển bài viết của bạn " + name);
            email.addTo(friendemail);
            email.send();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
