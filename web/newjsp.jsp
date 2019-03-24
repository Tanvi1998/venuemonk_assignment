<%-- 
    Document   : newjsp
    Created on : Mar 20, 2019, 1:01:55 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "javax.mail.*" %>
<%@ page import ="javax.mail.Message"%>
<%@page import= "javax.servlet.http.HttpSession" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           /*String to="singhtanvi460@gmail.com";
            String from="tanvisingh0403@gmail.com";
            String bodytext="Hi";
            String subject="verification";
            try
            {
                Properties props=new Properties();
               Session session1=Session.getDefaultInstance(props,null);
               MimeMessage email=new MimeMessage(session1);
               email.setFrom(new InternetAddress(from));
               email.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(to));
               email.setSubject(subject);
               email.setText(bodytext);
               ByteArrayOutputStream buffer=new ByteArrayOutputStream();
               email.writeTo(buffer);
               byte[] bytes=buffer.toByteArray();
               String encodedEmail=Base64.encodeBase64URLSafeString(bytes);
               
               Message message;
               Gmail service;
               
               
               
            }
            catch(Exception e)
            {
                
            }*/
        String to = "singhtanvi460@gmail.com";

      // Sender's email ID needs to be mentioned
      String from = "tanvisingh0403@gmail.com";
      final String username = "tanvisingh0403";//change accordingly
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
               InternetAddress.parse(to));
	
	   // Set Subject: header field
	   message.setSubject("Testing Subject");
	
	   // Now set the actual message
	   message.setText("Hello, this is sample for to check send " +
		"email using JavaMailAPI ");

	   // Send message
	   Transport.send(message);

	   System.out.println("Sent message successfully....");

      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
	
            %>
    </body>
</html>
