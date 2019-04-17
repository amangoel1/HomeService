<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%> <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HomeService- Search Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<c:if test="${not empty admin.adminId}">

    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background-color:black"  >
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
                      <button type="button" style="background-color: orange;  " class="btn dropdown-toggle" data-toggle="dropdown">
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
       <br><br><br>
        
          <div class="background form-inline justify-content-center ">
                    
                       <table class="table w-75">
                       <thead  >
                         <tr>
                           <th scope="col">Service Type</th>
                           <th scope="col">Locality</th>
                           <th scope="col">Number of Service Providers</th>
                           <th scope="col">Choose Action</th>                          
                         </tr>
                       </thead>
                       <tbody>
                       <td ><c:if test="${serviceType == 'E'}">
 								Electrical
								</c:if>
								<c:if test="${serviceType == 'P'}">
 								Plumbing
								</c:if>
								<c:if test="${serviceType == 'M'}">
 								Mechanical
								</c:if>
						</td>
                       
                       <td>${locality }</td>
                       <td>${numOfWorkers} </td>
                       <td><a href="loginUser.html"><button  class="btn btn-success" type="submit">Avail a Service</button></a></td>
                	</tbody>
                	</table>
                  
                    
            </div>
            </form>

       <footer class=" font-small special-color-dark pt-4 main-footer"  >
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
        <div class="footer-copyright text-center py-3">© 2018 Copyright:
        </div>
        <!-- Copyright -->
    
      </footer>
      <!-- Footer -->
    </c:if>
 
   <c:if test="${empty admin.adminId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if>
</body>
</html>