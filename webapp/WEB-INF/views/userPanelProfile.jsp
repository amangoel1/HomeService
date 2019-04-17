<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HomeService</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="resources/css/userStyles.css">
    <link rel="stylesheet" href="resources/css/adminStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="resources/js/adminPanel.js"></script>
    <script src="resources/js/validation.js" type="text/javascript"></script>
    

</head>

<body >
<c:if test="${not empty user.userId}">

    <div>
        <nav class="navbar  navbar-custom navbar-dark navbar-expand-lg  fixed-top "  >
            <div class="logo">
            <a href="userPanel.html">
                <img  src="resources/images/aboutus.png" />
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
                        <input class="search " type="search" placeholder="Search" aria-label="Search"><a><i id="nav_search_icon" class="fa fa-search" href="search.html"></i></a>

                       <!--  <div class="btn-group show-on-hover" >
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    <a href="#" class="notification mg-35 ">
                                            <span><i class="fa fa-bell"></i></span>
                                            <span class="badge">0</span>
                                    </a>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" style="padding: 25px; background-color: rgb(88, 103, 133)"  role="menu">
                                    <li style="width:250px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                    <hr>
                                    <li style="width:250px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                     <hr>
                                     <li style="width:250px;"><a href="#" style="color:white" >Irfan has accept your request</a></li>
                                     <hr>
                                     <li style="width:250px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                     <hr>
                                     <li style="width:250px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                    </ul>
                    </div> -->
                    
                        
                        <a href="logout.html" class="btn logout-btn btn-sm">
                            <span class="fa fa-sign-out my-2 mr-3"></span> Log out
                        </a>
                            
                    </form>
                 
                </div>
              </nav>
        </div>
              
              <button class="toggle_btn hide-large" onclick="openSidebar()" >&#9776;</button>
              <div class="sidenav sidenav-collapse  "  id="mySidenav">
                
                  <a href="javascript:void(0)" class="closebtn hide-large" onclick="closeSidebar()" >&times;</a>
                  <div class="d-inline-flex  "> 
                  <img src="resources/images/profile.png"  class="profile_pic"> <label class="p-2">${user.firstName } <br><small>User</small> </label>
                  </div>

                  <a href="userPanel.html">Dashboard</a>
                  <a href="userPanelProfile.html">Profile</a>
                  <a href="userRequestStatus.html">Request status</a>
              </div> 
              <div class="content " >
                    <div class=" container  details border ">
                        
                        <h2 > Update Details</h2>
                        <div class"container " >
                            <form action="updateUser.html" method="post" onsubmit="return validateUpdateform()" >
                                <div class="row m-3 ">
                                  <div class="col">
                                    <input readonly type="text" name="firstName" id="firstName" value=${user.firstName } class="form-control border-bottom" placeholder="First name">
                                 <span id="fname" class="text-danger font-weight-bold"></span>
                                  </div>
                                  <div class="col">
                                    <input readonly type="text" name="lastName" id="lastName" value=${user.lastName } class="form-control border-bottom" placeholder="Last name">
                                 <span id="lname" class="text-danger font-weight-bold"></span>
                                  </div>
                                </div>
                                <div class="row mx-3">
                                    <div class="col">
                                      <input type="text" name="contactNumber" id="contactNumber" value=${user.contactNumber } class="form-control border-bottom" placeholder="Contact">
                                      <span id="contactNo" class="text-danger font-weight-bold"></span>
                                    </div>
                                    <div class="col">
                                      <input type="text" name="email" id="email" value=${user.email } class="form-control border-bottom" placeholder="Email" readonly>
                                    <span id="emailId" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div >
                      
    							<div class="row m-3">
                                    <div class="col">
                                            <input required type="password" name="pwd" id="pwd" class="form-control border-bottom" placeholder="Current Password">
                                    <span id="password" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div>
                                <div class="row mx-3">
                                    <div class="col ">
                                       <button type="submit" class="btn btn-primary update-profile ">Update Profile</button>
                                    </div>
                                </div>
                                
                              </form>
                                
                        </div>
                    
                    </div>
                      
                    <div class="card">
                                <img src="resources/images/cover_image.png" alt="John" style="width:100%">
                                <img src="resources/images/profile.png" class="profile">
                                <h1>${user.userId }</h1>
                                <p class="title">User</p>
                                <p></p>
                                <div style="margin: 24px 0;">
                                  
                                  <a href="#"><i class="fa fa-twitter"></i></a>  
                                  <a href="#"><i class="fa fa-linkedin"></i></a>  
                                  <a href="#"><i class="fa fa-facebook"></i></a> 
                                </div>
                                <p><button class="bottom-btn">${user.contactNumber }</button></p>
                              </div>
                  </div> 
                 
              </c:if>
 
   <c:if test="${empty user.userId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if> 
              </body>
</html>