package com.brainwave.BrainWave.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;

import com.brainwave.BrainWave.model.Question;
import com.brainwave.BrainWave.service.QuestionService;

@RestController
@RequestMapping("question")
public class QuestionController {

    @Autowired
    QuestionService questionService;

    @GetMapping("allQuestions")
    public List<Question> getAllQuestions() {
        // return "All questions";
        return questionService.getAllQuestions();
    }

    // @GetMapping("allQuestions")
    // public String getAllQuestions() {
    //     return "All questions";
    // }

}