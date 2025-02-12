package com.javarush.pavlenko.quest.repository;

import com.javarush.pavlenko.quest.entity.Question;

import java.util.Arrays;
import java.util.List;

public class QuestionRepository {

    private List<Question> questions = Arrays.asList(
                new Question("Монитор - это устройство ввода или вывода?", new String[]{"Ввода", "Вывода"}, 1),
                new Question("Как называется штука для кликанья?", new String[]{"Мышка", "Крыска", "Птичка"}, 0),
                new Question("Как называется платформа, объединяющая все компоненты компьютера в единую систему?", new String[]{"Отцовская плата", "Дедовская плата", "Материнская плата", "Блок питания"}, 2),
                new Question("В чем смысл жизни?", new String[]{"4", "8", "15", "16", "23", "42"}, 5)
        );

    public List<Question> getQuestions() {
        return questions;
    }
}
