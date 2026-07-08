<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Sinh Viên</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

<style>

.top-bar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:20px;
}

.user-info{
    font-size:15px;
}

.logout{
    text-decoration:none;
    background:#dc3545;
    color:white;
    padding:8px 15px;
    border-radius:5px;
}

.logout:hover{
    background:#bb2d3b;
}

</style>

</head>

<body>

<div class="container">

    <div class="top-bar">

        <div class="user-info">

            Xin chào,
            <strong>${user.username}</strong>

        </div>

        <a href="logout" class="logout">
            Đăng xuất
        </a>

    </div>

    <div class="header-action">

        <h2>Sinh Viên</h2>

        <a href="new" class="btn btn-primary">
            + Thêm mới
        </a>

    </div>

    <table>

        <thead>

        <tr>

            <th>ID</th>

            <th>Mã SV</th>

            <th>Họ và Tên</th>

            <th>Email</th>

            <th>Ngày Sinh</th>

            <th>Chuyên Ngành</th>

            <th>Hành động</th>

        </tr>

        </thead>

        <tbody>

        <c:forEach var="student" items="${listStudent}">

            <tr>

                <td>${student.id}</td>

                <td>${student.studentCode}</td>

                <td>${student.name}</td>

                <td>${student.email}</td>

                <td>${student.dob}</td>

                <td>${student.major}</td>

                <td>

                    <a href="edit?id=${student.id}" class="btn btn-primary">

                        Sửa

                    </a>

                    &nbsp;

                    <a href="delete?id=${student.id}"
                       class="btn btn-danger"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?')">

                        Xóa

                    </a>

                </td>

            </tr>

        </c:forEach>

        </tbody>

    </table>

</div>

</body>

</html>