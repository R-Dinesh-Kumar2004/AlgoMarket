<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AlgoMarket - Organic Food Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f8f9fa; /* Light grey background */
        }

        .navbar {
            background-color: #ffffff; /* White */
            border-bottom: 1px solid #ddd; /* Light grey border */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .navbar-brand h1 {
            color: #28a745; /* Change this to your desired color */
        }
        .text-secondary{
            color: #dc8306;
        }
        .navbar a:hover {
            color: #28a745; /* Green on hover */
        }

        .page-header {
            background-color: #d4edda; /* Light green */
            color: #155724; /* Dark green */
            padding: 60px 0;
            text-align: center;
        }

        .page-header h1 {
            font-size: 2.5rem; /* Larger font size */
            font-weight: 700; /* Bold */
        }
        
        .page-header h1 span {
            color: rgb(220, 145, 6); /* Orange for A and M */
        }

        .footer {
            background-color: #343a40; /* Dark grey */
            color: #fff;
            padding: 40px 0;
            text-align: center;
        }

        .footer p {
            margin: 5px 0;
        }

        .blog-post {
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow for cards */
        }

        .blog-post:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }

        .card-title {
            font-weight: 600; /* Bold title */
        }
    </style>
</head>

<body>

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5">
        <div class="container">
            <a class="navbar-brand" href="#">
                <h1 class="fw-bold m-0"><span class="text-secondary">A</span>lgo<span class="text-secondary">M</span>arket</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Home</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="page-header">
        <h1 class="display-4">Welcome to <span>A</span>lgo<span>M</span>arket</h1>
        <p>Your source for premium organic products</p>
    </div>
    <!-- Page Header End -->

    <!-- Blog Start -->
    <div class="container py-5">
        <h2 class="text-center mb-4">Latest Blog Posts</h2>
        <div class="row g-4">
            <div class="col-lg-4 col-md-6">
                <div class="card blog-post">
                    <img src="img/blog-1.jpg" class="card-img-top" alt="Blog Post 1">
                    <div class="card-body">
                        <h5 class="card-title">Exploring Organic Farming Techniques</h5>
                        <p class="card-text">Discover innovative farming methods that promote sustainability and health.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card blog-post">
                    <img src="img/blog-2.jpg" class="card-img-top" alt="Blog Post 2">
                    <div class="card-body">
                        <h5 class="card-title">Benefits of Organic Produce</h5>
                        <p class="card-text">Learn about the numerous advantages of choosing organic over conventional products.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card blog-post">
                    <img src="img/blog-3.jpg" class="card-img-top" alt="Blog Post 3">
                    <div class="card-body">
                        <h5 class="card-title">Sustainable Practices for Modern Agriculture</h5>
                        <p class="card-text">Explore practices that support environmental stewardship in farming.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->

    <!-- Footer Start -->
    <div class="footer">
        <div class="container">
            <h5>Contact Us</h5>
            <p><i class="fas fa-map-marker-alt"></i> Your Business Address</p>
            <p><i class="fas fa-phone-alt"></i> +1 234 567 890</p>
            <p><i class="fas fa-envelope"></i> info@algomarket.com</p>
        </div>
    </div>
    <!-- Footer End -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
