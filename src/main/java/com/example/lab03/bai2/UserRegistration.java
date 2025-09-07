package com.example.lab03.bai2;

import com.example.lab03.dao.UserDAO;
import com.example.lab03.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/user-registration")
public class UserRegistration extends HttpServlet {
    private UserDAO userDAO;
    public UserRegistration() {
        super();
        userDAO = new UserDAO();
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if(userDAO.checkExistedEmail(email)) {
            req.setAttribute("errorMessage", "Email đã tồn tại");
            req.setAttribute("fname", fname);
            req.setAttribute("lname", lname);
            req.setAttribute("email", email);
            req.getRequestDispatcher("/user-registration.jsp").forward(req, resp);
        }

        User user = new User();
        user.setLname(lname);
        user.setFname(fname);
        user.setEmail(email);
        user.setPassword(password);

        userDAO.addUser(user);
    }
}
