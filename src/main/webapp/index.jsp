<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            text-align: center;
            padding: 50px;
            background-color: #ffffff;
            margin-top: 50px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #4a90e2;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .buttons {
            margin-top: 30px;
        }

        .buttons a {
            text-decoration: none;
            margin: 10px;
        }

        button {
            background-color: #4a90e2;
            color: white;
            padding: 12px 30px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #357ab7;
            transform: scale(1.05);
        }

        .msg {
            color: #e94e77;
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 2em;
            }

            .container {
                padding: 30px;
            }

            button {
                font-size: 0.9em;
                padding: 10px 25px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="msg">
            <h1>${msg}</h1>
        </div>
        <h1>BCA (BACHELOR OF COMPUTER APPLICATION) 2021</h1>
        
        <div class="buttons">
            <a href="add.jsp"><button>ADD</button></a>
            <a href="viewall"><button>CLICK</button></a>
        </div>
    </div>
</body>
</html>
