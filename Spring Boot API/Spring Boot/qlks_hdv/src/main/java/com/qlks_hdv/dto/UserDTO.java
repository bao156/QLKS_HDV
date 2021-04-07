package com.qlks_hdv.dto;

public class UserDTO {
	private String username;
	private String password;
	private String roleName;
	
	
	public UserDTO(String username, String password, String roleName) {
		super();
		this.username = username;
		this.password = password;
		this.roleName=roleName;
	}
	public UserDTO() {
		super();
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}


	
}
