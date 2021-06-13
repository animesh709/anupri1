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
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Employee Salary Details</p>
			<div class="form-group">
   
  
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Email address</label><br>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"required>
    
  </div><br>
			
			<div class="input-group">
			 <label for="salary" class="label">Enter salary</label><br>
				<input type="text" placeholder="salary" name="salary" required>
			</div><br>
			
      			
			<div class="input-group">
			
				<button name="submit" class="btn">Submit</button>
				<br>
		
				<br>
				<div class="input-group">
				<a href="HomeScreen.html">
				<button class="btn btn-primary">Home Page</button>
					</a>
					</div><br>
			</div>
			<p class="login-register-text">Want to delete record? <a href="delete.jsp">Click Here</a>.</p><br>
			<p class="login-register-text">Want to update Student Payment Status? <a href="feestauts.jsp">Click Here</a>.</p>
			
		</form>
	</div>

<%
String result="fail";

String s1=request.getParameter("email");

String s2=request.getParameter("salary");




if(s1!=""&&s2!="");

 {
	
	 Class.forName("org.postgresql.Driver");
	 Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  PreparedStatement pst=con.prepareStatement("update teacherdata set salary='"+s2+"'where email='"+s1+"'");//Create Statement
  pst.setString(1,s1);
  pst.setString(2,s2);
 
  
  int count=0;
  while(pst!=null)
  {
  count++;
  }
  if(count>0)
	  {
	  out.println("<style>h3{color : Green;}</style><h3>Record Found</h3>");
	  int k=pst.executeUpdate();
      }
  else
	  out.print("<style>h3{color : red;}</style><br><h3> record not found<h3>");
 
  pst.close();
  con.close();
  
 }

%>

</script>
</body>
</html>