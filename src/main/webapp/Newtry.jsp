<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="Regi.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<title>Fee status</title>
</head>
<body>
<section class="hero-section">
 
	<div class="container">
		<form action="feestauts.jsp" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Payment Status</p>
			<div class="input-group">
				 <div class="col-sm ">
      <form>
<div class="form-group">
    <label for="exampleInputEmail1 " class="label">Full Name</label>
    <input type="Text" name="t1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Full Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Mobile Number</label><br>
   <input type="Tel" id="phone" class="form-control"  name="t2" aria-describedby="emailHelp" placeholder="Enter Mobile no" pattern="[0-9]{10}" required><br>
  
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Email address</label>
    <input type="email" name="t3" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted label">We'll never share your email with anyone else.</small>
  </div>
   <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
</form>
    </div>
  </div>
</div>  
    </section>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
				
</body>
</html>