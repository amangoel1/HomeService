<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register-User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="resources/css/registrationStyles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="resources/js/validation.js" type="text/javascript"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background-color:black; opacity:0.9;"  >
        <div class="logo">
            <img  src="resources/images/aboutus.png" height="60px" width="60px"/>
        </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li>
                            <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                </li>
                    
               
              </ul>
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
    
     <c:if test="${error == 'Email Id Already Exists!!'}">
         <script>

  alert("Email Id already Exists ! Please try with a different email");

</script>
         </c:if>
          
          
        <form action="registerUser.html" method="post" onsubmit="return validation()">  
          <div class="container">
            <div class="row">
                <div class="col-md-10 offset=md-1">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <img src="resources/images/aboutus.png"/>
                            <h3>Join us</h3>
                            <p>Get homeservices</p>
                            <button type="button" class="btn btn-primary">About us</button>
                        </div>
                        <div class="col-md-7 register-right">
                            <h2>Register Here</h2>
                            <div class="register-form">
                                <div class="form-group">
                                    <input required  type="text" name="firstName" id="firstName" value="${user.firstName }" class="form-control" placeholder="First name"/>
                                    <span id="fname" class="text-danger font-weight-bold"></span>
                                  </div>
                                <div class="form-group">
                                    <input required type="text" name="lastName" id="lastName" value="${user.lastName }" class="form-control" placeholder="Last name"/>
                                    <span id="lname" class="text-danger font-weight-bold"></span>
                                </div>
                                <div class="form-group">
                                    <input required  type="text" name="email" id="email"  class="form-control" placeholder="Email"/>
                                    <span id="emailId" class="text-danger font-weight-bold"></span>
                                </div>
                                <div class="form-group">
                                    <input required type="text" name="contactNumber"  id="contactNumber" value="${user.contactNumber }"  class="form-control" placeholder="Contact"/>
                                    <span id="contactNo" class="text-danger font-weight-bold"></span>
                                   <!-- // minlength=10 maxlength=10 -->
                                  </div>
                                <div class="form-group">
                                    <input required type="password"  name="pwd" id="pwd" class="form-control" placeholder="Password"/>
                                    <span id="password" class="text-danger font-weight-bold"></span>
                               </div>
                                <div class="form-group">
                                    <input required type="password" name="conpswd"  id="conpwd" class="form-control" placeholder="Re-Enter Password"/>
                                    <span id="confirmpwd" class="text-danger font-weight-bold"></span>
                                  </div>
                              
                                <input type="submit" name="submit" value="Register" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </form>  
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