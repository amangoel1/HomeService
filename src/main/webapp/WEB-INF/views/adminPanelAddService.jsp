<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%> 
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HomeService</title>
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
        <nav class="navbar  navbar-custom navbar-dark navbar-expand-lg  fixed-top "  >
            <div class="logo">
            <a href="adminPanel.html">
                <img  src="resources/images/admin-logo.png" />
                </a>
            </div>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                                <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                    </li>
                        
                    <li class="nav-item ">
                      <input class=" search mx-2 " type="search" placeholder="Search" aria-label="Search"><a><i id="nav_search_icon" class="fa fa-search" href="search.html"></i></a>
                    </li>

                 

                  </ul>
                  
                    <form class="form-inline my-2 my-lg-0 ">

                        
                        <a href="logout.html" class="btn btn-primary  logout-btn btn-sm">
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

                  <a href="adminPanel.html" class="active">Dashboard</a>
                  <a href="adminPanelProfile.html" > Profile</a>
                  
                  <a href="adminPanelService.html">Services</a>
                  <a href="adminPanelRequest.html">Requests</a>
                  
              </div> 
              

                

              
                    
                
               <div class="content " >
                   
                 <div class="jumbotron col-6 mx-auto add-service-form " >
                        
                    <form action="adminPanelAddService.html" class="col-11 mx-auto " method="post" >
                        <h2 style="position: relative; top:-25px"><b>Add Service:</b></h2>
                        <div class="form-group ">
                            <input type="text" class="form-control service-field" name="serviceName" required >
                            <span class="floating-label">Service Name</span>
                        </div>
                        <div class="form-group">
                          
                         <textarea   class="form-control service-field" id="description" name="serviceDetails" required ></textarea>
                         <span class="floating-label">Service Details</span>
                        </div>
                        <div class="form-group">
                                
                                <input type="text" class="form-control service-field" name="price" required >
                                <span class="floating-label">Service Price</span>
                        </div>
                     
                        <button type="submit" class="btn btn-warning mt-3  text-dark">Submit</button>
                      </form>
                    </div> 
                    
                </div>
                
            </c:if>
 
   <c:if test="${empty admin.adminId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if>

              </body>
</html>