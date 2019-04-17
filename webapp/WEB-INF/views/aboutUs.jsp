<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About-Us</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<style>
    .contact-input
{
border-radius: 24px;
padding: 6px 12px;
margin:10px 0;
border: 1px solid gray;
}

</style>
<body>
    <nav class="navbar navbar-dark navbar-custom navbar-expand-lg  sticky-top"  >
        <div class="logo">
        <a href="index.html">
            <img  src="resources/images/aboutus.png" />
            </a>
        </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li>
                            <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                </li>
                    
                <li class="nav-item ">
                        <select style=" margin:18px" class="search-drop">
                            <option selected disabled >Search location</option>
                            <option >Hinjawadi</option>
                            <option >Baner</option>
                            <option >Pune</option>
                            <option >Wakad</option>
                        </select>
                </li>
              </ul>
                <form class="form-inline my-2 my-lg-0 ">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"><a id="nav_search_icon" class="fa fa-search" href="search.html"></a>
                    </form>
                    <form class="form-inline my-2 my-lg-0 ">
                    <div class="dropdown">
                      <button type="button" style="background-color: orange;" class="btn dropdown-toggle" data-toggle="dropdown">
                       Login/Register
                      </button>
                      <div class="dropdown-menu" style="background-color: rgb(231, 231, 218)">
                        <a class="dropdown-item" href="loginAdmin.html">Admin</a>
                        <a class="dropdown-item" href="loginUser.html">User</a>
                        <a class="dropdown-item" href="loginWorker.html">Worker</a>
                      </div>
                    </div>
                </form>
            </div>
          </nav>
        <div class="col-10 mx-auto my-5">
          <h1  class="text-right">About Us</h1>
          <hr>
          <p>Home service is a online platform to provide domestic services like electrician,plumbing and so on.
            It provides service based on location you are looking for.   </p>
            <p>
                We provide registration for the worker, who want his service to reach customer through this portal.
            </p>

            <h1  class="text-right">How we work ?</h1>
          <hr>
          <p>Admin is responisble for mapping user request with the available worker.</p>
            <p>
               User must need to signup to request  the service.
            </p>

            <h1  class="text-right">Reach out to us</h1>
          <hr>
          <div class="row my-5">
            <div class="text-center col-4">
                <i class=" fa fa-phone fa-2x"></i><br> <span>+91 72345 54321</span>
            </div>
             <div class="text-center col-4">
                <i class=" fa fa-envelope-o fa-2x"></i><br> <span>admin.main@hs.com</span>
            </div>
            <div class=" text-center col-4">
                <i class=" fa fa-map-marker fa-2x"></i><br> <span>CDC building,phase 3  Hinjawadi, Pune</span>
            </div>
        </div>
            

       
        </div>
        <div class="row">
            <div class="col-4 offset-1 my-5">
                    <iframe src="https://maps.google.com/maps?q=18.5952073,73.689784&hl=es;&z=14&amp;output=embed" width="100%" height="325" frameborder="0" style="border:0"></iframe>
            </div>

        <div class="col-6 ">
        <form action="/action_page.php" >
            <h2 class="text-center text-white" >Contact Us</h2>
            <hr >
             
            <div class="row">
              <div class="col-1 offset-1 text-center my-2 " style="width:50px"><i class=" fa fa-user fa-2x"></i></div>
                <div class="col-10">
                  <input class="contact-input col-11" name="first" type="text" placeholder="Name">
                </div>
            </div>
            
            <div class="row">
              <div class="col-1 offset-1  text-center my-2" style="width:50px"><i class=" fa fa-envelope-o fa-2x"></i></div>
                <div class="col-10">
                  <input class="contact-input col-11" name="email" type="text" placeholder="Email">
                </div>
            </div>
            
            <div class="row">
              <div class="col-1 offset-1 text-center my-2" style="width:50px"><i class=" fa fa-phone fa-2x"></i></div>
                <div class="col-10">
                  <input class="contact-input col-11" name="phone" type="text" placeholder="Phone">
                </div>
            </div>
            
            <div class="row">
              <div class="col-1 offset-1 text-center my-2" style="width:50px"><i class=" fa fa-pencil fa-2x"></i></div>
                <div class="col-10">
                  <textarea class=" col-11" name="message"  placeholder="Message"></textarea>
                </div>
            </div>
            
            <div class="row my-4">
            
            <button class="col-2  offset-9 btn btn-warning"> Send </button>
            </div>
            </div>
            </form>
        </div>
    </div>

    <footer class="page-footer font-small special-color-dark pt-4"  >
            <!-- Footer Elements -->
            <div class="container">
        
              <!-- Social buttons -->
              <ul class="list-unstyled list-inline text-center">
                <li class="list-inline-item">
                  <a class="btn-floating btn-fb mx-1">
                    <i class="fa fa-twitter fa-2x"> </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-gplus mx-1">
                    <i class="fa fa-facebook fa-2x"> </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-li mx-1">
                    <i class="fa fa-instagram fa-2x"> </i>
                  </a>
                </li>
              
              </ul>
              <!-- Social buttons -->
        
            </div>
            <!-- Footer Elements -->
        
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© HomeService 2019 
            </div>
            <!-- Copyright -->
        
          </footer>
          <!-- Footer -->
        



         
    </body>
    </html>
