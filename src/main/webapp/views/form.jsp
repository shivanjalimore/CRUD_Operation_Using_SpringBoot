 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <div style="height:1100px;width:700px;border-style:solid;margin-left:280px;margin-top:5px;">
			<h3 style="height: 25px;margin-left: 670px;margin-top: 5px; color:red">X</h3>
			<h1 style="text-align:center;color:red;">Registration Form</h1>
			
			<form action="submit" method="post" >
			
			
			 <!-- <h4 style="margin-left: 80px;">Enter ID : </h4>
			 <input type="text" id="id" name="id" placeholder="id" style="height: 35px;
    width: 500px;
    margin-left: 80px;"> -->
			
			 <h4 style="margin-left: 80px;">Enter First Name : </h4>
			 <input type="text" id="firstname" name="fname" placeholder="First Name" style="height: 35px;
    width: 500px;
    margin-left: 80px;">
	         <br>
	         <span id="firstname-error"  style="color: red; margin-left: 80px;"> </span>
			 
			 <h4  style="margin-left: 80px;">Enter Last Name : </h4>
			 <input type="text"  id="lastname" name="lname" placeholder="Last Name"style="height: 35px;
    width: 500px;
    margin-left: 80px;">
	<br>
	         <span id="lastname-error"  style="color: red;  margin-left: 80px;"> </span>


			   <h4  style="margin-left: 80px;">Enter Mobile Number : </h4>
			 <input type="Number"  id="mobileno" name="mobNo" placeholder="Mobile Number" maxlength="10" style="height: 35px;
    width: 500px;
    margin-left: 80px;"><br>
	         <span id="mobileno-error"  style="color: red; margin-left: 80px;"> </span>


			 <h4  style="margin-left: 80px;">Enter Email ID : </h4>
			 <input type="Email"  id="emailID" name="emailID" placeholder="Email ID"style="height: 35px;
    width: 500px;
    margin-left: 80px;"><br>
	         <span id="emailID-error"  style="color: red; margin-left: 80px;"> </span>


			 <h4  style="margin-left: 80px;">Password : </h4>
			 <input type="text"  id="password" name="password" placeholder="Address" style="height: 70px;
    width: 500px;
    margin-left: 80px;"><br>
	         <span id="address-error" style="color: red;  margin-left: 80px;"> </span>
	        <button type="submit"  style="background-color: green;
                                            margin-top: 45px;
                                            margin-left: 230px;
                                            padding: 17px;
                                            height: 50px;
                                            width: 200px;">Submit</button>
			</form>
			</div>
</body>
</html>