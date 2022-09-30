package com.gl.fest.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gl.fest.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {
	@Autowired
	SessionFactory factory;
	

	@Override
	@Transactional
	public void saveOrUpdate(Student student) {
		Session currentSession = factory.getCurrentSession();
		currentSession.saveOrUpdate(student);
	}

	@Override
	@Transactional
	public void delete(int id) {
		Session currentSession = factory.getCurrentSession();
		Student theStudent = currentSession.get(Student.class, id);
		currentSession.delete(theStudent);
	}

	@Override
	@Transactional
	public Student findById(int id) {
		Session currentSession = factory.getCurrentSession();
		Student theStudent = currentSession.get(Student.class, id);
		return theStudent;
	}

	
	@Override
	@Transactional
	public List<Student> findAll() {
		Session currentSession = factory.getCurrentSession();
		Criteria c = currentSession.createCriteria(Student.class);
		return c.list();
	}

}
