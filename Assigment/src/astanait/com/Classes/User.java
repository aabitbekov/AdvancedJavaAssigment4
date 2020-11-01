package astanait.com.Classes;

public class User {
private long id; 
private String fname;
private String lname;
private String email;
private String username;
private String password;
public User(long id, String fname, String lname, String email, String username, String password) {
	super();
	this.id = id;
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.username = username;
	this.password = password;
}
public User(String[] userFields) {
if(userFields.length == 6) {
	this.id=Integer.parseInt(userFields[0]);
	this.fname=userFields[1];
	this.lname=userFields[2];
	this.password=userFields[3];
	this.username=userFields[4];
	this.email=userFields[5];
	
}


}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
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
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public User(long id, String fname, String lname, String username, String password) {
	super();
	this.id = id;
	this.fname = fname;
	this.lname = lname;
	this.username = username;
	this.password = password;
}
@Override
public String toString() {
	return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", username=" + username
			+ ", password=" + password + "]";
}



}