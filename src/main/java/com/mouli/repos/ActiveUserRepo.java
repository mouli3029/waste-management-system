package com.mouli.repos;

import org.springframework.data.repository.CrudRepository;

import com.mouli.beans.ActiveUser;

public interface ActiveUserRepo extends CrudRepository<ActiveUser,Integer>{
	public ActiveUser findFirstByOrderByIdDesc();
}
