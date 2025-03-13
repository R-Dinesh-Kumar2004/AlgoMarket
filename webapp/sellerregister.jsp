<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration - AlgoMarket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet"> <!-- Link to global CSS -->
</head>
<body>
    <div class="container">
        <h2 class="text-center text-farming">Seller Registration</h2>
        <form action="SellerRegisterServlet" method="post">
            <div class="mb-3">
                <label for="seller-name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="seller-name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="seller-address" class="form-label">Address</label>
                <input type="text" class="form-control" id="seller-address" name="address" required>
            </div>
            <div class="mb-3">
                <label for="seller-phone" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="seller-phone" name="phone" required>
            </div>
            <div class="mb-3">
                <label for="seller-email" class="form-label">Email</label>
                <input type="email" class="form-control" id="seller-email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="seller-password" class="form-label">Password</label>
                <input type="password" class="form-control" id="seller-password" name="password" required>
            </div>
            <div class="mb-3">
                <label for="seller-confirm-password" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="seller-confirm-password" name="conpassword" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
            <p class="text-center mt-3">Already have an account? <a href="sellerlogin.jsp">Login</a></p>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
