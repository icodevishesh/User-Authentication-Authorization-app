<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

  :root {
      --primary-color: #3498db;
      --secondary-color: #2c3e50;
      --background-color: #ecf0f1;
      --text-color: #333;
  }

  body {
      font-family: 'Arial', sans-serif;
      background-color: var(--background-color);
      color: var(--text-color);
      line-height: 1.6;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
  }

  .container {
      background-color: white;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      padding: 2rem;
      width: 100%;
      max-width: 400px;
      display:grid;
      align-items:center;
      justify-content:center;
  }

  h1 {
      color: var(--secondary-color);
      text-align: center;
      margin-bottom: 1.5rem;
  }

  form {
      display: flex;
      justify-content: center;
  }

  button {
      background-color: var(--primary-color);
      border: none;
      border-radius: 4px;
      color: white;
      cursor: pointer;
      font-size: 1rem;
      padding: 0.75rem 1.5rem;
      transition: background-color 0.3s ease;
  }

  button:hover {
      background-color: #2980b9;
  }
  .profile-icon {
    width: 100px;
    height: 100px;
    fill: var(--primary-color);
    display: block; /* Ensures it takes up space properly */
    margin-left: auto;
    margin-right: auto;
        }
        
   .title{
   	font-size:24px;
   	text-align:center;
   	padding-bottom:10px;
   }
</style>
</head>
<body>
	<div class="container">
	<svg class="profile-icon" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
    </svg>
	<span class="title">${username}</span>
	<form action="${pageContext.request.contextPath}/logout" method="POST">
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	    <button type="submit">Logout</button>
	</form>
	</div>
</body>
</html>