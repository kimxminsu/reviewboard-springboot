package com.example.first_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first_project.model.Program;
import com.example.first_project.repository.ProgramRepository;

@Service
public class ProgramService {

	@Autowired
	private ProgramRepository programRepository;
	
	
	
	//추가
	public void save(Program program) {
		programRepository.save(program);
	}
	
	//전체보기(페이지)
	public Page<Program> findAll(Pageable pageable){
		return programRepository.findAll(pageable);
	}
	
	//전체보기(카테고리)
	public Page<Program> findByCategory(String category, Pageable pageable){
		return programRepository.findByCategory(category, pageable);
	}

	//상세보기
	@Transactional
	public Program findById(Long num) {
		Program program= programRepository.findById(num).get();
		program.setHitcount(program.getHitcount()+1);
		return program;
	}
	
	//수정
	@Transactional
	public void update(Program program) {
		Program p = programRepository.findById(program.getProgramnum()).get();
		p.setTitle(program.getTitle());
		p.setYear(program.getYear());
		p.setSynopsis(program.getSynopsis());
	}
	
	//삭제
	@Transactional 
	public void delete(Long num) {
		programRepository.deleteById(num);
	}
	
	//개수
	public Long count() {
		return programRepository.count();
	}
}
