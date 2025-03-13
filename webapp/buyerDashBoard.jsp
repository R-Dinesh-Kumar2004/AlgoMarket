<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Dashboard - AlgoMarket</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f8f9fa;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            position: fixed;
            width: 220px;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            padding: 15px;
            display: block;
            border-bottom: 1px solid #444;
            transition: background 0.3s;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 240px;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        .product-card {
            margin: 15px 0;
        }
        .cart {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .section {
            display: none; /* Hide all sections by default */
        }
    </style>
</head>

<body>
    <%
     if(session.getAttribute("email")==null){
    	 response.sendRedirect("buyerlogin.jsp");
     }
    %>
    <div class="sidebar">
        <h2 class="text-white text-center">Buyer Dashboard</h2>
        <a href="#" onclick="showSection('products')"><i class="fas fa-store"></i> Products</a>
        <a href="#" onclick="showSection('cart')"><i class="fas fa-shopping-cart"></i> My Cart</a>
        <a href="#" onclick="showSection('profile')"><i class="fas fa-user"></i> Profile</a>
        <a href="#" onclick="showSection('logout')"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    <!-- Sidebar End -->

    <!-- Content Start -->
    <div class="content">
        <!-- Products Start -->
        <div id="products" class="section">
            <h2>Available Products</h2>
            <div class="row">
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 1">
                        <div class="card-body">
                            <h5 class="card-title">Fresh Tomatoes</h5>
                            <p class="card-text">$20.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Fresh Tomatoes', 20.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 2">
                        <div class="card-body">
                            <h5 class="card-title">Organic Apples</h5>
                            <p class="card-text">$15.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Organic Apples', 15.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 3">
                        <div class="card-body">
                            <h5 class="card-title">Bananas</h5>
                            <p class="card-text">$10.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Bananas', 10.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <!-- Add more products as needed -->
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 4">
                        <div class="card-body">
                            <h5 class="card-title">Carrots</h5>
                            <p class="card-text">$12.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Carrots', 12.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 5">
                        <div class="card-body">
                            <h5 class="card-title">Potatoes</h5>
                            <p class="card-text">$8.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Potatoes', 8.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 product-card">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 6">
                        <div class="card-body">
                            <h5 class="card-title">Lettuce</h5>
                            <p class="card-text">$5.00</p>
                            <button class="btn btn-primary" onclick="addToCart('Lettuce', 5.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Products End -->

        <!-- Cart Start -->
        <div id="cart" class="section">
            <h2>My Cart</h2>
            <div class="cart">
                <p>Your cart is empty.</p>
                <div id="cart-items"></div>
                <button class="btn btn-success" id="checkout-btn" style="display: none;">Checkout</button>
            </div>
        </div>
        <!-- Cart End -->

        <!-- Profile Start -->
        <div id="profile" class="section">
            <h2>Profile Information</h2>
            <p><strong>Name:</strong> Mike Johnson</p>
            <p><strong>Email:</strong> mike@example.com</p>
            <p><strong>Status:</strong> Verified</p>
            <button class="btn btn-primary">Edit Profile</button>
        </div>
        <!-- Profile End -->
    </div>
    <!-- Content End -->

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const cart = [];

        function showSection(sectionId) {
            // Hide all sections
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                section.style.display = 'none';
            });

            // Show the selected section
            const selectedSection = document.getElementById(sectionId);
            if (selectedSection) {
                selectedSection.style.display = 'block';
            }
        }

        function addToCart(productName, price) {
            cart.push({ productName, price });
            updateCart();
        }

        function updateCart() {
            const cartItems = document.getElementById('cart-items');
            cartItems.innerHTML = ''; // Clear existing items

            if (cart.length === 0) {
                cartItems.innerHTML = '<p>Your cart is empty.</p>';
                document.getElementById('checkout-btn').style.display = 'none';
                return;
            }

            let total = 0;
            cart.forEach(item => {
                const div = document.createElement('div');
                div.textContent = `${item.productName} - $${item.price.toFixed(2)}`;
                cartItems.appendChild(div);
                total += item.price;
            });

            const totalDiv = document.createElement('div');
            totalDiv.innerHTML = `<strong>Total: $${total.toFixed(2)}</strong>`;
            cartItems.appendChild(totalDiv);
            document.getElementById('checkout-btn').style.display = 'block';
        }

        // Show products by default on page load
        showSection('products');
    </script>
</body>

</html>
