package com.brainwave.BrainWave.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.brainwave.BrainWave.dao.QuestionDao;
import com.brainwave.BrainWave.model.Question;

import java.util.*;
import java.util.logging.Logger;

@Service
public class QuestionService {

    private static final Logger logger = Logger.getLogger(QuestionService.class.getName());

    @Autowired
    QuestionDao questionDao;

    public List<Question> getAllQuestions() {
        return questionDao.findAll();
    }

    public List<Question> getQuestionsByCategory(String category) {
        // return questionDao.findByCategory(category);
        logger.info("Calling DAO from Service to fetch questions for category: " + category);
        List<Question> questions = questionDao.findByCategory(category);
        // logger.info("DAO returned questions to Service: " + questions);
        return questions;
    }
}
