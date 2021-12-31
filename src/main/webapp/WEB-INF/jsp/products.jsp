<%@ page language="java" contentType="text/html;"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products Page</title>
    <link href="/css/products.css" rel="stylesheet" />
    <style>
        html,
        body {
            min-height: 100%;
        }
    </style>
</head>

<body>
    <nav class="navigation container">
        <div class="nav-brand">Waste Management System</div>
        <ul class="list-non-bullet nav-pills">
            <li class="list-item-inline">
                <a class="link" href="/index.html">Our Values</a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="/slot-booking/slot-booking.html">Slot Booking</a>
            </li>
            <li class="list-item-inline">
                <a class="link  link-active" href="/products/products.html">Products</a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="/login/login.html">Login</a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="/signup/signup.html">Signup</a>
            </li>
        </ul>
    </nav>
    
<%--     <c:forEach items="${myList}" var="element"> 
  <tr>
    <td>${element.status}</td>
    <td>${element.requestType}</td>
    <td>${element.requestedFor}</td>
    <td>${element.timeSubmitted}</td>
  </tr>
</c:forEach> --%>

    <div id="all" class="card-container">
     <c:forEach items="${products}" var="product"> 
        <div class="card">
            <img class="card-img-top" src="/images/${product.getImageName()}" alt="sample-product">
            <div class="card-body">
                <h5 class="card-title">${product.getName()}</h5>
                <p class="card-text">${product.getDescription()}</p>
                <p class="card-text">${product.getCategory()}</p>
                <p class="card-price">Price:  ${product.getPrice()}</p>
                <button class="button">Add to cart</button>
            </div>
        </div>
        </c:forEach>
    </div>

    <footer class="footer">
        <div class="footer-header">Some small heading inside footer</div>
        <ul class="social-links list-non-bullet">
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialone
                </a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialtwo
                </a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialthree
                </a>
            </li>
        </ul>
    </footer>
</body>

</html>