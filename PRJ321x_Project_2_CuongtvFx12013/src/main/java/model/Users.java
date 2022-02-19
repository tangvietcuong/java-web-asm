package model;

public class Users {
	
	private String userName;
	private String password;
	private boolean remember;
	
	public Users() {

	}
	
	public Users(String userName, String password, boolean remember) {
		this.userName = userName;
		this.password = password;
		this.remember = remember;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isRemember() {
		return remember;
	}
	public void setRemember(boolean remember) {
		this.remember = remember;
	}

	
	
}
