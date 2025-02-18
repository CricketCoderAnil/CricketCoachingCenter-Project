package com.ani.Entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="AdminInfo")
public class AdminEntity {

	
	@Id
	@SequenceGenerator(name="ani",initialValue = 101,allocationSize = 1,sequenceName = "anil")
	@GeneratedValue(generator = "ani",strategy = GenerationType.SEQUENCE)
	@Column(name=" Id")
	private Integer sid;
	@Column(name="Name")
	private String sname;
	@Column(name="Email")
	private String semail;
	@Column(name="Contact ")
	private Long sphno;
	@Column(name="JoiningDate")
	@CreationTimestamp
	private LocalDateTime joingDate;
	@Column(name="Expereance")
	private Double exp;
	@Column(name="Address")
	private String location;
	@Column(name="Salary")
	private Double fee;
	@Column(name="Image Url")
	private String imgUrl;
	
	
}
