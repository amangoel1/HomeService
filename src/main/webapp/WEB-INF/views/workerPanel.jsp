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
    <title>HomeService</title>
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
        <nav class="navbar  navbar-custom navbar-dark navbar-expand-lg  fixed-top " >
            <div class="logo">
            <a href="workerPanel.html">
                <img  src="resources/images/worker-logo.png" />
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
                  </ul>
                  
                    <form class="form-inline my-2 my-lg-0 ">

                       
                        <div class="btn-group show-on-hover mr-1"   >
                            <button type="button" class="btn btn-Dark " data-toggle="dropdown" >
                                    <a href="#" class="notification mg-35 ">
                                            <span><i class="fa fa-bell"></i></span>
                                            <span class="badge">0</span>
                                    </a>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" style="padding: 25px; background-color: rgb(88, 103, 133);max-height:350px;overflow-y: auto;"  role="menu">
                                <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                <hr>
                                <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color:white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                        </ul>
                        </div>
                        <a href="logout.html" class="btn btn-worker logout-btn btn-sm">
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
                  <img src="resources/images/profile.png"  class="profile_pic"> <label class="p-2">${worker.firstName} <br><small>Worker</small> </label>
                  </div>

                  <a href="workerpanel.html" class="active">Dashboard</a>
                  <a href="workerPanelProfile.html" > Profile</a>
                  
                  
              </div> 
              

                

              
                    
                
               <div class="content " >
               <div class="table-responsive scroll">  
                <div class="top-head-table border"> Requests for work <br> 
                </div>
                   
                 <table class="table w-75 ">
                    <thead  >
                      <tr>
                        <th scope="col">User</th>
                        <th scope="col">Time</th>
                        <th scope="col">Date</th>
                        <th scope="col">Description</th>
                        <th scope="col">Locality</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach  var="work"  items= "${workList}">
                      <tr>
                        <td ><a href="viewUserProfile.html?userId=${work.userId}">${work.userId} </a></td>
                        <td>${work.time}</td>
                        <td>${work.date}</td>
                        <td>${work.description }</td>
                        <td> ${work.locality} </td>
                      </tr>
                     </c:forEach>
                      </tbody>
                  </table>
                </div> 
             </div>
                   </c:if>
 
   <c:if test="${empty worker.workerId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if> 

              </body>
</html>