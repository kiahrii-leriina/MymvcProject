<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 0;
    }

    h1 {
        color: #4a90e2;
        text-align: center;
        margin-top: 40px;
    }

    .container {
        width: 80%;
        margin: 40px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    form {
        display: flex;
        flex-direction: column;
    }

    input[type="text"] {
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
        background-color: #f9f9f9;
        transition: all 0.3s ease-in-out;
    }

    input[type="text"]:focus {
        border-color: #4a90e2;
        outline: none;
        background-color: #fff;
    }

    button {
        padding: 12px;
        background-color: #4a90e2;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #357ab7;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .readonly {
        background-color: #f5f5f5;
        cursor: not-allowed;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .container {
            width: 90%;
        }

        input[type="text"] {
            font-size: 14px;
        }

        button {
            font-size: 14px;
        }
    }

</style>
</head>
<body>
	<h1>Update Page</h1>

	<div class="container">
        <h2>User Details</h2>

		<form action="upt">
			<div class="form-group">
				<label for="id">ID</label>
				<input type="text" name="id" value="${user.id}" readonly="readonly" class="readonly">
			</div>

			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" name="name" value="${user.name}" placeholder="Enter name" required>
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" name="email" value="${user.email}" placeholder="Enter email" required>
			</div>

			<div class="form-group">
				<label for="rollno">Roll No</label>
				<input type="text" name="rollno" value="${user.rollno}" placeholder="Enter roll no" required>
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input type="text" name="password" value="${user.password}" placeholder="Enter password" required>
			</div>

			<button type="submit">Update</button>
		</form>
	</div>
</body>
</html>
