<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.5/css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    
    <link rel="stylesheet" href="resources/css/adminStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="resources/js/adminPanel.js"></script>

</head>

<body class="worker-body">
<c:if test="${not empty worker.workerId}">

    <div>
      
            <nav class="navbar  navbar-custom navbar-dark navbar-expand-lg  fixed-top "  >
            <div class="logo">
                    <a href="workerPanel.html">
                <img  src="resources/images/worker-logo.png" />
                </a>
            </div>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li>
                                <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                    </li>
                        
                   

                  </ul>
                  
                    <form class="form-inline my-2 my-lg-0 ">

                        <a href="logout.html" class="btn btn-warning  logout-btn btn-sm">
                            <span class="fa fa-sign-out my-2 mr-3"></span> Log out
                        </a>
                            
                    </form>
                 
                </div>
              </nav>
        </div>
              
             

              <div class="content " style="margin-left: 10%; margin-top: 20px" >
                <div class=" container col-sm-12 details border">
                    
                    <h2 > User Profile</h2>
                    <div class"container" >
                        <form>
                            <div class="row m-3 ">
                              <div class="col">
                                <label name="name" class="form-control border-bottom" value="firstName">${worker.firstName}</label>
                              </div>
                              <div class="col">
                                <label name="name" class="form-control border-bottom" value="lastName">${worker.lastName}</label>
                              </div>
                            </div>
                            <div class="row mx-3">
                                <div class="col">
                                    <label name="name" class="form-control border-bottom" value="contactNumber">${worker.contactNumber}</label>
                                </div>
                                <div class="col">
                                    <label name="name" class="form-control border-bottom" value="email">${worker.email}</label>
                                </div>
                            </div >
                            <div class="row m-3">
                                <div class="col">
                                    <label name="name" class="form-control border-bottom" value="Name">${worker.locality}</label>
                                </div>
                            </div>

                         
                          </form>
                            
                    </div>
                
                </div>
                  
                <div class="card">
                            <img src="resources/images/cover_image.png" alt="John" style="width:100%">
                            <img src="resources/images/profile.png" class="profile">
                            <h1>${worker.firstName }</h1>
                            <p class="title">${worker.skills } </p>
                            <p>${worker.locality }</p>
                            <div style="margin: 24px 0;">
                              
                              <a href="#"><i class="fa fa-twitter"></i></a>  
                              <a href="#"><i class="fa fa-linkedin"></i></a>  
                              <a href="#"><i class="fa fa-facebook"></i></a> 
                            </div>
                            <p><button class="bottom-btn">${worker.contactNumber} </button></p>
                          </div>
              </div> 
             
            </c:if>
 
   <c:if test="${empty worker.workerId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if> 

              </body>
</html>