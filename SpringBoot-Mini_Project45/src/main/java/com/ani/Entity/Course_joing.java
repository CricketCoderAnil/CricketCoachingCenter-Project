package com.ani.Entity;

import java.time.LocalDate;

import org.hibernate.annotations.CreationTimestamp;

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
@Table(name="Course-Joing-Info")
public class Course_joing {

	@Id
	@SequenceGenerator(name = "ani",initialValue = 1,allocationSize = 1,sequenceName = "anil" )
	@GeneratedValue(generator = "ani",strategy = GenerationType.SEQUENCE)
	@Column(name="Id")
	private Integer pid;
	@Column(name="Name")
	private String pname;
	@Column(name="Email")
	private String pemail;
	@Column(name="Contact")
	private Long phno;
	@Column(name="Address")
	private String addrs;
	@Column(name="FatherName")
	private String fathername;
	@Column(name="FatherContact")
	private Long fatherContact;
	@Column(name="Role ")
	private String role;
	@Column(name="Fee")
	private Double fee;
	@Column(name="JoiningDate")
	@CreationTimestamp
	private LocalDate joiningDate;
	@Column(name="ImageUrl")
	private String img_url;
}
