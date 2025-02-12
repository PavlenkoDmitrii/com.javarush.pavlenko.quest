package com.javarush.pavlenko.quest.service;

import com.javarush.pavlenko.quest.entity.Question;
import com.javarush.pavlenko.quest.repository.QuestionRepository;

import java.util.List;

public class Quest {
    private List<Question> questions;
    private int score;
    private int currentQuestionIndex;

    public Quest() {
        this.questions = new QuestionRepository().getQuestions();
        this.score = 0;
        this.currentQuestionIndex = 0;

    }

    public int getScore() {
        return score;
    }

    public Question getCurrentQuestion() {
        return questions.get(currentQuestionIndex);
    }

    public boolean nextQuestion(int answerIndex) {
        if (currentQuestionIndex >= questions.size()) {
            return false;
        }
        if (answerIndex == getCurrentQuestion().getCorrectAnswer()) {
            score++;
        }
        currentQuestionIndex++;

        return currentQuestionIndex < questions.size();
    }
}
