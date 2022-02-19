package common;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUsed {
	
	public static String get(String name, HttpServletRequest request) {
		
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equalsIgnoreCase(name)) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}
	
	public static Cookie set(String name, String value, int second, HttpServletResponse respone) {
		
		Cookie cookie = new Cookie(name, value);
		
		cookie.setMaxAge(60 * second);
		
		cookie.setPath("/");
		
		respone.addCookie(cookie);
		
		return cookie;
	}
	


	
	
}
