package com.example.first_project.repository;



import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.first_project.model.Program;

public interface ProgramRepository extends JpaRepository<Program, Long>{
	
	@Query(value="select sc.* from program sc where category=?1", nativeQuery = true)
	Page<Program> findByCategory(String category, Pageable pageable);
	
	
}
