<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products are ready to checkout</title>
</head>
<body>
<body bgcolor="#ffffff">
<p>
<jsp:include page="ShoppingCart.jsp" flush="true"/>
<p>
<h1>Please enter your shipping information</h1>
<p>
<form action="" method="post">

<table>
<tr><td>Name:</td><td><input type="text" name="name"></td></tr>
<tr><td>Address:</td><td><input type="text" name="address"></td>
</tr>

<tr><td>City:</td><td><input type="text" name="city"></td></tr>
    <td>State:</td>
    <td><input type="text" name="state" size=2 maxlength=2></td></tr>
<tr><td>Postal Code :</td>
    <td><input type="text" name="postalCode"></td></tr>

<tr></tr>
<tr><td>Email Address:</td><td><input type="text" name="email">
</td></tr>
<tr><td>Mobile:</td><td><input type="text" name="mobile">
</td></tr>
</table>
<p>
<!-- <h1>Please enter your billing information</h1>
<table>
<tr><td>Name (as it appears on credit card):</td>
    <td><input type="text" name="nameOnCard"></td></tr>
<tr><td>Credit Card:</td>
<td><select name="creditCardType">
    <option value="amex">American Express</option>
    <option value="visa">Visa</option>
    <option value="mc">Mastercard</option>
    <option value="discover">Discover</option>
    <option value="bbbt">Billy Bob's Bank &amp; Trust</option>
    </select></td></tr>
<tr><td>Credit Card Number:</td>
    <td><input type="text" name="creditCardNumber"></td></tr>
<tr><td>Expiration Date:</td>
    <td><input type="text" name="creditCardExpiration"></td></tr>
</table>
<p> -->
<input type="submit" value="Complete Order">
</form>
</body>
</html>