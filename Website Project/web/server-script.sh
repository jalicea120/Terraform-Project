#!/bin/bash

sudo yum update
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Personal Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }
        nav ul {
            padding: 0;
            list-style: none;
            background-color: #444;
        }
        nav ul li {
            display: inline;
            margin-right: 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 2rem;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .section {
            margin-bottom: 2rem;
        }
        h2 {
            color: #333;
            border-bottom: 2px solid #444;
            padding-bottom: 0.5rem;
        }
        footer {
            text-align: center;
            padding: 1rem;
            background-color: #333;
            color: #fff;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

    <header>
        <h1>My Blog & Portfolio</h1>
    </header>

    <nav>
        <ul>
            <li><a href="#about">About Me</a></li>
            <li><a href="#blog">Blog</a></li>
            <li><a href="#resume">Resume</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <div class="container">
        <section id="about" class="section">
            <h2>About Me</h2>
            <p>Hi! I'm [Your Name], a cloud computing enthusiast, and a tech learner, working towards AWS and Microsoft Cloud certifications. Welcome to my personal blog and portfolio!</p>
        </section>

        <section id="blog" class="section">
            <h2>Blog</h2>
            <article>
                <h3>Post Title 1</h3>
                <p>This is a brief introduction to the blog post. The full content will go here when you start writing.</p>
            </article>
            <article>
                <h3>Post Title 2</h3>
                <p>This is another post about cloud computing, certifications, or a tech-related topic you're interested in.</p>
            </article>
            <!-- Add more blog posts as needed -->
        </section>

        <section id="resume" class="section">
            <h2>Resume</h2>
            <h3>Education</h3>
            <p>[Your Degree], [University Name]</p>
            <h3>Experience</h3>
            <p>[Your job title], [Company Name] - [Date] to Present</p>
            <p>Responsibilities and achievements...</p>
            <h3>Certifications</h3>
            <ul>
                <li>AWS Solutions Architect</li>
                <li>AWS Developer</li>
                <li>CompTIA Security+</li>
                <!-- Add more certifications -->
            </ul>
        </section>

        <section id="contact" class="section">
            <h2>Contact Me</h2>
            <p>If you have any questions or want to get in touch, feel free to contact me at <strong>[your-email@example.com]</strong>.</p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 My Personal Blog. All Rights Reserved.</p>
    </footer>

</body>
</html>" | sudo tee /var/www/html/index.html