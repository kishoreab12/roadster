<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Preferences</title>
<style>
table{
  border-collapse: collapse;
  width: 90%;
  border: solid 1px;
  margin: auto;
}
th,td{
  text-align: left;
  padding: 8px;
  border: solid 1px;
}
tr:nth-child(even) {
  
	background-color: #D6EEEE;
}
</style>	
	</head>
<body>
	<h2>Preferences</h2>
	<table>
	   <tr>
	      <th>Preference</th>
	      <th>Configured Value</th>
	   </tr>
	      <tr>
	      <td>City</td>
	      <td>${preferences.city}</td>
	   </tr>
	   <tr>
	      <td>Origin Country</td>
	      <td>${preferences.originCountry}</td>
	   </tr>
	   <tr>
	      <td>International Places</td>
	      <td>${preferences.internationalPlaces}</td>
	   </tr>
	   <tr>
	      <td>Gender</td>
	      <td>${preferences.gender}</td>
	   </tr>
	   <tr>
	      <td>Age</td>
	      <td>${preferences.age}</td>
	   </tr>
	   
	</table>	  
	
</body>
</html>