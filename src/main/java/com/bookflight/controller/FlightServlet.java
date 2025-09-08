package com.bookflight.controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/flights")
public class FlightServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<String> flights = new ArrayList<>();
        flights.add("Flight 1: Time 4:00 a.m.");
        flights.add("Flight 2: Time 8:00 a.m.");
        flights.add("Flight 3: Time 5:00 p.m.");

        request.setAttribute("flights", flights);
        RequestDispatcher dispatcher = request.getRequestDispatcher("loginpage.jsp");
        dispatcher.forward(request, response);
    }
}
