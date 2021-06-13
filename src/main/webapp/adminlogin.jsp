<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>

	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminLogin page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
    
  </head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="Regi.css">

	<title>AdminLogin Form</title>
</head>

  <body>
    

 
	<div class="container">
		<form action="adminlogin.jsp" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">Login</p>
			<div class="input-group">
				<input type="email" placeholder="Email" name="t1"  required>
			</div>
			<div class="input-group">
				<input type="password" placeholder="Password" name="t2" required>
			</div>
				<div class="input-group">
				<a href="HomeScreen.html">
				<button class="btn btn-primary">Log in</button>
					</a>
					</div>
			
		</form>
	</div>
	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>

<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
		 
if(s1!=null&&s2!=null)
 {
  Class.forName("org.postgresql.Driver");//load and register driver
  Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from a_login where email='"+s1+"'and password='"+s2+"'");
  int count=0;
  while(rs.next())
  {
  count++;
  }
  if(count>0)
	  {
	  out.println("<style>h3{color : Green;}</style><h3>Record Found</h3>");
      response.sendRedirect("feestauts.jsp");
      }
  else
	  out.print("<style>h3{color : red;}</style><br><h3>Wrong Credentials<h3>");
  
  st.close();
  con.close();
 }
		  
%>