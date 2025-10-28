<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DocuMagic - All-in-One PDF & Image Tools</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #4361ee;
            --primary-dark: #3a56d4;
            --secondary: #7209b7;
            --accent: #f72585;
            --light: #f8f9fa;
            --dark: #212529;
            --gray: #6c757d;
            --light-gray: #e9ecef;
            --success: #4cc9f0;
            --warning: #ff9e00;
            --danger: #e63946;
            --border-radius: 12px;
            --shadow: 0 10px 20px rgba(0,0,0,0.1);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            color: var(--dark);
            line-height: 1.6;
            min-height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            box-shadow: var(--shadow);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.8rem;
            font-weight: 800;
            color: var(--primary);
            text-decoration: none;
        }

        .logo i {
            color: var(--secondary);
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 25px;
        }

        nav a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 600;
            font-size: 1rem;
            transition: var(--transition);
            position: relative;
        }

        nav a:hover {
            color: var(--primary);
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: var(--transition);
        }

        nav a:hover::after {
            width: 100%;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--dark);
        }

        /* Hero Section */
        .hero {
            padding: 100px 0;
            text-align: center;
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            color: white;
            border-radius: 0 0 30px 30px;
            margin-bottom: 50px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M500,50L483,15L469,41L445,9L421,36L399,7L376,32L351,5L327,29L302,6L278,27L253,7L229,26L204,9L180,26L155,12L131,28L106,16L82,32L58,21L35,38L13,27L0,50L13,73L35,62L58,79L82,68L106,84L131,72L155,88L180,74L204,91L229,74L253,93L278,73L302,94L327,71L351,95L376,68L399,93L421,64L445,91L469,59L483,85L500,50Z" fill="rgba(255,255,255,0.1)"/></svg>');
            background-size: cover;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-size: 3.2rem;
            margin-bottom: 20px;
            font-weight: 800;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            opacity: 0.9;
        }

        .cta-button {
            display: inline-block;
            background: white;
            color: var(--primary);
            padding: 14px 32px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 700;
            font-size: 1.1rem;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            transition: var(--transition);
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        /* Section Styles */
        .section {
            padding: 80px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 2.5rem;
            color: var(--dark);
            margin-bottom: 15px;
            position: relative;
            display: inline-block;
        }

        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: var(--accent);
            border-radius: 2px;
        }

        .section-title p {
            color: var(--gray);
            max-width: 600px;
            margin: 0 auto;
        }

        /* Tools Grid */
        .tools-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 25px;
            margin-bottom: 60px;
        }

        .tool-card {
            background: white;
            border-radius: var(--border-radius);
            box-shadow: var(--shadow);
            padding: 30px 25px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(0,0,0,0.05);
        }

        .tool-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(to right, var(--primary), var(--secondary));
        }

        .tool-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.15);
        }

        .tool-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.8rem;
        }

        .tool-card h3 {
            margin-bottom: 15px;
            color: var(--dark);
            font-size: 1.4rem;
        }

        .tool-card p {
            color: var(--gray);
            font-size: 0.95rem;
        }

        /* Features Section */
        .features {
            background: white;
            border-radius: var(--border-radius);
            padding: 60px 40px;
            box-shadow: var(--shadow);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
        }

        .feature {
            text-align: center;
            padding: 20px;
        }

        .feature i {
            font-size: 3rem;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .feature h3 {
            margin-bottom: 15px;
            font-size: 1.5rem;
        }

        .feature p {
            color: var(--gray);
        }

        /* Stats Section */
        .stats {
            background: linear-gradient(135deg, var(--secondary) 0%, var(--primary) 100%);
            color: white;
            padding: 80px 0;
            border-radius: var(--border-radius);
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
        }

        .stat {
            text-align: center;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            margin-bottom: 10px;
        }

        .stat-label {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        /* Testimonials */
        .testimonials {
            background: var(--light);
            border-radius: var(--border-radius);
            padding: 60px 40px;
        }

        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .testimonial {
            background: white;
            border-radius: var(--border-radius);
            padding: 30px;
            box-shadow: var(--shadow);
        }

        .testimonial-content {
            margin-bottom: 20px;
            font-style: italic;
            color: var(--gray);
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .author-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: var(--primary);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }

        .author-info h4 {
            margin-bottom: 5px;
        }

        .author-info p {
            color: var(--gray);
            font-size: 0.9rem;
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(135deg, var(--accent) 0%, var(--secondary) 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
            border-radius: var(--border-radius);
        }

        .cta-section h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 60px 0 30px;
            margin-top: 80px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-section h3 {
            margin-bottom: 25px;
            font-size: 1.3rem;
            position: relative;
            display: inline-block;
        }

        .footer-section h3::after {
            content: '';
            position: absolute;
            bottom: -8px;
            left: 0;
            width: 40px;
            height: 3px;
            background: var(--accent);
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 12px;
        }

        .footer-section a {
            color: #adb5bd;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-section a:hover {
            color: white;
            padding-left: 5px;
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
            transition: var(--transition);
        }

        .social-links a:hover {
            background: var(--primary);
            transform: translateY(-3px);
        }

        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: #adb5bd;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .hero h1 {
                font-size: 2.8rem;
            }
            
            .tools-grid {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            }
        }

        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
                gap: 15px;
            }

            nav ul {
                flex-wrap: wrap;
                justify-content: center;
                gap: 15px;
            }

            .mobile-menu-btn {
                display: block;
                position: absolute;
                top: 20px;
                right: 20px;
            }

            .hero {
                padding: 60px 0;
            }

            .hero h1 {
                font-size: 2.3rem;
            }

            .hero p {
                font-size: 1.1rem;
            }

            .section-title h2 {
                font-size: 2rem;
            }

            .section {
                padding: 60px 0;
            }

            .features {
                padding: 40px 20px;
            }

            .testimonials {
                padding: 40px 20px;
            }
        }

        @media (max-width: 576px) {
            .hero h1 {
                font-size: 2rem;
            }
            
            .tools-grid {
                grid-template-columns: 1fr;
            }
            
            .tool-card {
                padding: 25px 20px;
            }
            
            .footer-content {
                grid-template-columns: 1fr;
            }

            .stats-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .cta-section h2 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">
                    <i class="fas fa-magic"></i>
                    <span>DocuMagic</span>
                </a>
                <nav>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#tools">Tools</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#testimonials">Testimonials</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </nav>
                <button class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">
                <h1>All-In-One PDF & Image Tools</h1>
                <p>Convert, compress, edit, and manage your documents and images with our powerful online tools. Fast, secure, and completely free!</p>
                <a href="#tools" class="cta-button">Explore Tools</a>
            </div>
        </div>
    </section>

    <!-- Tools Section -->
    <section class="section" id="tools">
        <div class="container">
            <div class="section-title">
                <h2>Our Powerful Tools</h2>
                <p>Choose from our wide range of document and image processing tools</p>
            </div>

            <div class="tools-grid">
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-pdf"></i>
                    </div>
                    <h3>PDF to JPG</h3>
                    <p>Convert PDF pages to high-quality JPG images instantly</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-image"></i>
                    </div>
                    <h3>JPG to PDF</h3>
                    <p>Convert multiple JPG images to a single PDF document</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-compress-alt"></i>
                    </div>
                    <h3>Image Compression</h3>
                    <p>Reduce image file size without losing quality</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-contract"></i>
                    </div>
                    <h3>PDF Compression</h3>
                    <p>Compress PDF files to reduce their size significantly</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-object-group"></i>
                    </div>
                    <h3>Merge PDF</h3>
                    <p>Combine multiple PDF files into a single document</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-cut"></i>
                    </div>
                    <h3>Split PDF</h3>
                    <p>Split PDF documents into separate files or extract pages</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-word"></i>
                    </div>
                    <h3>PDF to Word</h3>
                    <p>Convert PDF files to editable Word documents</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-excel"></i>
                    </div>
                    <h3>PDF to Excel</h3>
                    <p>Extract tables from PDF to Excel spreadsheets</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-export"></i>
                    </div>
                    <h3>Excel to PDF</h3>
                    <p>Convert Excel files to PDF format</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-edit"></i>
                    </div>
                    <h3>Edit PDF</h3>
                    <p>Add text, images, and annotations to PDFs</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-eraser"></i>
                    </div>
                    <h3>Remove PDF</h3>
                    <p>Delete pages or content from PDF files</p>
                </div>
                <div class="tool-card">
                    <div class="tool-icon">
                        <i class="fas fa-file-archive"></i>
                    </div>
                    <h3>More Tools</h3>
                    <p>Explore all our PDF and image processing tools</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="section" id="features">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose DocuMagic?</h2>
                <p>Discover the features that make our tools stand out from the rest</p>
            </div>

            <div class="features">
                <div class="features-grid">
                    <div class="feature">
                        <i class="fas fa-shield-alt"></i>
                        <h3>100% Secure</h3>
                        <p>All files are processed securely in your browser. We never store or access your documents.</p>
                    </div>
                    <div class="feature">
                        <i class="fas fa-bolt"></i>
                        <h3>Lightning Fast</h3>
                        <p>Our optimized tools process your files in seconds, not minutes.</p>
                    </div>
                    <div class="feature">
                        <i class="fas fa-mobile-alt"></i>
                        <h3>Fully Responsive</h3>
                        <p>Works perfectly on all devices - desktop, tablet, and mobile.</p>
                    </div>
                    <div class="feature">
                        <i class="fas fa-dollar-sign"></i>
                        <h3>Completely Free</h3>
                        <p>All our tools are free to use with no hidden costs or limitations.</p>
                    </div>
                    <div class="feature">
                        <i class="fas fa-cloud"></i>
                        <h3>No Installation</h3>
                        <p>Use our tools directly in your browser - no software to download or install.</p>
                    </div>
                    <div class="feature">
                        <i class="fas fa-lock"></i>
                        <h3>Privacy Focused</h3>
                        <p>Your files never leave your device. All processing happens locally.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="section">
        <div class="container">
            <div class="stats">
                <div class="stats-grid">
                    <div class="stat">
                        <div class="stat-number">50K+</div>
                        <div class="stat-label">Happy Users</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number">1M+</div>
                        <div class="stat-label">Files Processed</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number">25+</div>
                        <div class="stat-label">Tools Available</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number">99.9%</div>
                        <div class="stat-label">Uptime</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="section" id="testimonials">
        <div class="container">
            <div class="section-title">
                <h2>What Our Users Say</h2>
                <p>Don't just take our word for it - hear from our satisfied users</p>
            </div>

            <div class="testimonials">
                <div class="testimonials-grid">
                    <div class="testimonial">
                        <div class="testimonial-content">
                            "DocuMagic saved me hours of work! The PDF to Word conversion is incredibly accurate and the interface is so intuitive."
                        </div>
                        <div class="testimonial-author">
                            <div class="author-avatar">JS</div>
                            <div class="author-info">
                                <h4>Jessica Smith</h4>
                                <p>Marketing Manager</p>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial">
                        <div class="testimonial-content">
                            "As a student, I use DocuMagic regularly to compress my lecture slides and merge research papers. It's a lifesaver!"
                        </div>
                        <div class="testimonial-author">
                            <div class="author-avatar">AR</div>
                            <div class="author-info">
                                <h4>Alex Rodriguez</h4>
                                <p>University Student</p>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial">
                        <div class="testimonial-content">
                            "The image compression tool is fantastic! I can reduce file sizes by 70% without noticeable quality loss. Highly recommended!"
                        </div>
                        <div class="testimonial-author">
                            <div class="author-avatar">MW</div>
                            <div class="author-info">
                                <h4>Michael Wang</h4>
                                <p>Photographer</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="section">
        <div class="container">
            <div class="cta-section">
                <h2>Ready to Get Started?</h2>
                <p>Join thousands of satisfied users and experience the power of DocuMagic today</p>
                <a href="#tools" class="cta-button">Try Our Tools Now</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>DocuMagic</h3>
                    <p>Your all-in-one solution for PDF and image processing. Fast, secure, and completely free to use.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>PDF Tools</h3>
                    <ul>
                        <li><a href="#">PDF to JPG</a></li>
                        <li><a href="#">JPG to PDF</a></li>
                        <li><a href="#">PDF Compression</a></li>
                        <li><a href="#">Merge PDF</a></li>
                        <li><a href="#">Split PDF</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Image Tools</h3>
                    <ul>
                        <li><a href="#">Image Compression</a></li>
                        <li><a href="#">Edit PDF</a></li>
                        <li><a href="#">Remove PDF</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Company</h3>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 DocuMagic. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu functionality
        const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
        const nav = document.querySelector('nav');
        
        mobileMenuBtn.addEventListener('click', function() {
            nav.style.display = nav.style.display === 'flex' ? 'none' : 'flex';
        });

        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href');
                if (targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                    
                    // Close mobile menu if open
                    if (window.innerWidth <= 768) {
                        nav.style.display = 'none';
                    }
                }
            });
        });

        // Responsive adjustments
        window.addEventListener('resize', function() {
            if (window.innerWidth > 768) {
                nav.style.display = 'flex';
            } else {
                nav.style.display = 'none';
            }
        });

        // Add animation to tool cards on scroll
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        // Observe tool cards for animation
        document.querySelectorAll('.tool-card').forEach(card => {
            card.style.opacity = '0';
            card.style.transform = 'translateY(20px)';
            card.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
            observer.observe(card);
        });
    </script>
</body>
</html>
