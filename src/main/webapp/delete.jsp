<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="Regi.css">
<style type="text/css"> 
	input,button{
	color :black;
	}
	  </style>
	<title>salary Delete</title>
</head>
<body>
  <form onSubmit="sayResult">
	<div class="container">
	
		<form action="Register.jsp" method="POST" class="login-email">
		 <p class="login-text" style="font-size: 2rem; font-weight: 800;">Delete employee record</p>
 <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Mobile Number</label><br>
   <input type="Tel" id="phone" class="form-control"  name="mobileno" aria-describedby="emailHelp" placeholder="Enter Mobile no" pattern="[0-9]{10}" required><br>
  
  </div><br>
			<button name="delete" class="btn">Delete</button>
 </form>
<% 
        String result="fail";
        String s1 = request.getParameter("mno");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("org.postgresql.Driver");
       con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
        pst = con.prepareStatement("delete from teacherdata where mno = ?");
         pst.setString(1,s1);
         int k=pst.executeUpdate();
         if(k==1)
         {
             result="success";
         }
         else
         {
       	  result="fail";
         }
         pst.close();
         con.close();
         
        
        %>
        
       
     
   </div>
   </form>
     
</body>
</html>