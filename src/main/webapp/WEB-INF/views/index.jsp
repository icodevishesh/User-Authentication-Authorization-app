<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .main-container {
        text-align: center;
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        width: 400px;
    }

    h2 {
        margin-bottom: 10px;
        color: #333;
    }

    h3 {
        margin-bottom: 20px;
        color: #555;
    }
    .btn-container{
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	gap: 1rem;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        font-weight: bold;
        transition: all 0.3s ease;
        background-color: #f2f2f2;
    }

    .btn:hover {
        background: #d5e1df;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function () {
    $(".btn").click(function (event) {
        event.preventDefault(); // Prevent default link behavior

        var action = $(this).attr("id"); // Get the button ID (login or register)

        $.ajax({
            type: "GET",
            url: action, // Send request to /login or /register
            success: function (response) {
                $("body").html(response); // Replace the page content with the new content
            },
            error: function () {
                alert("Error loading page.");
            }
        });
    });
});
</script>
</head>
<body>

<div class="main-container">
    <h2>Welcome!</h2>
    <h3>Choose what you want to do:</h3>
    
    <div class="btn-container">
        <!-- Register Button -->
        <button type="button" class="btn" id="${pageContext.request.contextPath}/register">Register</button>

        <!-- Login Button -->
        <button type="button" class="btn" id="${pageContext.request.contextPath}/login">Login</button>
    </div>
</div>

</body>
</html>
