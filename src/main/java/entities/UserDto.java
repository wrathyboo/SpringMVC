package entities;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import functions.annotation.PasswordMatches;


@PasswordMatches
public class UserDto {
	@NotNull
	@NotEmpty
	@Email
	private String email;

	@NotNull
	@NotEmpty
	private String username;

	@NotNull
	@NotEmpty
	private String password;
	private String matchingPassword;

	public UserDto() {
		// TODO Auto-generated constructor stub
	}

	public UserDto(@NotNull @NotEmpty String email, @NotNull @NotEmpty String username,
			@NotNull @NotEmpty String password, String matchingPassword) {
		super();
		this.email = email;
		this.username = username;
		this.password = password;
		this.matchingPassword = matchingPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String fullname) {
		this.username = fullname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMatchingPassword() {
		return matchingPassword;
	}

	public void setMatchingPassword(String matchingPassword) {
		this.matchingPassword = matchingPassword;
	}
    
}
