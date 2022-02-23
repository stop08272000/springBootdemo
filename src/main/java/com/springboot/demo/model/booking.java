package com.springboot.demo.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="booking")
public class booking implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private Integer several;
	
	private Integer reservation_date;
	
	public booking() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSeveral() {
		return several;
	}

	public void setSeveral(Integer several) {
		this.several = several;
	}

	public Integer getReservation_date() {
		return reservation_date;
	}

	public void setReservation_date(Integer reservation_date) {
		this.reservation_date = reservation_date;
	}
   

	
	

}
