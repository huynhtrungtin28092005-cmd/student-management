<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Đăng nhập</title>

<style>

body{

font-family:Arial;

background:#f2f2f2;

}

.login{

width:350px;

margin:100px auto;

padding:20px;

background:white;

border-radius:8px;

box-shadow:0 0 10px #ccc;

}

input{

width:100%;

padding:10px;

margin:10px 0;

}

button{

width:100%;

padding:10px;

background:#0d6efd;

color:white;

border:none;

cursor:pointer;

}

.error{

color:red;

}

</style>

</head>

<body>

<div class="login">

<h2 align="center">Đăng nhập</h2>

<form action="login" method="post">

<input
type="text"
name="username"
placeholder="Username"
required>

<input
type="password"
name="password"
placeholder="Password"
required>

<button type="submit">

Đăng nhập

</button>

</form>

<p class="error">

${error}

</p>

</div>

</body>

</html>