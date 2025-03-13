<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - AlgoMarket</title>
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
        .card {
            margin-bottom: 20px;
        }
        .navbar {
            background-color: #495057;
        }
        .navbar .navbar-brand {
            color: #fff;
        }
        h2 {
            color: #333;
        }
        .table th {
            background-color: #495057;
            color: #fff;
        }
        .table td {
            vertical-align: middle;
        }
        .section {
            display: none;
        }
    </style>
</head>

<body>
    <%
     if(session.getAttribute("email")==null){
    	 response.sendRedirect("adminlogin.jsp");
     }
    %>
     <p>
     	<%= (String)request.getAttribute("dinesh")%>
     	
     </p>
    <div class="sidebar">
        <h2 class="text-white text-center">AlgoMarket Admin</h2>
        <a href="#" onclick="showSection('dashboard')"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="#" onclick="showSection('products')"><i class="fas fa-box"></i> Manage Products</a>
        <a href="#" onclick="showSection('orders')"><i class="fas fa-shopping-cart"></i> Manage Orders</a>
        <a href="#" onclick="showSection('users')"><i class="fas fa-users"></i> Manage Users</a>
        <a href="#" onclick="showSection('sellers')"><i class="fas fa-user-tie"></i> Manage Sellers</a>
        <a href="#" onclick="showSection('settings')"><i class="fas fa-cogs"></i> Settings</a>
        <a href="#" onclick="showSection('logout')"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    <!-- Sidebar End -->

    <!-- Content Start -->
    <div class="content">
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Admin Dashboard</a>
            </div>
        </nav>
        <!-- Navbar End -->

        <!-- Dashboard Overview Start -->
        <div id="dashboard" class="section">
            <h2 class="mt-4">Dashboard Overview</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Total Products</h5>
                            <p class="card-text display-4">150</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Total Orders</h5>
                            <p class="card-text display-4">320</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Total Users</h5>
                            <p class="card-text display-4">220</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Dashboard Overview End -->

        <!-- Manage Products Start -->
        <div id="products" class="section">
            <h2>Manage Products</h2>
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
                    <!-- Add more products as needed -->
                </tbody>
            </table>
        </div>
        <!-- Manage Products End -->

        <!-- Manage Orders Start -->
        <div id="orders" class="section">
            <h2>Manage Orders</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>101</td>
                        <td>John Doe</td>
                        <td>$150.00</td>
                        <td>Pending</td>
                        <td>
                            <button class="btn btn-sm btn-success">Mark as Shipped</button>
                            <button class="btn btn-sm btn-danger">Cancel</button>
                        </td>
                    </tr>
                    <!-- Add more orders as needed -->
                </tbody>
            </table>
        </div>
        <!-- Manage Orders End -->

        <!-- Manage Users Start -->
        <div id="users" class="section">
            <h2>Manage Users</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>201</td>
                        <td>Jane Smith</td>
                        <td>jane@example.com</td>
                        <td>Buyer</td>
                        <td>
                            <button class="btn btn-sm btn-warning">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>
                    <!-- Add more users as needed -->
                </tbody>
            </table>
        </div>
        <!-- Manage Users End -->

        <!-- Manage Sellers Start -->
        <div id="sellers" class="section">
            <h2>Manage Sellers</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Seller ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>301</td>
                        <td>Mike Johnson</td>
                        <td>mike@example.com</td>
                        <td>Pending</td>
                        <td>
                            <button class="btn btn-sm btn-success">Verify</button>
                            <button class="btn btn-sm btn-danger">Reject</button>
                        </td>
                    </tr>
                    <!-- Add more sellers as needed -->
                </tbody>
            </table>
        </div>
        <!-- Manage Sellers End -->

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

        // Optionally show the dashboard by default on page load
        showSection('dashboard');
    </script>
</body>

</html>
