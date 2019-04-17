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
    <script src="adminPanel.js"></script>
    
    <script type="text/javascript">

window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    // Handle page restore.
	    window.location.reload();
	  }
	});

</script>

</head>

<body class="admin-body">
<c:if test="${not empty admin.adminId}">

    <div>
      
            <nav class="navbar  navbar-dark navbar-custom  navbar-expand-lg  fixed-top "  >
            <div class="logo">
                    <a href="adminpanel.html">
                <img  src="resources/images/admin-logo.png" />
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
                        
                    <li class="nav-item ">
                      <input class=" search " type="search" placeholder="Search" aria-label="Search"><a><i id="nav_search_icon" class="fa fa-search" href="search.html"></i></a>
                    </li>

                 

                  </ul>
                  
                    <form class="form-inline my-2 my-lg-0 ">

                        
                        <a href="logout.html" class="btn btn-primary logout-btn btn-sm">
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
                  <img src="resources/images/profile.png"  class="profile_pic"> <label class="p-2">${admin.firstName} <br><small>Admin</small> </label>
                  </div>

                  <a href="adminPanel.html" active>Dashboard</a>
                  <a href="#" class="active">Profile</a>
                  <a href="adminPanelService.html">Services</a>
                  <a href="adminPanelRequest.html">Requests</a>
                  
              </div> 

              <div class="content " >
                <div class=" container col-sm-12 details border">
                    
                    <h2 > Update Details</h2>
                    <div class"container">
                        <form action="updateAdmin.html" method="post">
                            <div class="row m-3 ">
                              <div class="col">
                                <input type="text" class="form-control border-bottom" placeholder="First name" value="${admin.firstName }">
                              </div>
                              <div class="col">
                                <input type="text" class="form-control border-bottom" placeholder="Last name" value="${admin.lastName}">
                              </div>
                            </div>
                            <div class="row mx-3">
                                <div class="col">
                                  <input type="text" class="form-control border-bottom" placeholder="Contact" value="${admin.contactNumber}">
                                </div>
                                <div class="col">
                                  <input type="text" class="form-control border-bottom" placeholder="Email" value="${admin.email}" >
                                </div>
                            </div >
                        <div class="row mx-3">
                                <div class="col ">
                                   <button type="submit" class="btn btn-primary update-profile ">Update Profile</button>
                                </div>

                          </form>
                            
                    </div>
                
                </div>
                  
                <div class="card">
                            <img src="resources/images/cover_image.png" alt="John" style="width:100%">
                            <img src="resources/images/profile.png" class="profile">
                            <h1>${admin.firstName }</h1>
                            <p class="title">Admin, </p>
                            <p>HomeService</p>
                            <div style="margin: 24px 0;">
                              
                              <a href="#"><i class="fa fa-twitter"></i></a>  
                              <a href="#"><i class="fa fa-linkedin"></i></a>  
                              <a href="#"><i class="fa fa-facebook"></i></a> 
                            </div>
                            <p><button class="bottom-btn">${admin.contactNumber} </button></p>
                          </div>
              </div> 
             
            </c:if>
 
   <c:if test="${empty admin.adminId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if>

              </body>
</html>