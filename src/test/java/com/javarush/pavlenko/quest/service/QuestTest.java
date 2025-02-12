package com.javarush.pavlenko.quest.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class QuestTest {

    Quest quest = new Quest();

    @Test
    void getScore() {
        assertEquals(0, quest.getScore());
    }

    @Test
    void getCorrectAnswer() {
        quest.nextQuestion(1);
        assertEquals(1, quest.getScore());
    }

    @Test
    void getIncorrectAnswer() {
        quest.nextQuestion(0);
        assertEquals(0, quest.getScore());
    }
}