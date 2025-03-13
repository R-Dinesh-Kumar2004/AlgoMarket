<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AlgoMarket</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 wow fadeIn" data-wow-delay="0.1s">

        <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="fw-bold text-primary m-0"><span class="text-secondary">A</span>lgo<span class="text-secondary">M</span>arket</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index.jsp" class="nav-item nav-link active">Home</a>
                    <a href="#aboutus" class="nav-item nav-link">About Us</a>
                    <a href="#products" class="nav-item nav-link">Products</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login/Register</a>
                        <div class="dropdown-menu m-0">
                            <a href="adminlogin.jsp" class="dropdown-item">Admin Login</a>
                            <a href="buyerlogin.jsp" class="dropdown-item">Buyer Login</a>
                            <a href="sellerlogin.jsp" class="dropdown-item">Seller Login</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">More</a>
                        <div class="dropdown-menu m-0">
                            <a href="blog.jsp" class="dropdown-item">Blog Grid</a>
                            <a href="#features" class="dropdown-item">Our Features</a>
                            <a href="#reviews" class="dropdown-item">Reviews</a>
                        </div>
                    </div>
                </div>
                <div class="d-none d-lg-flex ms-2">
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                        <small class="fa fa-search text-body"></small>
                    </a>
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="#contact">
                        <small class="fa fa-user text-body"></small>
                    </a>
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                        <small class="fa fa-shopping-bag text-body"></small>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown">Get Good Organic Food From Farmers</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown">Natural Food Is Always Healthy</h1>
                                    <a href="" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Products</a>
                                    <a href="" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Services</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-xxl py-5" id="aboutus">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="img/about.jpg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4">Best Organic Fruits And Vegetables</h1>
                    <p class="mb-4">Welcome to AlgoMarket, where we bring you the finest selection of organic fruits and vegetables, sourced directly from local farmers committed to sustainable practices. Enjoy the freshest produce, knowing itâs grown without harmful chemicals or pesticides.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Farming is not just a job; itâs a way of life.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>The farmer is the one who feeds us all.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>In every seed lies the promise of a new beginning.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Feature Start -->
    <div class="container-fluid bg-light my-5 py-6" id="features">
        <div class="container text-center">
            <h1 class="display-5 mb-4">Our Features</h1>
            <p class="mb-5">We focus on what truly matters to provide satisfaction and joy.</p>
            
            <div class="row g-4">
                <div class="col-lg-4 col-md-6">
                    <div class="bg-white text-center h-100 p-4">
                        <img class="img-fluid mb-3" src="img/icon-1.png" alt="">
                        <h4 class="mb-3">Natural Process</h4>
                        <p>We prioritize sustainable farming practices, ensuring that all our produce is grown naturally.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="bg-white text-center h-100 p-4">
                        <img class="img-fluid mb-3" src="img/icon-2.png" alt="">
                        <h4 class="mb-3">Organic Products</h4>
                        <p>We offer a variety of organic fruits and vegetables, freshly harvested from local farms.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="bg-white text-center h-100 p-4">
                        <img class="img-fluid mb-3" src="img/icon-3.png" alt="">
                        <h4 class="mb-3">Biologically Safe</h4>
                        <p>All products meet strict organic standards, providing healthy options you can trust.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature End -->



    <!-- Product Start -->
    <div class="container-xxl py-5" id="products">
        <div class="container text-center">
            <h1 class="display-5 mb-4">Our Products</h1>
            
            <div class="row g-4">
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-1.jpg" alt="">
                        <h5 class="mt-2">Fresh Tomato</h5>
                        <span class="text-primary me-1">$19.00</span>
                        <span class="text-body text-decoration-line-through">$29.00</span>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-2.jpg" alt="">
                        <h5 class="mt-2">Fresh Cucumber</h5>
                        <span class="text-primary me-1">$15.00</span>
                        <span class="text-body text-decoration-line-through">$25.00</span>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-3.jpg" alt="">
                        <h5 class="mt-2">Fresh Carrot</h5>
                        <span class="text-primary me-1">$12.00</span>
                        <span class="text-body text-decoration-line-through">$20.00</span>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-4.jpg" alt="">
                        <h5 class="mt-2">Fresh Lettuce</h5>
                        <span class="text-primary me-1">$10.00</span>
                        <span class="text-body text-decoration-line-through">$18.00</span>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-5.jpg" alt="">
                        <h5 class="mt-2">Fresh Bell Pepper</h5>
                        <span class="text-primary me-1">$14.00</span>
                        <span class="text-body text-decoration-line-through">$22.00</span>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-item">
                        <img class="img-fluid" style="max-height: 150px; width: auto;" src="img/product-6.jpg" alt="">
                        <h5 class="mt-2">Fresh Spinach</h5>
                        <span class="text-primary me-1">$16.00</span>
                        <span class="text-body text-decoration-line-through">$24.00</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product End -->
        
    <!-- Contact Form Start -->
    <div class="container-fluid bg-primary bg-icon mt-5 py-6" id="contact">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-md-7 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-5 text-white mb-3">Contact Us</h1>
                    <p class="text-white mb-4">Have questions or want to know more about our products? Fill out the form below and weâll get back to you shortly!</p>
                    
                    <form>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" rows="4" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-lg btn-secondary rounded-pill py-3 px-5">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Form End -->


    <!-- Star Review Section -->
    <div class="container-fluid bg-light py-6 mb-5" id="reviews">
        <div class="container text-center">
            <h1 class="display-5 mb-4">Customer Reviews</h1>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="review-item p-4 bg-white border rounded">
                        <div class="star-rating mb-2">
                            âââââ
                        </div>
                        <p>"This is a fantastic product!"</p>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="review-item p-4 bg-white border rounded">
                        <div class="star-rating mb-2">
                            âââââ
                        </div>
                        <p>"I am extremely satisfied with the quality."</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="review-item p-4 bg-white border rounded">
                        <div class="star-rating mb-2">
                            âââââ
                        </div>
                        <p>"Highly recommend! Excellent experience."</p>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="review-item p-4 bg-white border rounded">
                        <div class="star-rating mb-2">
                            âââââ
                        </div>
                        <p>"A wonderful addition to my routine!"</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Star Review Section End -->





    <!-- Footer Start -->
    <div class="container-fluid bg-dark footer mt-5 pt-5">
        <div class="container py-5 text-white">
            <div class="row g-4">
                <div class="col-lg-4 col-md-6">
                    <h1 class="fw-bold text-primary m-0"><span class="text-secondary">A</span>lgo<span class="text-secondary">M</span>arket</h1>
                    <p>Your source for organic produce.</p>
                    <div class="d-flex">
                        <a class="btn btn-outline-light me-1" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light me-1" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <h4>Contact</h4>
                    <p><i class="fa fa-map-marker-alt me-2"></i>123 Main St, Chennai, Tamil Nadu, India</p>
                    <p><i class="fa fa-phone-alt me-2"></i>+91 98765 43210</p>
                    <p><i class="fa fa-envelope me-2"></i>info@example.com</p>
                </div>
                <div class="col-lg-4 col-md-6">
                    <h4>Quick Links</h4>
                    <a class="btn btn-link" href="">About</a>
                    <a class="btn btn-link" href="">Contact</a>
                    <a class="btn btn-link" href="">Services</a>
                </div>
            </div>
        </div>
        <div class="text-center py-3">
            &copy; <a href="#" class="text-white">AlgoMarket</a>, All Rights Reserved.
        </div>
    </div>
    <!-- Footer End -->

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>