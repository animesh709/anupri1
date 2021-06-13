<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher inq</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
</head>
<body>
<section class="hero-section">

     <header>
        <div class="container-fluid mb-1">
            <!-- Navigation bar start -->
            <div class="row py-1">
                <div class="col">
                    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                    	 <div class="hero-text">
                    	 <p class="text-capitalize">vedanta computer</p>
       						 
        						</div>
                    	
                    	
                        <a href="" class="navbar-brand h1 mb-0"></a>
                        <button class="navbar-toggler" data-toggle="collapse" data-target="#mynavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="mynavbar">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="HomeScreen.html" class="nav-link active">Home</a>
                                </li>
                               
                                <li class="nav-item">
                                    <a href="offer.jsp" class="nav-link">Services</a>
                                </li>
                                
				 <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Courses
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="clan.jsp">C-Language</a></li>
            <li><a class="dropdown-item" href="cpplan.jsp">C++</a></li>
            <li><a class="dropdown-item" href="javalan.jsp">JAVA</a></li>
          </ul>
        </li>
      </ul>
        <li class="nav-item">
                                    <a href="aboutus.jsp" class="nav-link">About Us</a>
                                </li>
    </div>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Navigation bar end -->
            
          <div class="container">
  <div class="row">
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTozz9SKRh5q71m5_v0i6H4vii2LQ-pT59RrQ&usqp=CAU class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Teach With Us</h5>
    <p class="card-text">Come teach with us Become an instructor and change lives ,including your own</p>
    <a href="help.html" class="btn btn-primary">Help!</a>
  </div>
</div> 
    </div>
    <style>
    .dur{
    margin-top: 100px;
    justify-content : center;
    }
    .label{
    color : white;
    }
    .Pay{
    	margin-top: 40px;
    	justify-content : center;
    }
    .fee{
    margin-top: 10px;
    
    }
    </style>
    
    <div class="col-sm dur container cnt">
      <button type="button" class="btn btn-primary btn-lg">Part time</button>
<button type="button" class="btn btn-secondary btn-lg">2 to 3 Hours</button><br>
<div class="fee">
<button type="button" class="btn btn-primary btn-lg">Full Time</button>
<button type="button" class="btn btn-secondary btn-lg">7-8 hours</button>
</div>
<div class="card text-center Pay">
  <div class="card-header">
   Attention!
  </div>
  <div class="card-body">
    <h5 class="card-title">Checkout Now !</h5>
    <p class="card-text">So many reasons to start

Inspire learners
Teach what you know and help learners explore their interests, gain new skills, and advance their careers.

Teach your way
Publish the course you want, in the way you want, and always have of control your own content.

Get rewarded
Expand your professional network, build your expertise, and earn money on each paid enrollment. </p>
     
  </div>
  
</div>
</div>

   
    <div class="col-sm ">
    
      <form onSubmit="sayResult">
<div class="form-group">
    <label for="exampleInputEmail1 " class="label">Full Name</label>
    <input type="Text" name="ct1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" pattern="[a-z][a-z\s]*$" placeholder="Enter Full Name"required>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Mobile Number</label>
   <input type="text" id="phone" class="form-control"  name="ct2" aria-describedby="emailHelp" placeholder="Enter Mobile no" pattern="[0-9]{10}" required><br>
  
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Email address</label>
    <input type="email" name="ct3" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"required>
    <small id="emailHelp" class="form-text text-muted label">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Address</label>
    <input type="Text" name="ct4" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Address"required>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Qualification</label>
    <input type="Text" name="ct5" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Qualification"required>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">Experienced</label>
    <input type="Text" name="ct6" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="YES/NO"required>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1 " class="label">If Experienced!..Comment </label>
    <textarea  name="ct7" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" rows="" cols=""></textarea>
 </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
    </div>
  </div>
</div>  
            
            </section>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>


<%
String result="fail";
String s1=request.getParameter("ct1");
String s2=request.getParameter("ct2");
String s3=request.getParameter("ct3");
String s4=request.getParameter("ct4");
String s5=request.getParameter("ct5");
String s6=request.getParameter("ct6");
String s7=request.getParameter("ct7");		 
String s8="0.00";

if(s1!=""&&s2!=""&&s3!=""&&s4!=""&&s5!=""&&s6!=""&&s7!="")
 {
   
	 Class.forName("org.postgresql.Driver");
	 Connection con=DriverManager.getConnection("jdbc:postgresql://ec2-54-224-194-214.compute-1.amazonaws.com:5432/datk482eqlirkr","awgslrluoujgxu","b1d35af27e9bb9f78dbbf9490bc020993d33ab188a4e7ac3859458141d8fd2c2");//Create Connection
  PreparedStatement pst=con.prepareStatement("insert into teacherdata values(?,?,?,?,?,?,?,?)");//Create Statement
  pst.setString(1,s1);
  pst.setString(2,s2);
  pst.setString(3,s3);
  pst.setString(4,s4);
  pst.setString(5,s5);
  pst.setString(6,s6);
  pst.setString(7,s7);
  pst.setString(8,s8);
  
  int k=pst.executeUpdate();
  if(k==1)
      result="success";
  else
	  result="fail";
  
  pst.close();
  con.close();
  
 }
else{
	result="fail";
}
%>
<script type="text/javascript">
result=<%=result%>;
function sayResult(){
	window.alert(""+<%=result %>);	
}
</script>
</body>
</html>