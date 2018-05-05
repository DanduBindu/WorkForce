<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WorkForce</title>
<style>

.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
    display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #000000;
  font-size: 50px;
  padding: 100px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  font-family: "Times New Roman", Times, serif;
}
.text2 {
  color: #FFFFFF;
  font-size: 50px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

.dropbtn {
    /*background-color: #3498DB;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;*/
    position :relative;
	top : -111px;
	left : -140px;
	right : -420px;
	bottom : -191px;
	float :right;    
}


.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    position :relative;
    top : -40px;
    left : 1100px;
    right : -420px;
    bottom : -191px;
    
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #ddd}

.show {display:block;}
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=email], input[type=password] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

button:hover {
    opacity: 0.8;
}

.loginbtn {
position :relative;
top : -50px;
left : 900px;
right : -420px;
bottom : -191px;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
    element.style {
    height: 50%;
    width: 50%;
    }
}
</style>
</head>

<body background="Images/BG5.jpg">
<meta name = "view port" cotent= "width = device-width", initial-scale = 1>

<h2 style = "color : white; font-family: Times New Roman, Times, serif;">WorkForce</h2>
<button onclick="document.getElementById('login').style.display='block'" style="width:auto;" class = "loginbtn">Login</button><br>

<button onclick="myFunction()" class="dropbtn">Register</button>

<div id="login" class="modal">
  
  <form class="modal-content animate" action="./WorkForceController" method = "POST">
  <h2>  Login Form</h2>
    <div class="imgcontainer">
      <span onclick="document.getElementById('login').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for="email"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="email" required>
      <br>
      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        <br>
     
      <input type="radio" name="role" value="User"> User<br>
      <input type="radio" name="role" value="Force"> Force<br>
     <button type="submit" name = "action" value = "Login">Login</button>
    </div>

  </form>
  <br>
 
</div>

<div id="registerAsUser" class="modal">
  <form name = form class="modal-content animate" action="./WorkForceController" method = "POST" onsubmit="return validateform()">
    <div class="imgcontainer">
      <span onclick="document.getElementById('registerAsUser').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for = "firstName"><b>First Name : </b></label>
      <input type = "text" name = "firstName" placeholder = "Enter FirstName" required><br>
       <label for = "lastName"><b>Last Name : </b></label>
      <input type = "text" name = "lastName" placeholder = "Enter LastName" required>
       <br>
      <label for="email"><b>Email : </b></label>
      <input type="email" placeholder="Enter Email" name="email" required>
      <br>
      <label for="password"><b>Password : </b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        <br>
        <label for = "phoneNumber"><b>Phone Number : </b></label>
      <input type = "text" name = "phoneNumber" placeholder = "Phone Number" required>
     
      <br>
      <label for = "address"><b>Address :<br> </b></label>
      <label for = "doorNumber"></label>
      <input type = "text" name = "doorNumber" placeholder = "Door Number" required>  <br> 
       <label for = "street"></label>
      <input type = "text" name = "street" placeholder = "Street" required>   
      <br>
       <label for = "city"></label>
      <input type = "text" name = "city" placeholder = "City" required>  <br> 
       <label for = "state"></label>
      <input type = "text" name = "state" placeholder = "State" required>  <br> 
       <label for = "postalCode"></label>
      <input type = "text" name = "postalCode" placeholder = "Postal Code" required><br>   
       <label for = "country"></label>
      <input type = "text" name = "country" placeholder = "Country" required>   <br>
      
      <br>
     <button type="submit" name = "action" value = "RegisterAsUser">Register</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('registerAsUser').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
  <br>
 
</div>
<div id="registerAsForce" class="modal">
  
  <form name = form2 class="modal-content animate" action="./WorkForceController" method = "POST" onsubmit="return validateform2()">
    <div class="imgcontainer">
      <span onclick="document.getElementById('registerAsForce').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>
	
	
     <div class="container">
      <label for = "firstName"><b>First Name : </b></label>
      <input type = "text" name = "firstName" placeholder = "First Name" required><br>
      <label for = "lastName"><b>Last Name : </b></label>
      <input type = "text" name = "lastName" placeholder = "Last Name" required>
      <br>
      <label for="email"><b>Email : </b></label>
      <input type="email" placeholder="Enter Email" name="email" required>
      <br>
      <label for="password"><b>Password : </b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
      <br>
      <label for = "phoneNumber"><b>Phone Number : </b></label>
      <input type = "text" name = "phoneNumber" placeholder = "Phone Number" required>   
      <br>
      SubServiceTypeList<select name = "subserviceType" >
     <c:forEach items="${serviceTypesList}" var="serviceType">
    <c:forEach items = "${serviceType.subServiceType}" var="subserviceType">

    <option value=${subserviceType.subServiceTypeId}>${serviceType.name}-${subserviceType.name}</option>
    </c:forEach>
    </c:forEach>
	</select>
      <br>
      <br>
      <label for = "address"><b>Address :<br> </b></label>
      <label for = "doorNumber"></label>
      <input type = "text" name = "doorNumber" placeholder = "Door Number" required>  <br> 
       <label for = "street"></label>
      <input type = "text" name = "street" placeholder = "Street" required>   
      <br>
       <label for = "city"></label>
      <input type = "text" name = "city" placeholder = "City" required>  <br> 
       <label for = "state"></label>
      <input type = "text" name = "state" placeholder = "State" required>  <br> 
       <label for = "postalCode"></label>
      <input type = "text" name = "postalCode" placeholder = "Postal Code" required><br>   
       <label for = "country"></label>
      <input type = "text" name = "country" placeholder = "Country" required> <br>
      <label for = "experience"><b>Experience : </b></label>
      <input type = "text" name = "experience" placeholder = "Experience" required>   
      <br>
      <label for = "costPerHour"><b>Cost Per Hour: </b></label>
      <input type = "text" name = "costPerHour" placeholder = "Cost Per Hour" required>   
      <br>
      
      <br>
      <button type="submit" name = "action" value = "RegisterAsForce">Register</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('registerAsForce').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
  <br>
 
</div>
<div class="dropdown">
	
  <div id="myDropdown" class="dropdown-content">
    <button onclick="document.getElementById('registerAsUser').style.display='block'" style="width:auto;">User</a>
    <br>
    <button onclick="document.getElementById('registerAsForce').style.display='block'" style="width:auto;">Force</a>
    
  </div>
  
</div>


<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  
  <div class="mySlides fade">
    <img src="Images/BG.jpg" style="height: 340px ;width : 1000px">
    <div class="text">WORKFORCE</div>
  </div>
  <div class="mySlides fade">
    <img src="Images/ES.jpg" style="height: 340px ;width : 1000px">
  </div>

  <div class="mySlides fade">
    <img src="Images/CS.jpg" style="height: 340px ;width : 1000px">
    <div class="text">Construction Services</div>
  </div>

  <div class="mySlides fade">
    <img src="Images/MS.jpg" style="height: 340px ;width : 1000px">
    <div class="text2">Mechanical Services</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span> 
</div>

<div class ="img">
     <c:forEach items="${subServiceTypesList}" var="subServiceType">
     <a href = "WorkForceController?action=subServicesTypes">
     	<img style = "height: 140px ;width : 140px" src = "Images/${subServiceType.icon}">
     	</a>
    </c:forEach>

</div>
<script>
// Get the modal
var modal = document.getElementById('login');
var modal = document.getElementById('registerAsUser');
var modal = document.getElementById('registerAsForce');
///When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
function validateform(){  
	var password = form.password.value;
if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
}
function validateform2(){  
	var password = form2.password.value;;
if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}

</script>
</body>
</html>