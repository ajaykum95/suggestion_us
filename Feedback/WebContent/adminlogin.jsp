<%-- 
    Document   : index
    Created on : 2 Oct, 2019, 5:16:24 PM
    Author     : AJAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login</title>
         <%@ include file="resources/includes/swstyles.jsp" %>
    </head>
    <body>
    <div class="main-content">
    <div class="container">
    <div class="row col-md-4 col-sm-4 centerform">
    <h6 class="text-danger"><b>${errMsg }</b> </h6>      
    <div class="row">
     <form action="adminlogin.html" method="post" class="content">
  <div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
  <div class="form-group">
    <label>User Id :<span style="color: red;">*</span></label>
    <input type="text" class="form-control" name="userid" id="User Id" placeholder="User id here !">
  </div>
  <div id="useriderrMsg"></div>  
  </div>
  </div>
   <div class="row"> 
  <div class="col-md-12 col-sm-12 col-xs-12">
  <div class="form-group">
    <label>Password :<span style="color: red;">*</span></label>
    <input type="password" class="form-control" name="password" id="Password" placeholder="Password here !">
  </div>
  <div id="passworderrMsg"></div>
  </div>
  </div>
  
  <button type="submit" class="btn btn-primary btn-center">Login</button>
</form>
  </div>
  </div>
  </div>
  </div> 
        <%@ include file="resources/includes/swscript.jsp" %>     
    </body>
</html>
