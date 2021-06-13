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
	<title>Teacher salary</title>
</head>
<body>
  <form onSubmit="sayResult">
	<div class="container">
	
		<form action="Register.jsp" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Update Employee Details</p>
			<div class="input-group">
			 <label for="name" class="label">Enter Name to update</label><br>
				<input type="text" placeholder="Enter Full Name" name="name"  required>
			</div><br>
			<div class="input-group">
			 <label for="mobileno" class="label">Enter Mobile Number to update</label><br>
				<input type="number" placeholder="number" name="mobileno" required>
			</div><br>
			<div class="input-group">
			 <label for="email" class="label">Enter Email to update</label><br>
				<input type="email" placeholder="Email" name="email" required>
			</div><br>
			<div class="input-group">
			 <label for="Course" class="label">Enter Course to update</label><br>
				<input type="text" placeholder="Course" name="Course" required>
			</div><br>
			<div class="input-group">
			 <label for="salary" class="label">Enter salary to update</label><br>
				<input type="text" placeholder="salary" name="salary" required>
			</div><br>
			<div class="input-group">
			
				<button name="submit" class="btn">Submit</button>
				<br>
				</div>
      			</div>
			
		</form>
	</div>


 
<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String mobileno = request.getParameter("mobileno");
        String course = request.getParameter("course");
        String salary = request.getParameter("salary");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("org.postgresql.Driver");
         con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
        pst = con.prepareStatement("update records set name = ?,mobileno =?,course =?,course =?,salary =? where id = ?");
        pst.setString(1, name);
        pst.setString(2, mobileno);
        pst.setString(3, course);
        pst.setString(4, salary);
        pst.executeUpdate();  
        
        %>
        
        <script>   
            alert("Record Updateddddd");           
       </script>
    <%             
    }
 
%>