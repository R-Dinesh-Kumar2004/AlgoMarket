<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Registration - AlgoMarket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet"> <!-- Link to global CSS -->
</head>
<body>
    <div class="container">
        <h2 class="text-center text-farming">Buyer Registration</h2>
        <form action="BuyerRegisterServlet" method="post">
            <div class="mb-3">
                <label for="buyer-name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="buyer-name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="buyer-address" class="form-label">Address</label>
                <input type="text" class="form-control" id="buyer-address" name="address" required>
            </div>
            <div class="mb-3">
                <label for="buyer-phone" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="buyer-phone" name="phone" required>
            </div>
            <div class="mb-3">
                <label for="buyer-email" class="form-label">Email</label>
                <input type="email" class="form-control" id="buyer-email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="buyer-password" class="form-label">Password</label>
                <input type="password" class="form-control" id="buyer-password" name="password" required>
            </div>
            <div class="mb-3">
                <label for="buyer-confirm-password" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="buyer-confirm-password" name="conPassword" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
            <p class="text-center mt-3">Already have an account? <a href="buyerlogin.jsp">Login</a></p>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
