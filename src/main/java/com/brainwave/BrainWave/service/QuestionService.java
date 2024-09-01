package com.brainwave.BrainWave.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.brainwave.BrainWave.dao.QuestionDao;
import com.brainwave.BrainWave.model.Question;

import java.util.*;

@Service
public class QuestionService {

    @Autowired
    QuestionDao questionDao;

    public List<Question> getAllQuestions() {
        return questionDao.findAll();
    }
}
