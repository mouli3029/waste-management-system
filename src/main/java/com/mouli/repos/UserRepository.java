package com.mouli.repos;

import org.springframework.data.repository.CrudRepository;

import com.mouli.beans.User;

public interface UserRepository extends CrudRepository<User,Integer>{
	public User findByUsername(String s);
}
