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
	<title>Payment Status</title>
</head>
<body>
  <form onSubmit="sayResult">
	<div class="container">
	
		<form action="Register.jsp" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Payment Status</p>
            
            <div class="input-group">
			 <label for="email" class="label">Enter Email id to update record</label><br>
				<input type="email" placeholder="Email" name="email" required>
			</div><br>
			<div class="input-group">
			<button name="update" class="btn">update</button>
				</div>
<%
String result="fail";
String s1=request.getParameter("email");

if(s1!="");

 {
	
	 Class.forName("org.postgresql.Driver");
	 Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  PreparedStatement pst=con.prepareStatement("update Salary set name=?, mobileno=?,course=?,salary=? where email=s1");//Create Statement
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
  
 }

%>

</script>
</body>
</html>

"update Stud set name=?, percentage=? where roll_no=?";
                    ps=conn.prepareStatement(sql);
                    ps.setString(1,name);
                    ps.setFloat(2,percentage);
                    ps.setInt(3,rollno);
                   
                    ps.executeUpdate();
                    System.out.println("Record Updated");