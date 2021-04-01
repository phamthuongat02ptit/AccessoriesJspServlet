package com.phamthuong.utils;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil {
	private static SessionUtil sessionUtil = null;
	//ham nay de tranh khoi tao sessionutil nhieu lan
	public static SessionUtil getInstance() {
		if(sessionUtil == null) {
			sessionUtil = new SessionUtil();
		}
		return sessionUtil;
	}
	//duy tri thong tin nguoi dung
	public void putValue(HttpServletRequest request, String key, Object value) {
		request.getSession().setAttribute(key, value);
	}
	//lay thong tin nguoi dung ra
	public Object getValue(HttpServletRequest request, String key) {
		return request.getSession().getAttribute(key);
	}
	//remove thong tin khi thoat
	public void removeValue(HttpServletRequest request, String key) {
		request.getSession().removeAttribute(key);
	}
}
