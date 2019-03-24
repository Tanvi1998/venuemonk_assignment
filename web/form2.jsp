<%-- 
    Document   : form2
    Created on : Mar 20, 2019, 4:55:54 PM
    Author     : dell
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              
        String fname=request.getParameter("firstname");
           String lname=request.getParameter("lastname");
           String email=request.getParameter("emailid");
           String phone=request.getParameter("mobileno");
           String biography=request.getParameter("biography");
             
              String emailid="tanvisingh0403@gmail.com";
              String from="venue1998assignment@gmail.com";
    
         final String username = "venue1998assignment";//change accordingly
      final String password = "banasthali1234";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
        
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

      // Get the Session object.
      Session session1 = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username, password);
	   }
         });

      try {
	   // Create a default MimeMessage object.
	   Message message = new MimeMessage(session1);
	
	   // Set From: header field of the header.
	   message.setFrom(new InternetAddress(from));
         
	   // Set To: header field of the header.
	   message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(emailid));
	
	   // Set Subject: header field
	   message.setSubject("Testing Subject");
	
	   // Now set the actual message
          String text="User's Details are"
                   + "Firstname:  "+fname
                   +"Lastname :"+lname
                   +"Emailid :"+emailid
                   +"Phone no. :"+phone
                   +"Biography :"+biography;
        String text1="ksdfj";
           
	   message.setText(text);

	   // Send message
	   Transport.send(message);

	   String url="form1.jsp";
           response.sendRedirect(url);
           

      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
      
           
       %>
            
    </body>
</html>
