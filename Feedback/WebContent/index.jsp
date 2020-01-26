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
        <title>Please Share your idea with us</title>
        <%@ include file="resources/includes/swstyles.jsp" %>        
    </head>    
    <body>
    
    <div class="main-content">
    <div class="container">
    <div class="row col-md-6 col-sm-6 centerform">
    <h2 class="text-primary"><b>Suggestion</b> </h2>
      
    <div class="row">
    <p>
    We are thinking to devlop new technology where it can help people to do their work efficiently like as Facebook,Whats app,twitter,instagram,shopping site etc.So we are requisting to you share your idea with us.It may be your idea can help us to do something for people.
    </p><p>
    हम नई तकनीक को विकसित करने के लिए सोच रहे हैं जहां यह लोगों को कुशलतापूर्वक अपना काम करने में मदद कर सके जैसे कि फेसबुक, व्हाट्स ऐप, ट्विटर, इंस्टाग्राम, शॉपिंग साइट आदि। इसके लिए हमें आपसे अपना विचार साझा करना होगा। यह आपका विचार हो सकता है। लोगों के लिए कुछ करने में हमारी मदद करें।
    </p>
    </div>
    <div class="row">
    <p>Note :-<span style="color: #FC766AFF">if your idea will be choosen we will gift you.<br>(
यदि आपका विचार चुना जाएगा तो हम आपको उपहार देंगे।)</span></p>
    </div>
   <form action="addFeedback.html" method="post" modelAttribute="Feedback" class="content">
  <div class="row">
  <div class="col-md-6 col-sm-6 col-xs-12">
  <div class="form-group">
    <label>Name :<span style="color: red;">*</span></label>
    <input type="text" class="form-control" name="fname" id="Name" onblur="validateName('Name','fnameerrMsg');validateValue('Name','fnameerrMsg');" placeholder="Your Good name here !">
  </div>
  <div id="fnameerrMsg"></div>  
  </div>  
  <div class="col-md-6 col-sm-6 col-xs-12">
  <div class="form-group">
    <label>Mobile :<span style="color: red;">*</span></label>
    <input type="text" class="form-control" onblur="validateMobileno('Mobile','fmobileerrMsg');" name="fmobile" id="Mobile" placeholder="Your Mobile Number here !" maxlength="10" onkeypress="return isNumberKey(event)">
  </div>
  <div id="fmobileerrMsg"></div>
  </div>
  </div>
  <div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
  <div class="form-group">
    <label>Please Share Your Ideas :<span style="color: red;">*</span></label>
  <textarea class="form-control" id="Feedback" rows="6" name="feedback" placeholder="Write your ideas here !"></textarea>
  </div>
  <div id="feedbackerrMsg"></div>
  </div>
  </div>
  <button type="submit" class="btn btn-primary btn-center">Submit</button>
</form>
</div>
  </div>  
  </div>
  <%@ include file="resources/includes/swscript.jsp" %>        
    </body>
</html>
