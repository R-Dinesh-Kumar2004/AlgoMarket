<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Dashboard - AlgoMarket</title>
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
        .table th {
            background-color: #007bff;
            color: #fff;
        }
        .section {
            display: none; /* Hide all sections by default */
        }
    </style>
</head>

<body>
    <%
     if(session.getAttribute("email")==null){
    	 response.sendRedirect("sellerlogin.jsp");
     }
    %>
    <div class="sidebar">
        <h2 class="text-white text-center">Seller Dashboard</h2>
        <a href="#" onclick="showSection('profile')"><i class="fas fa-user"></i> Profile</a>
        <a href="#" onclick="showSection('products')"><i class="fas fa-box"></i> My Products</a>
        <a href="#" onclick="showSection('new-orders')"><i class="fas fa-shopping-cart"></i> New Orders</a>
        <a href="#" onclick="showSection('settings')"><i class="fas fa-cogs"></i> Settings</a>
        <a href="#" onclick="showSection('logout')"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    <!-- Sidebar End -->

    <!-- Content Start -->
    <div class="content">
        <!-- Profile Start -->
        <div id="profile" class="section">
            <h2>Profile Information</h2>
            <p><strong>Name:</strong> Mike Johnson</p>
            <p><strong>Email:</strong> mike@example.com</p>
            <p><strong>Status:</strong> Verified</p>
            <button class="btn btn-primary">Edit Profile</button>
        </div>
        <!-- Profile End -->

        <!-- My Products Start -->
        <div id="products" class="section">
            <h2>My Products</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Fresh Tomatoes</td>
                        <td>$20.00</td>
                        <td>100</td>
                        <td>
                            <button class="btn btn-sm btn-primary">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Organic Apples</td>
                        <td>$15.00</td>
                        <td>50</td>
                        <td>
                            <button class="btn btn-sm btn-primary">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>
                    <!-- Add more products as needed -->
                </tbody>
            </table>
            <a href="addProduct.jsp" class="btn btn-success">Add New Product</a>
        </div>
        <!-- My Products End -->

        <!-- New Orders Start -->
        <div id="new-orders" class="section">
            <h2>New Orders</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Product</th>
                        <th>Total Amount</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>101</td>
                        <td>John Doe</td>
                        <td>Fresh Tomatoes</td>
                        <td>$20.00</td>
                        <td>123 Main St, Springfield</td>
                    </tr>
                    <tr>
                        <td>102</td>
                        <td>Jane Smith</td>
                        <td>Organic Apples</td>
                        <td>$15.00</td>
                        <td>456 Elm St, Springfield</td>
                    </tr>
                    <!-- Add more orders as needed -->
                </tbody>
            </table>
        </div>
        <!-- New Orders End -->

        <!-- Settings Start -->
        <div id="settings" class="section">
            <h2>Settings</h2>
            <p>Customize your account settings here.</p>
        </div>
        <!-- Settings End -->
    </div>
    <!-- Content End -->

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
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

        // Show the profile by default on page load
        showSection('profile');
    </script>
</body>

</html>
