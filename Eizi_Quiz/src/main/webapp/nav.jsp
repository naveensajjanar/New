
    <nav>
     
<div class="main">
        <ul>
            <li><a href="HomePage.jsp">HOME</a></li>
            <li><a href="aboutus.jsp">ABOUT US</a></li>
            <li><a href="product.jsp">PRODUCTS</a></li>
           
            <li><a href="contact.jsp">CONTACT US</a></li>
          
           <!--  <li><a href="tour.jsp">TOUR</a> -->
           <div class="dropdown">
                <li id="list">TOUR</li>
                <div class="dropdown-options">
                <a href="adminLogin.jsp">Admin</a>
                  <hr>
                  <a href="index.jsp">User Section</a>
                </div>
              </div>
            

        </ul>
        
   
       
</div>
 </nav>
<style>
    .dropdown {
  display: inline-block; 
  position: relative;
  cursor:pointer;
}

#list{
  /* border:none;
  background-color: transparent;
  border-radius:5px;
  padding:15px 30px;
  font-size:15px; 
  cursor:pointer;*/
  
  
   font-size: 15px;
    text-transform: uppercase;
    padding: 0px 30px;
    color:rgb(69, 25, 25);
    text-decoration: none;
    cursor:pointer;
     padding-top: 7px;
      padding-bottom: 7px;
  

}

#list:hover{
   /* background-color: aliceblue;
    color:orange;
    font-size: 20px;
   border-radius:5px;*/
   
   background-color: aliceblue;
    color:orange;
    font-size: 17px;
    border-radius:10px;
    box-sizing: 40px;
   
}

.dropdown-options {
  display:none;
 position: absolute;
  overflow: auto;
  background-color:#fff;
  border-radius:5px;
  box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.4);
}

.dropdown:hover .dropdown-options {
  display:block;
}

.dropdown-options a {
  display: block;
  color: #000000;
  padding: 5px;
  text-decoration: none;
/*   padding:20px 40px;*/
}

.dropdown-options a:hover {
  color: #32c2b4;
  /* background-color: #ddd; */
  border-radius:5px;
}




.main{
    display: flex;
    justify-content: center;
    margin-top:0.5%;
    background-image:linear-gradient(#08B8BE, #08B8BE);
    box-shadow:  0 8px 8px 0 rgba(0, 0, 0, 0.5);
}
 nav ul{
    float:right;
}
nav li{
    display: inline-flex;
    list-style: none;
}
nav li a{
    font-size: 15px;
    text-transform: uppercase;
    padding: 0px 30px;
    color:rgb(69, 25, 25);
    text-decoration: none;
}
ul li a:hover
{
    background-color: aliceblue;
    color:orange;
    font-size: 17px;
    border-radius:10px;
    box-sizing: 20px;
    
    padding-top: 7px;
      padding-bottom: 7px;
    
    }



  </style>



 




 
