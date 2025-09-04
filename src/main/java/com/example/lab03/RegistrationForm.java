package com.example.lab03;

import com.example.lab03.model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/registration")
public class RegistrationForm extends HttpServlet {
    public RegistrationForm() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String day = req.getParameter("day");
        String month = req.getParameter("month");
        String year = req.getParameter("year");
        String dob = month + " "  + day + " " + year;
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String gender = req.getParameter("gender");
        String address = req.getParameter("address");
        String city = req.getParameter("city");
        String pin = req.getParameter("pin");
        String state = req.getParameter("state");
        String country = req.getParameter("country");
        String hobbies = req.getParameter("hobbies");
        String course = req.getParameter("course");

        Student student = new Student();
        student.setFname(fname);
        student.setLname(lname);
        student.setEmail(email);
        student.setGender(gender);
        student.setDob(dob);

        req.setAttribute("student", student);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("result-form.jsp");
        requestDispatcher.forward(req, resp);
    }
}
