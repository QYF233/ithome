package com.count.stoptime;

import javax.servlet.http.HttpSessionBindingEvent;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 继承了【javax.servlet.http.HttpSessionBindingListener】
 * 重写 valueBound方法和valueUnbound方法
 * @author wenying
 * 
 */
public class UserLine implements javax.servlet.http.HttpSessionBindingListener {
	private String username;
	private String userip;
	private StopTime stoptime = new StopTime();
	private String startTime;
	private SimpleDateFormat format = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public UserLine() {
		username = "";
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUserip(String userip) {
		this.userip = userip;
	}

	public String getUserip() {
		return userip;
	}

	// 在创建会话【session】对象时，调用该方法，得到用户上线的时间
	public void valueBound(HttpSessionBindingEvent arg0) {
		stoptime.setStart(new Date());
		String s = format.format(new Date());
		setStartTime(s);
		System.out.println(this.userip + "于" + new Date().toString()
				+ "上线！");
	}


	// 在移除会话【session】对象时，调用该方法，得到用户下线的时间
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		// 计算在线时长
		stoptime.counttime(new Date());
		System.out.println(this.userip + "于" + new Date().toString()
				+ "下线！");
//		HandshakeCompletedEvent request = null;
//		HttpSession session = (HttpSession) request.getSession();
//		session.setAttribute("xiaxian", this.userip + "于" + new Date().toString()
//				+ "下线！");   //成功写session
		//输出停留时间
		writetime();
	}

	// 把数据保存到数据库中
	public void writetime() {
		String starttime = stoptime.getStart();
		String endtime = stoptime.getEnd();
		String times = stoptime.getTimes();
		System.out.println("停留时间：" + times);
	}
}
