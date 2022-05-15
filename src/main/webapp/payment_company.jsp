<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
<link rel="stylesheet" type="text/css" href="Pay.css">
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/payment_company.js"></script>
</head>
<body> 


                    
                    
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