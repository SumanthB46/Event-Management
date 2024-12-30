<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <!-- Demo styles -->
  <style>
    
      body {
      background: black;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;  
           }
          .logo1 img{
          height:80px;
          width:70px;
          margin-left:20px;
          }
          .logo1 img:hover{
          transform:scale(1.8);
          }
          
          .Eventname{
          margin-left:10px;
          margin-top:20px;
          }
          
          
       .swiper {
      width: 100%;
      height: 100%;
      background-color:black;
    }
    .swiper-slide {
      background-position: center;
        height:80%;
    }

    .swiper-slide img {
      height:640px;
      width:100%;
      
      
          }
    .Header{
        display: flex;
       background-color: #333;
        color: white;  
    		}
    h1{
        color: blue;
    }
    .parent{
        display: flex;
        margin-left: 22%;
        margin-top: 20px;
        gap: 30px;  
         
    }  
    .parent a {
   			display: flex;
            color: white;
            text-decoration: none;
            margin: 5px 5px;
            padding: 8px 15px;
            border-radius: 5px;
             font-size: large;
        }
     .parent a:hover {
            background-color: #575757;
        }
     span{
      color: gold;
    }
    h1{
       color: white;
    }
   
  
    
    
    @media (max-width: 980px) {
    .Header {
        flex-direction: column;
        display:flex;
       
    }

    .Header h1 {
        margin-bottom: 10px;
              }

    .Header .parent {
        flex-wrap: wrap;
               gap: 4px;
               margin-left:0px;
    }

    .Header .parent a {
        font-size: 0.9rem;
         display:flex;      
    }
}.service {
  background-color: black;
  margin: 0;
  padding-bottom: 20px;
}

.spn-1 {
  display: flex;
  justify-content: center;
}

.ser-1 {
  color: red;
}

.service h1 {
  font-family: "Lucida Handwriting", cursive;
  font-size: 2rem;
}

.service .box-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
  gap: 1.5rem;
}

.service .box {
  border-radius: 0.5rem;
  background: #333;
  text-align: center;
  margin: 0 20px;
  transition: transform 0.3s ease;
}

.service .box:hover {
  transform: translateY(-6px);
}

.service .box img {
  width: 100%;
   object-fit: cover;
}
.service .slogo{
display:flex;
align-items: center; 
 justify-content: center;
 height:100px;
}
.slogo:hover{
filter:drop-shadow(1px 10px 15px rgba(250,113,33,0.925))
}
.service .box h3 {
  font-size: 1.4rem;
  color: #fff;
  padding: 1rem 0;
  transition: color 0.3s ease;
}

.service .box h3:hover {
  color: red;
}

.service .box p {
  font-size: 1rem;
  color: #eee;
  line-height: 1.2;
}

.Gallery {
    background-color: black;
    margin-top: 0; /* Ensures no gap above the section */
}
.Gallery .box-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); 
    gap: 30px; 
    max-width: 1200px;
    margin: 0 auto; /* Center the container */
}
.Gallery .box img {
    width: 400px;
    height: 300px; /* Maintain aspect ratio */
    display: block;
    transition: transform 0.3s ease; /* Smooth hover effect */
}
.Gallery .box{
margin-top:20px;
}
.Gallery h1{

}
.Gallery .box img:hover {
    transform: scale(1.05); 
}
.Galname{
display:flex;
justify-content: center;
font-size:2rem;
margin-top:20px;

}
.Galname .spn-2{
color:purple;
}




.About .aboutus {
font-family: "Lucida Handwriting", cursive;
  color: red;
   font-size: 2rem;
  display: flex; /* Enable Flexbox */
  align-items: center; /* Center content vertically */
  justify-content: center; /* Center content horizontally */
}



.About .about-us{
color:white;
display:flex;
font-size: 2rem;
margin:20px 30px;
 font-family: 'Times New Roman', Times, serif; 
}

.media-container {
   display: flex;
  gap: 20px; 
  align-items: center; 
  justify-content: center;
}

.media-container img{

margin-left:20px;
width:600px;
}
.media-container video {
  width: 100%;
  height: auto;
  flex: 1; /* Makes the image and video take equal space */
  margin-right:40px;
  
}

.media-container img {
  object-fit: cover; /* Ensures the image fits nicely within its container */
}

.media-container video {
  max-height: 400px; /* Optional: Restricts the height of the video */
}


   </style>
<body>
    <section class="Header">
   <div class="logo1">
    <img src="./images/logo1.jpg" alt="logo">
    </div>
     <div class="Eventname">
    <h1>Epic<span>Vents</span></h1>
    </div>
        <div class="parent">
        <a href="#home">Home</a>
        <a href="#service">Services</a>
        <a href="#Gallery">Gallery</a>
        <a href="#About">About</a>
        <a href="#contact">Contact</a>
        <a href="login.jsp">Login</a>
        
        
        <% if (session.getAttribute("uname") != null) {%>
            <li><a href="register?logout=yes">Logout</a></li>
            <li><i class="fa fa-user-circle" aria-hidden="true"></i>
            <%=session.getAttribute("uname")%></li>	
            <%}%>
        </div>
    </section>
    
    
  <!-- Swiper -->
    <section class="Home" id="home">
  <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <img src="./images/indexbg.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="./images/index1.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="./images/index2.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="./images/index3.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="./images/index4.jpg" />
      </div>
     </div>
    
  </div>
  </section>
  <section class="service" id="service">
    <div class="spn-1">
        <h1>We<span class="ser-1">Arrange</span></h1>
            </div>
            <div class="slogo">
        <img src="./images/services/wee.png" alt="">
        </div>
    <div class="box-container">
        <div class="box">
            <img src="./images/services/card2.webp" alt="">
            <h3>CORPORATE EVENT</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
        <div class="box">
            <img src="./images/services/card3.webp" alt="">
            <h3>WEDDING EVENT</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
        <div class="box">
            <img src="./images/services/card1.webp" alt="">
            <h3>BIRTHDAY EVENT</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
        <div class="box">
            <img src="./images/services/card4.jpg" alt="">
            <h3>FLOWER BOUQUET</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
        <div class="box">
            <img src="./images/services/card5.jpg" alt="">
            <h3>Party & Events </h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
        <div class="box">
            <img src="./images/services/card6.jpg" alt="">
            <h3>PhotoShoot</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, suscipit.</p>
        </div>
     </div>
</section>



<section class="Gallery" id="Gallery">
    <div class="Galname">
        <h1>OUR<span class="spn-2">Gallery</span></h1>
    </div>
    <div class="box-container">
        <div class="box">
            <img src="./images/Galleryimg1.jpg" alt="Gallery Image 1">
        </div>
        <div class="box">
            <img src="./images/Galleryimg2.jpg" alt="Gallery Image 2">
        </div>
        <div class="box">
            <img src="./images/Galleryimg3.jpg" alt="Gallery Image 3">
        </div>
        <div class="box">
            <img src="./images/Galleryimg4.jpg" alt="Gallery Image 4">
        </div>
        <div class="box">
            <img src="./images/Galleryimg5.jpg" alt="Gallery Image 5">
        </div>
        <div class="box">
            <img src="./images/Galleryimg6.jpg" alt="Gallery Image 6">
        </div>
    </div>
</section>
    
    <section class="About" id="About">
    <h1 class="aboutus">About Us</h1>
    <div class="media-container">
      <img src="./images/indexbg.jpg" alt="Sample Image">
      <video controls>
        <source src="./images/services/aboutus.mp4" type="video/mp4">
         </video>
         
    </div>
    <div class="about-us">
         <p class="about-us">We endeavor to define an efficient plan of action that would achieve the goals and objectives set by its client in developing and producing successful events. We are committed to provide excellent quality service and generate the most creative and innovative ideas, with commitment and dedication to provide our clients with the finest personalized events they have aspired for.
            With years of experience in the event industry, Utsav Event Planner stands on a stronger base with the most creative, enthusiastic and committed team members, who have developed their expertise in the wedding industry.</p>
        </div>
  </section>
    
    
    
   <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js">
   </script>
  <!-- Initialize Swiper-->
  <script>
  var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      effect: "fade",
      loop:true,
      autoplay: {
       delay:1000,disableOnInteraction:false,
      },
    });
  </script>
</body>
</html>