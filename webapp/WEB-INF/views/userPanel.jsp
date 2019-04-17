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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="resources/css/userStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="resources/js/adminPanel.js"></script>

</head>

<body >
<c:if test="${not empty user.userId}">

    <div>
        <nav class="navbar  navbar-custom navbar-dark navbar-expand-lg  fixed-top "  >
          <a href="userPanel.html">  <div class="logo">
          <a href="userPanel.html">
                <img  src="resources/images/aboutus.png" />
                </a>
            </div>
            </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li>
                                <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                    </li>
                        
                   
                  </ul>
                  
                   <!--  <form class="form-inline my-2 my-lg-0 ">
                        <input class="search " type="search" placeholder="Search" aria-label="Search"><a><i id="nav_search_icon" class="fa fa-search" href="search.html"></i></a>
 -->
                        <!-- <div class="btn-group show-on-hover mr-5"  >
                            <button type="button" class="btn btn-default " data-toggle="dropdown">
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
                        </div> -->
                    
                        
                        <a href="logout.html" class="btn  logout-btn btn-sm">
                            <span class="fa fa-sign-out my-2 mr-3"></span> Log out
                        </a>
                            
                   <!--  </form> -->
                 
                </div>
              </nav>
        </div>
              
              <button class="toggle_btn hide-large" onclick="openSidebar()" >&#9776;</button>
              <div class="sidenav sidenav-collapse  "  id="mySidenav">
                
 <a href="javascript:void(0)" class="closebtn hide-large" onclick="closeSidebar()" >&times;</a>                  <div class="d-inline-flex  "> 
                  <img src="resources/images/profile.png"  class="profile_pic"> <label class="p-2">${user.firstName} <br><small>User</small> </label>
                  </div>

                  <a href="userPanel.html">Dashboard</a>
                  <a href="userPanelProfile.html">Profile</a>
                  <a href="userRequestStatus.html">Request status</a>
              </div> 

               <div class="content" >
                 
                <div class="top-head-table border"> List of Services Available <br> <small>Recently added</small></div>
                <table  border="2" class="  w-75 " style="margin-left: 15%;">
                    <tr style="background-color: red">
                        <th>Service Name</th>
                        <th>Click to see</th>
                    </tr>
                    <tr style="background-color: white">
                        <td>Electrician</td>
                        <td><button type="button" class="w-100" style="background-color: white" data-toggle="modal" data-target="#Electrician">
                                Avail Service
                              </button>
                            </td>
                    </tr>

                    <tr style="background-color: white">
                            <td>Plumber</td>
                            <td><button type="button" class="w-100" style="background-color: white" data-toggle="modal" data-target="#Plumber">
                                    Avail Service
                                  </button>
                                </td>
                        </tr>

                        <tr style="background-color: white">
                                <td>Mechanic</td>
                                <td><button type="button" class="w-100" style="background-color: white" data-toggle="modal" data-target="#Mechanic">
                                       Avail Service
                                      </button>
                                    </td>
                            </tr>
                </table>
       
                </div> 
             <!--Electrician model-->

                <div  class="modal fade"   id="Electrician">
                        <div class="modal-dialog modal-dialog-centered">
                          <div class="modal-content">
                          
                            <!-- Modal Header -->
                            <div class="modal-header">
                              <h4 class="modal-title">Electrician Details</h4>
                               <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <!-- Modal body -->
                            <table border="3"  style="margin-left: 10%; margin-right: 10% ">
                                    <tr>
                                        <th>Service Name</th>
                                        <th>Service Details</th>
                                        <th>Prize</th>
                                        <th>Available time</th>
                                    </tr>
                                    <tr style="background-color: white">
                                        <td>Electrician</td>
                                        <td>Installation, Repair, Upgrades, Replacement, solution</td>
                                        <td>100/hour</td>
                                        <td>9AM-6PM</td>
                                    </tr>
                            </table> 
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <a href="request.html?service=E"><input type="button" value="Request" style="background: red"></a>
                              </div>
                            
                          </div>
                        </div>
                      </div>
                      
              <!--Plumber model-->

              <div  class="modal fade" id="Plumber">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                      
                        <!-- Modal Header -->
                        <div class="modal-header">
                          <h4 class="modal-title">Plumbing service Details</h4>
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        
                        <!-- Modal body -->
                        <table border="3"   style="margin-left: 10%; margin-right: 10%">
                                <tr>
                                    <th>Service Name</th>
                                    <th>Service Details</th>
                                    <th>Prize</th>
                                    <th>Available time</th>
                                </tr>
                                <tr style="background-color: white">
                                    <td>Plumbing</td>
                                    <td>Installation, Repair, Upgrades, Replacement, solution</td>
                                    <td>150/hour</td>
                                    <td>9AM-6PM</td>
                                </tr>
                        </table> 
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <a href="request.html?service=P"><input type="button" value="Request" style="background: red"></a>
                          </div>
                        
                      </div>
                    </div>
                  </div>
                  

                    <!--Mechanic model-->

                <div  class="modal fade" id="Mechanic">
                        <div class="modal-dialog modal-dialog-centered">
                          <div class="modal-content">
                          
                            <!-- Modal Header -->
                            <div class="modal-header">
                              <h4 class="modal-title">Mechanic Service Details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <!-- Modal body -->
                            <table border="3"   style="margin-left: 10%; margin-right: 10%">
                                    <tr>
                                        <th>Service Name</th>
                                        <th>Service Details</th>
                                        <th>Prize</th>
                                        <th>Available time</th>
                                    </tr>
                                    <tr style="background-color: white">
                                        <td>Mechanic</td>
                                        <td>Installation, Repair, Upgrades, Replacement, solution</td>
                                        <td>200/hour</td>
                                        <td>9AM-6PM</td>
                                    </tr>
                            </table> 
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <a href="request.html?service=M"><input type="button" value="Request" style="background: red"></a>
                              </div>
                            
                          </div>
                        </div>
                      </div>
                      </c:if>
 
   <c:if test="${empty user.userId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if> 
              </body>
</html>