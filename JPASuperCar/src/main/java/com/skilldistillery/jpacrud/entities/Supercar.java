package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supercar {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	private String name;
	
	@Column(name="top_speed")
	private Double topSpeed;
	@Column(name="model_year")
	private Integer modelYear;
	private String engine;
	private Integer horsepower;
	
	public Supercar() {}
	
	public Supercar(int id, String name, Double topSpeed, Integer modelYear, String engine, Integer horsepower) {
		super();
		this.id = id;
		this.name = name;
		this.topSpeed = topSpeed;
		this.modelYear = modelYear;
		this.engine = engine;
		this.horsepower = horsepower;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getTopSpeed() {
		return topSpeed;
	}
	public void setTopSpeed(Double topSpeed) {
		this.topSpeed = topSpeed;
	}
	public Integer getModelYear() {
		return modelYear;
	}
	public void setModelYear(Integer modelYear) {
		this.modelYear = modelYear;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public Integer getHorsepower() {
		return horsepower;
	}
	public void setHorsepower(Integer horsepower) {
		this.horsepower = horsepower;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Supercar [id=").append(id).append(", name=").append(name).append(", topSpeed=").append(topSpeed)
				.append(", modelYear=").append(modelYear).append(", engine=").append(engine).append(", horsepower=")
				.append(horsepower).append("]");
		return builder.toString();
	}
	
	

}
