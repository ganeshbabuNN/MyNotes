package com.ganesh.spring3;

public class Batch {
	String bid;
	String sd;
	String timings;
	int nos;
	public Batch(String bid, String sd, String timings, int nos) {
		this.bid = bid;
		this.sd = sd;
		this.timings = timings;
		this.nos = nos;
	}
	@Override
	public String toString() {
		System.out.println(" GB Annoucemnt.... New Batch");
		return "Batch [bid=" + bid + ", sd=" + sd + ", timings=" + timings
				+ ", nos=" + nos + "]";
	}
}
