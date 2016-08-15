<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You for shopping with us</title>
</head>
<body>
<h1>Order Submitted Successfully!</h1>
 <p>
 Thank you for your order. Your order confirmation number is:
 <br><pre>
<%=request.getParameter("confirmationNumber")%>
 </pre>
 
<p>
Please use this number when calling to check on your order.
</body>
</html>