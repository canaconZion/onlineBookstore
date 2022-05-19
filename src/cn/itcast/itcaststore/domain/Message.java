package cn.itcast.itcaststore.domain;

public class Message {
	private int id; //信息id
	private String user; //信息发布用户
	//private String userImage; // 用户头像
	private String message; // 信息内容
	private String ptime; // 信息发布时间

	public int getId() {
		return id;
	}
	public void setid(int id) {
		this.id=id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user=user;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPtime() {
		return ptime;
	}
	public void setPtime(String ptime) {
		this.ptime = ptime;
	}
	
	
//	public String getMessage() {
//		return message;
//	}
//	public void setMessages(String message) {
//		this.message=message;
//	}
//	public String getTtime() {
//		return ptime;
//	}
//	public void setTime(String ptime) {
//		this.ptime=ptime;
//	}
//	/*public String getUserImage() {
//		return userImage;
//	}
//	public void setImage(String userImage) {
//		this.userImage=userImage;
//	}*/
}
