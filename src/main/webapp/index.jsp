<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<!DOCTYPE html>
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Navigation Bar</title>
    <style>
.background{
  margin-bottom: 100px;
}


.navbar {
     background-color: #333; 
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.logo a {
    color: #fff;
    font-size: 24px;
    text-decoration: none;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
}

.nav-links li {
    margin: 0 10px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s;
    font-weight: bold;
}

.nav-links a:hover {
    color: #007bff;
    font-size: 17px;
    font-weight: 300;
}
.text
{
   
  background-image: linear-gradient(90deg,rgb(0, 225, 255),rgb(89, 219, 89));
  padding:20px;
  border-radius: 17px;
  margin-right: 120px;
    
}
.text h1{
    font-size: 30px;
    font-weight: bold;
    color:rgb(224, 82, 16);
}
.detailed-view-card-container {
 
  border-bottom-right-radius: 8px;
  border-bottom-left-radius: 8px;
  margin: 24px;
}
.mySlides {
    display: none;
    width:max-content;
    width:100%;
}
img {
    vertical-align: middle;
    height: 400px;
    margin-left: 100px;
}

/* Slideshow container */
.slideshow-container {

  position: relative;
  margin: auto;
}

/* Caption text */
/* .text {
  color: #000000;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
} */


/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

    </style>
</head>
<body>
    <div class="background">
    <nav class="navbar" >
        <div class="logo">
            <a href="p1.html"><kk style="color: pink;">Food</kk> <span style="color: green;">Gram</span></a>
        </div>
        <ul class="nav-links">
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="#">Explore</a></li>
            <li><a href='#'>Filter</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="signin.html">SignIn</a></li>
            <li><a href="signup.html">SignUp</a></li>
            <li><a href="#">Help</a></li>
        </ul>
    </nav>

    <div class="slideshow-container" style="margin-top: 50px;">
      <div class="mySlides fade">
        <img src="p1img5.jpg" style="width:80%">
      </div>
      
      <div class="mySlides fade">
        <img src="p1img2.jpg" style="width:80%">
      </div>
      
      <div class="mySlides fade">
        <img src="p1img3.jpg" style="width:80%">
      </div>
      
      <div class="mySlides fade">
          <img src="p1img4.jpg" style="width:80%;">
        </div>
      
      <div class="mySlides fade">
          <img src="p1img1.jpg" style="width:80%">
        </div>
      </div>
      <br>
      
      <div style="text-align:center">
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span> 
        </div>
</div> 
       
</div>
</div> 


<div class="text" style="display: flex;flex-direction: row; justify-content: center;text-align: center;margin-left: 90px;" >
  <div>
  <h1>India's Largest Food Gram Platform</h1>
  <p>Connecting cokking tips Seekers with tips and processes Providers.</p>
  <button id="but" type="submit">Know more About this platform ➡️</button><br><br>
  <p>To access the platform please Register:</p>
  <button id="sign" type="submit">click to <spa style="color: darkorange">SignUp</spa> ➡️</button><br>
  </div>
  <div><img src="chef.png"></div>
</div>

      <script>

let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1000); // Change image every 2 seconds
}


        document.getElementById("but").addEventListener("click", function() {
            window.location.href = "about.html"; // Replace with the desired URL
        });

        document.getElementById("sign").addEventListener("click", function() {
            window.location.href = "signup.html"; // Replace with the desired URL
        });
    </script>
</body>
</html>
