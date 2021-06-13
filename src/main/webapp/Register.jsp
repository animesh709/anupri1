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

	<title>Register Form</title>
</head>
<body>
 
	<div class="container">
		<form action="Register.jsp" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Register</p>
			<div class="input-group">
				<input type="text" placeholder="Username" name="username"  required>
			</div>
			<div class="input-group">
				<input type="email" placeholder="Email" name="email" required>
			</div>
			<div class="input-group">
				<input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="input-group">
				<input type="password" placeholder="Confirm Password" name="cpassword"  required>
			</div>
			<div class="input-group">
			
				<button name="submit" class="btn">Register</button>
			</div>
			<p class="login-register-text">Have an account? <a href="Login.jsp">Login Here</a>.</p>
		</form>
	</div>
</body>
</html>

<%
String s1=request.getParameter("username");
String s2=request.getParameter("email");
String s3=request.getParameter("password");
String s4=request.getParameter("cpassword");
try{
//if(s3!=s4){
	//out.print("<p> Password Does Not Match</p>");
//}
if(s1!=null&&s2!=null&&s3!=null)
 {
  Class.forName("org.postgresql.Driver");//load and register driver
  Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  PreparedStatement pst=con.prepareStatement("insert into register values(?,?,?)");//Create Statement
  pst.setString(1,s1);
  pst.setString(2,s2);
  pst.setString(3, s3);
  int k=pst.executeUpdate();
  if(k>=1)
	  response.sendRedirect("Login.jsp");
  else
	  out.println("Please Enter Valid Credentials");
  
  pst.close();
  con.close();
 } 
}catch(Exception e)
{
	System.out.println("error="+e);
	}
%>