package com.javarush.pavlenko.quest.controler;

import java.io.*;

import com.javarush.pavlenko.quest.service.Quest;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/quest")
public class QuestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);

        Quest quest = (Quest) session.getAttribute("quest");
        String name = req.getParameter("name");
        if (quest == null) {
            quest = new Quest();
            session.setAttribute("quest", quest);
        }

        req.setAttribute("id", session.getId());
        req.setAttribute("name", name);
        req.setAttribute("quest", quest.getCurrentQuestion());
        req.getRequestDispatcher("/quest.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Quest quest = (Quest) session.getAttribute("quest");

        int answerIndex = Integer.parseInt(req.getParameter("answer"));
        boolean hasNextQuestion = quest.nextQuestion(answerIndex);
        int score = quest.getScore();
        session.setAttribute("score", score);

        if (hasNextQuestion) {
            resp.sendRedirect("/quest");
        } else if (score == 4) {
            req.getRequestDispatcher("/win.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/lose.jsp").forward(req, resp);
        }
    }
}