<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration - AlgoMarket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet"> <!-- Link to global CSS -->
</head>
<body>
    <div class="container">
        <h2 class="text-center text-farming">Admin Registration</h2>
        <form action="AdminRegisterServlet" method="post">
            <div class="mb-3">
                <label for="admin-name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="admin-name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="admin-email" class="form-label">Email</label>
                <input type="email" class="form-control" id="admin-email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="admin-password" class="form-label">Password</label>
                <input type="password" class="form-control" id="admin-password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
            <p class="text-center mt-3">Already have an account? <a href="adminlogin.jsp">Login</a></p>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
