<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <input type="text" name="fname" value="<c:out value="${requestScope.fname}"/>" placeholder="First Name">
            <input type="text" name="lname" value="<c:out value="${requestScope.lname}"/>" placeholder="Last Name">
        </div>
        <div class="form-group" style="display: flex; flex-direction: column">
            <c:if test="${not empty requestScope.errorMessage}">
                <div style="font-size: x-small">
                    <c:out value="${requestScope.errorMessage}"/>
                </div>
            </c:if>
            <input type="email" id="email" style="
            <c:if test="${not empty requestScope.errorMessage}">
                <c:out value="border: 1px solid red"/>
                    </c:if>" value="<c:out value="${requestScope.email}"/>" name="email" placeholder="Your Email">
        </div>
        <div class="form-group">
            <input type="email" id="reEnterEmail" placeholder="Re-enter Email">
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
        <button id="signup-button" type="submit" class="sign-up-button">Sign Up</button>
    </form>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Lấy các phần tử input và thẻ thông báo lỗi
        const emailInput = document.getElementById('email');
        const reEnterEmailInput = document.getElementById('reEnterEmail');
        const signupButton = document.getElementById('signup-button');

        // Thêm sự kiện lắng nghe trên trường "Re-enter Email"
        reEnterEmailInput.addEventListener('input', function () {
            const emailValue = emailInput.value;
            const reEnterEmailValue = reEnterEmailInput.value;

            // So sánh giá trị của hai trường
            if (emailValue !== reEnterEmailValue) {
                reEnterEmailInput.style.border = "2px solid red";
                signupButton.disable = true;
            } else {
                reEnterEmailInput.style.border = "2px solid green";
                signupButton.disable = false;
            }

            // Xóa thông báo nếu cả hai trường đều rỗng
            if (reEnterEmailValue === '' && emailValue === '') {
                emailError.textContent = '';
            }
        });

        emailInput.addEventListener('input', function () {
            // Gọi lại logic kiểm tra
            reEnterEmailInput.dispatchEvent(new Event('input'));
        });
    });
</script>
</body>
</html>
