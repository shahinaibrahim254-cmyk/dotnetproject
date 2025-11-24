
<%--<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dotnetproject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <h1>Discover Your Next Favorite Book</h1>
                <p>Explore thousands of books across genres. Enjoy great deals and fast delivery!</p>
                <a href="Books.aspx" class="cta-btn">Shop Now</a>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="categories" style="padding:4rem 2rem; text-align:center;">
            <h2>Browse by Category</h2>
            <div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(150px,1fr)); gap:2rem; margin-top:2rem;">
                <div class="category-card">
                    <img src="https://via.placeholder.com/120" alt="Fiction" style="margin-bottom:1rem;"/>
                    <h3>Fiction</h3>
                </div>
                <div class="category-card">
                    <img src="https://via.placeholder.com/120" alt="Non-Fiction" style="margin-bottom:1rem;"/>
                    <h3>Non-Fiction</h3>
                </div>
                <div class="category-card">
                    <img src="https://via.placeholder.com/120" alt="Children" style="margin-bottom:1rem;"/>
                    <h3>Children</h3>
                </div>
                <div class="category-card">
                    <img src="https://via.placeholder.com/120" alt="Technology" style="margin-bottom:1rem;"/>
                    <h3>Technology</h3>
                </div>
            </div>
        </section>

        <!-- Featured Books -->
        <section class="featured-books">
            <h2 style="text-align:center;">Featured Books</h2>
            <div class="books-container" style="padding:2rem;">
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 1" />
                    <h3>The Great Adventure</h3>
                    <p>Author A</p>
                    <p class="price">$19.99</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 2" />
                    <h3>Mystery of the Night</h3>
                    <p>Author B</p>
                    <p class="price">$15.99</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 3" />
                    <h3>Learning C#</h3>
                    <p>Author C</p>
                    <p class="price">$22.50</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 4" />
                    <h3>Modern Web Design</h3>
                    <p>Author D</p>
                    <p class="price">$18.00</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="newsletter">
            <h2>Subscribe to Our Newsletter</h2>
            <p>Get updates on new arrivals, deals, and promotions directly to your inbox!</p>
            <form>
                <input type="email" placeholder="Enter your email" />
                <button type="submit" class="cta-btn">Subscribe</button>
            </form>
        </section>

        <!-- Testimonials -->
        <section class="testimonials" style="padding:4rem 2rem; text-align:center;">
            <h2>What Our Customers Say</h2>
            <div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(250px,1fr)); gap:2rem; margin-top:2rem;">
                <div class="testimonial-card">
                    <p>"Amazing collection and fast delivery! Highly recommend."</p>
                    <strong>- Alice</strong>
                </div>
                <div class="testimonial-card">
                    <p>"Great customer service and affordable prices. Love it!"</p>
                    <strong>- Bob</strong>
                </div>
                <div class="testimonial-card">
                    <p>"The website is easy to navigate and books are top quality."</p>
                    <strong>- Carol</strong>
                </div>
            </div>
        </section>

        <!-- Top Sellers -->
        <section class="top-sellers" style="padding:4rem 2rem; background:#ffe0e0; text-align:center;">
            <h2>Top Sellers</h2>
            <div class="books-container" style="margin-top:2rem;">
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 5" />
                    <h3>Bestseller One</h3>
                    <p>Author E</p>
                    <p class="price">$25.00</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
                <div class="book-card">
                    <img src="https://via.placeholder.com/150x220" alt="Book 6" />
                    <h3>Bestseller Two</h3>
                    <p>Author F</p>
                    <p class="price">$21.50</p>
                    <a href="#" class="buy-btn">Buy Now</a>
                </div>
            </div>
        </section>

    </main>
</asp:Content>--%>

<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dotnetproject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top:120px; text-align:center; padding:60px;">
        <h1 style="font-size:3rem; font-weight:700; color:#ff6a00;">
            Welcome to the Online Book Store
        </h1>

        <p style="font-size:1.2rem; margin-top:20px; color:#444;">
            Your one-stop destination for books of every category.
        </p>

        <a href="login.aspx"
           style="display:inline-block; margin-top:25px; padding:12px 25px;
                  background:#ff6a00; color:white; text-decoration:none;
                  border-radius:25px; font-weight:bold;">
            Browse Books
        </a>
    </div>

</asp:Content>

