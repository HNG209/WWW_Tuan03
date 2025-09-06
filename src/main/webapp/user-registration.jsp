<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/7/2025
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration Form</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="registration-form">
    <h2>User Registration Form</h2>
    <form action="user-registration" method="post">
        <div class="form-row">
            <input type="text" name="fname" placeholder="First Name">
            <input type="text" name="lname" placeholder="Last Name">
        </div>
        <div class="form-group">
            <input type="email" name="email" placeholder="Your Email">
        </div>
        <div class="form-group">
            <input type="email" placeholder="Re-enter Email">
        </div>
        <div class="form-group">
            <input type="password" name="password" placeholder="New Password">
        </div>
        <div class="form-group">
            <label>Birthday</label>
            <div class="birthday-select">
                <select>
                    <option>Month</option>
                </select>
                <select>
                    <option>Day</option>
                </select>
                <select>
                    <option>Year</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <input type="radio" id="female" name="gender">
            <label for="female">Female</label>
            <input type="radio" id="male" name="gender">
            <label for="male">Male</label>
        </div>
        <button type="submit" class="sign-up-button">Sign Up</button>
    </form>
</div>
</body>
</html>
