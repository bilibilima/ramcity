package com.neuedu.model;

public class Team {

	private int teamId;
	private String content;
	public Team() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Team(int teamId, String content) {
		super();
		this.teamId = teamId;
		this.content = content;
	}
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
