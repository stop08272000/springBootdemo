package com.springboot.demo.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class MessageDto {
	@JsonProperty(value = "message")
	private String msg;
	
	public MessageDto() {
		
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
