package com.count.stoptime;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StopTime {
	private int h = 0; // 时
	private int m = 0; // 分
	private int s = 0; // 秒
	private Date start = null; // 创建时间
	private Date end = null; // 结束时间
	private SimpleDateFormat format = new SimpleDateFormat(
			"yyyy-MM-dd hh:mm:ss");

	public StopTime() {
	}

	public void counttime(Date end) {
		this.end = end;
		long howmuch = this.end.getTime() - start.getTime();
		h = (int) (howmuch / 1000 / 60 / 60);
		howmuch = howmuch - h * 60 * 60 * 1000;
		m = (int) (howmuch / 1000 / 60);
		howmuch = howmuch - m * 60 * 1000;
		s = (int) (howmuch / 1000);
	}

	public String getTimes() {
		String times = this.h + "小时" + this.m + "分" + this.s + "秒";
		return times;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public String getStart() {
		return format.format(start);
	}

	public String getEnd() {
		return format.format(end);
	}

}
