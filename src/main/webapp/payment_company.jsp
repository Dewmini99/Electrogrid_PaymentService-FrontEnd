<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
<link rel="stylesheet" type="text/css" href="Register.css">
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/payment_company.js"></script>
</head>
<body> 

<img class="wave" src="img/pay.png" style="width:100%;height:100%;opacity: 0.7">
    	
	<section id="contact" style="position: absolute;top: 8%;left: 5%;right: 100%;trasform: translate(-80%,-80%);width: 1200px;height: 1400px;box-sizing: border-box;background: rgba(0,0,0,0.1);padding: px;"	>
            <div class="container"style="color:black;font-weight: bold;font-weight: 600;" >
                <div class="row">
                    <div class="col-md-6" style="margin-top: 50px;">
                            
                    </div>
                    
                    
<div class="container"><div class="row"><div class="col-6"> 
<h1>Payment Details</h1>
<form id="formItem" name="formItem" method="post" action="payment_company.jsp">
 Payment Number: 
 <input id="paymentNo" name="paymentNo" type="text" 
 class="form-control form-control-sm">
 <br> Company Name: 
 <input id="companyName" name="companyName" type="text" 
 class="form-control form-control-sm">
 <br> Total Amount: 
 <input id="amount" name="amount" type="text" 
 class="form-control form-control-sm">
 <br> Total Units: 
 <input id="units" name="units" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidItemIDSave" 
 name="hidItemIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 Payment paymentObj = new Payment(); 
 out.print(paymentObj.readPayments()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>