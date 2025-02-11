<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            background-color: #ffffff;
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #4a90e2;
            text-align: center;
            font-size: 2em;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input {
            font-size: 1em;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 100%;
        }

        input::placeholder {
            color: #888;
        }

        button {
            background-color: #4a90e2;
            color: white;
            padding: 12px 0;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #357ab7;
            transform: scale(1.05);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            h1 {
                font-size: 1.8em;
            }

            button {
                font-size: 1em;
                padding: 10px 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ADD USER</h1>
        <form action="all">
            <input type="text" name="name" placeholder="ENTER NAME" required>
            <input type="text" name="email" placeholder="ENTER EMAIL" required>
            <input type="text" name="rollno" placeholder="ENTER ROLL NO" required>
            <input type="password" name="password" placeholder="ENTER PASSWORD" required>
            <button type="submit">ENTER</button>
        </form>
    </div>
</body>
</html>
