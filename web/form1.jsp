<%-- 
    Document   : signup
    Created on : 15 Jan, 2019, 5:09:23 PM
    Author     : srishti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "javax.mail.*" %>
<%@page import= "javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" src="style.css"></link>
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
     label
     {
        font-size:20px;
        color:white;
     }
     body{
         background-image: url("h.jpg");
         background-attachment:fixed;
         background-size:cover;
         font-family: calibri;
     }
     .col-md-5
     {
         background: rgba(0,0,0,0.5);
         margin-top:40px;
     }
     .input-group
     {
         margin-top:10px;
         margin-bottom: 20px;
     }
     .input-group-addon
     {
         background:transparent;
         border-radius:0px;
         border:0px;
         border-bottom:1px solid gray;
         font-size:18px;
         color:gray;
     }
     .form-control{
         background:transparent;
         border-radius: 0px;
         border:0px;
         border-bottom: 1px solid white;
         padding:10px;
         color:white;
         font-size:21px;
     }
     small
     {
         color:red;
     }
    </style>
    <body>
        
        <div class="container">
            <div class="row">
                <div class="col-md-5"> 
        <form   method="GET" onsubmit="return valid();" action="form2.jsp">
          
             
              
            
            <label class="label control-label">First Name</label> 
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span></br>
                <input id="t1" type="text"  class="form-control" name="firstname" placeholder="First name"/>
            </div>
            <small id="l1" style="color:red ;visibility:hidden" class="form-group text-muted">Please enter a valid first name</small></br>
            <label class="label control-label">Last Name</label> 
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
            <input id="t2" type="text"  class="form-control" name="lastname" placeholder="Last name"/>
            </div>
            <small id="l2" style="color:red ;visibility:hidden" class=" label control-label">Please enter a valid last name</small></br>
       
            <label class="label control-label">E-mail</label> 
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-mail"></span></span>
            <input id="t3" type="text"  class="form-control" name="email" placeholder="Email"/>
            </div>
            <small id="l3" style="color:red ;visibility:hidden">Please enter a valid email</small></br>
             <label class="label control-label">Phone No.</label> 
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-mail"></span></span>
            <input id="t4" type="number"  class="form-control" name="mobileno" placeholder="Phone number"/>
            </div>
             <small id="l4" style="color:red ;visibility:hidden">Please enter a valid phone number</small></br>
             <label class="label control-label">Biography</label> 
            <textarea class="form-control" id="t5" rows="4" coloumns="5" name="biography"></textarea>
                 <small id="l5" style="color:red ;visibility:hidden">This can't be blank</small>
                 </br>
                <button class="btn btn-primary btn-md" >submit</button>
            </form>  
   
            </div>
      </div>                  
        
       
        <script type="text/javascript">
          function valid()
           {
              var result=""; 
            var s1=document.getElementById("t1").value;
            var s2=document.getElementById("t2").value;
            var s3=document.getElementById("t3").value;
            var s4=document.getElementById("t4").value;
            var s5=document.getElementById("t5").value;
            var regx6=/^[6-9][0-9]{9}/;
            var regx7=/^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9]+).([a-z]{2,20})(.[a-z]{2-8})?$/;
          
            var flag=1;
           // window.loaction.href="signup.jsp?mess="+ s3;
            
            if(s1=="")
            {
             
               t1.style.border="solid 2px red";
                document.getElementById("l1").style.visibility="visible";
                flag=0;
            }
            if(s2=="")
            {
                 t2.style.border="solid 2px red";
                document.getElementById("l2").style.visibility="visible";
                flag=0;
            }  if(s3=="")
            {
                 t3.style.border="solid 2px red";
                document.getElementById("l3").style.visibility="visible";
                flag=0;
            }
            if(s4=="")
            {
                 t4.style.border="solid 2px red";
                document.getElementById("l4").style.visibility="visible";
               
                  flag=0;
            }
          if(s5=="")
            {
                 t5.style.border="solid 2px red";
                document.getElementById("l5").style.visibility="visible";
                flag=0;
            }
   
           if((s3!="")||(s4!=""))
            {
               
                if(!regx6.test(s4))
                {
                    
                    document.getElementById("l4").innerHTML="Please enter a valid phone no";
                    document.getElementById("t4").style.border="solid 3px red ";
                    document.getElementById("l4").style.visibility="visible";
                    flag=0;
                }
                if(!regx7.test(s3)) 
                {
                    document.getElementById("l3").innerHTML="Please enter a valid email";
                    document.getElementById("l3").style.visibility="visible";
                    document.getElementById("t3").style.border="solid 3px red";
                    flag=0;
                }
              
          

            }
        
                if(flag==0)
                    return false;
                else
                {
                    alert("Thank You")
                    return true;
                }
        }
            
       
            </script> 
     
       
    </body>
    
   
</html>