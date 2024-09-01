package com.brainwave.BrainWave.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.brainwave.BrainWave.model.Question;

@Repository
public interface QuestionDao extends JpaRepository<Question, Integer> {
    
}
