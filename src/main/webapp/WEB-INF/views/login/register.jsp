<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
     <style>
        body {
            padding: 0;
            margin: 0;
            background: linear-gradient(to bottom right, #d3e9ff, #a3c6ff);
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2), 0 6px 6px rgba(0, 0, 0, 0.3);
        }

        .login-form h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .login-form div {
            margin-bottom: 15px;
        }

        .login-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form input[type="checkbox"] {
            margin-right: 10px;
        }

        .login-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #3636367c;
            color: white;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-form input[type="submit"]:hover {
            background-color: #4a4a4a;
        }

        .login-form p {
            color: red;
            text-align: center;
        }
    </style><style>
        body {
            padding: 0;
            margin: 0;
            background: linear-gradient(to bottom right, #d3e9ff, #a3c6ff);
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2), 0 6px 6px rgba(0, 0, 0, 0.3);
        }

        .login-form h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .login-form div {
            margin-bottom: 15px;
        }

        .login-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form input[type="checkbox"] {
            margin-right: 10px;
        }

        .login-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #3636367c;
            color: white;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-form input[type="submit"]:hover {
            background-color: #4a4a4a;
        }

        .login-form p {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
	<div class="container">
        <div class="login-form">
    <h2>Register</h2>
    <form:form method="post" action="/register" modelAttribute="user">
        <div>
            <form:label path="username">Username:</form:label>
            <form:input path="username" />
            <form:errors path="username" cssClass="error" />
        </div>
        <div>
            <form:label path="password">Password:</form:label>
            <form:password path="password" />
            <form:errors path="password" cssClass="error" />
        </div>
        <div>
            <form:label path="email">Email:</form:label>
            <form:input path="email" />
            <form:errors path="email" cssClass="error" />
        </div>
        <div>
            <input type="submit" value="Register" />
        </div>
    </form:form>
    </div>
    </div>
</body>
</html>
