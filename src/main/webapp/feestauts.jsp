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
	<title>Student Details</title>
</head>
<body>
		<div class="container">
		<form action="feestauts.jsp" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">Login</p>
			<div class="input-group">
			 <label for="name" class="label">Enter Full Name</label><br>
				<input type="text" placeholder="Enter Full Name" name="name"  required>
			</div><br>
			<div class="input-group">
			 <label for="mobileno" class="label">Enter Mobile Number</label><br>
				<input type="text" placeholder="number" name="mobileno" required>
			</div><br>
					<div class="input-group">
			 <label for="email" class="label">Enter Email</label><br>
				<input type="email" placeholder="Email" name="email" required>
			</div><br>
			<div class="input-group">
  				<label for="feestatus" class="label">Fee Status</label>
    			<div class="form-group">
     			 <select style="color:black" class="form-control" name="feestatus" id="exampleInputEmail1" aria-describedby="emailHelp">
       			 <option style="color:black" value=paid>PAID</option>
        		<option style="color:black" value=unpaid>UNPAID</option>
      			</select>
     			 </div>
     			 </div><br>
     			 <button class="btn btn-primary">Log in</button>
		</form>
		<p class="login-register-text">Want to delete record?<br> <a href="studdel.jsp">Click Here</a>.</p>
			<p class="login-register-text">Want to update Employee Details?<br> <a href="salary.jsp">Click Here</a>.</p>
		<div class="input-group">
				<a href="HomeScreen.html">
				<button class="btn btn-primary">Home Page</button>
					</a>
					</div>
	</div>


<%
String result="fail";

String s1=request.getParameter("name");
String s2=request.getParameter("mobileno");
String s3=request.getParameter("email");
String s4=request.getParameter("feestatus");


if(s1!=""&&s2!=""&&s3!=""&&s4!="");
 {
	 Class.forName("org.postgresql.Driver");
	 Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  PreparedStatement pst=con.prepareStatement("insert into c_data2 values(?,?,?,?)");//Create Statement
  pst.setString(1,s1);
  pst.setString(2,s2);
  pst.setString(3,s3);
  pst.setString(4,s4);
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
  
 }

%>


</script>
</body>
</html>