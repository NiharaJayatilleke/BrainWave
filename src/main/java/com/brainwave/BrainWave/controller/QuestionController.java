package com.brainwave.BrainWave.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import java.util.logging.Logger;

import com.brainwave.BrainWave.model.Question;
import com.brainwave.BrainWave.service.QuestionService;

@RestController
@RequestMapping("question")
public class QuestionController {

    private static final Logger logger = Logger.getLogger(QuestionController.class.getName());

    @Autowired
    QuestionService questionService;

    @GetMapping("allQuestions")
    public List<Question> getAllQuestions() {
        // return "All questions";
        return questionService.getAllQuestions();
    }
    
    @GetMapping("category/{category}")
    public List<Question> getQuestionsByCategory(@PathVariable String category) {
        logger.info("Fetching questions for category in Controller: " + category);
        List<Question> questions = questionService.getQuestionsByCategory(category);
        // logger.info("Found questions in Controller: " + questions);
        return questions;
    }
}