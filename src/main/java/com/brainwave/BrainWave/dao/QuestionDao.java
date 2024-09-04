package com.brainwave.BrainWave.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.brainwave.BrainWave.model.Question;
import java.util.*;

@Repository
public interface QuestionDao extends JpaRepository<Question, Integer> {
    
    // List<Question> findByCategory(String category);
    // @Query("SELECT q FROM Question q WHERE q.category = :category")
    List<Question> findByCategory(@Param("category") String category);  
}
