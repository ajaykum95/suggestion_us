<%-- 
    Document   : result
    Created on : 2 Oct, 2019, 6:15:32 PM
    Author     : AJAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Feedbacks</title>
        <%@ include file="resources/includes/swstyles.jsp" %> 
    </head>
    <body>
    <div class="wrap">
   
    <div class="main-content">
 <h3><a href="logout.html">logout</a></h3>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="menuDv">
 <h2 class="user-email sub-title panel">Manage Feedback</h2>   
    
    
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="clearfix">
<div class="box-width6 col-xs-1 box-intro-bg">
<div class="box-intro-border">
<p class="news-border">SN</p>
</div>
</div>
<div class="box-width16 col-xs-2 box-intro-bg" >
<div class="box-intro-border">
<p class="news-border">Name</p>
</div>
</div>
<div class="box-width10 col-xs-2 box-intro-bg">
<div class="box-intro-border">
<p class="news-border">Mobile</p>
</div>
</div>
<div class="box-width61 col-xs-2 box-intro-bg">
<div class="box-intro-border">
<p class="news-border">Idea</p>
</div>
</div>
<div class="box-width7 col-xs-2 box-intro-bg">
<div class="box-intro-border">
<p>
<span> Action </span>

</p>
</div>
</div>
</div>
</div>
</div>
 <c:forEach items="${Feedbacks}" var="fd">   
 <div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="clearfix">
<div class="box-width6 col-xs-1 box-intro-background">
<div class="link-style12">
<p class="news-border">${fd.fid }</p>
</div>
</div>
<div class="box-width16 col-xs-2 box-intro-background">
<div class="link-style12">
<p class="news-border">${fd.fname }</p>
</div>
</div>
<div class="box-width10 col-xs-2 box-intro-background">
<div class="link-style12">
<p class="news-border">${fd.fmobile }</p>
</div>
</div>
<div class="box-width61 col-xs-2 box-intro-background">
<div class="link-style12">
<p class="news-border" title="${fd.feedback }">${fd.feedback }</p>
</div>
</div>
<div class="box-width7 col-xs-2 box-intro-background">
<div class="link-style12">
<p class="news-border">
<span>view</span>
<span>delete</span>
</p>
</div>
</div>

</div>
</div>
</div> 
</c:forEach>

</div>
</div>
</div>    
 </div>
 </div>      
       
       
       <%@ include file="resources/includes/swscript.jsp" %>   
    </body>
</html>