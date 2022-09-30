package com.gl.fest.dao;

import java.util.List;

import com.gl.fest.model.Student;

public interface StudentDao {
	public void saveOrUpdate(Student student);
	public void delete(int id);
	public Student findById(int id);
	public List<Student>findAll();

}
