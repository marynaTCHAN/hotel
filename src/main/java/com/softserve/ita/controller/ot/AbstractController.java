package com.softserve.ita.controller.ot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class AbstractController extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(AbstractController.class);

    protected void handleCRUDRequest(HttpServletRequest req, HttpServletResponse resp)throws ServletException {
        try {
            String command = req.getParameter("command");

            if (command == null) {
                command = "LIST";
            }

            switch (command) {
                case "LIST":
                    this.select(req, resp);
                    break;
                case "ADD":
                    add(req, resp);
                    break;
                case "UPDATE":
                    update(req, resp);
                    break;
                case "DELETE":
                    delete(req, resp);
                    break;
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            throw e;
        }
    }

    protected abstract void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException;
    protected abstract void update(HttpServletRequest req, HttpServletResponse resp)throws ServletException;
    protected abstract void select(HttpServletRequest req, HttpServletResponse resp)throws ServletException;
    protected abstract void delete(HttpServletRequest req, HttpServletResponse resp)throws ServletException;
}