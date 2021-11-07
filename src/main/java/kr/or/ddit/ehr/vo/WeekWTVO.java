package kr.or.ddit.ehr.vo;

public class WeekWTVO {
	private String sumTime;
	private int h = 0;
	private int m = 0;
	private int s = 0;

	public String getSumTime() {
		return sumTime;
	}

	public void setSumTime(String sumTime) {
		this.sumTime = sumTime;
		int time = Integer.parseInt(sumTime);
		System.out.println(time);
		int h = 0;
		int m = 0;
		int s = 0;
		h = time/60/60;
		m = (time - h*60*60)/60;
		s = time - h*60*60 - m*60;
		this.h = h;
		this.m = m;
		this.s = s;

	}

	@Override
	public String toString() {
		return "WeekWTVO [sumTime=" + sumTime + "]";
	}

	public int getH() {
		return h;
	}

	public void setH(int h) {
		this.h = h;
	}

	public int getM() {
		return m;
	}

	public void setM(int m) {
		this.m = m;
	}

	public int getS() {
		return s;
	}

	public void setS(int s) {
		this.s = s;
	}

	
	
}
