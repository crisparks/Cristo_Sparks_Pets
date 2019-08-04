<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="styles.css">
		<title>Adopt a Pet!</title>
	</head>
	<body>
		<div id="container">
			<div id="leftpanel">
				<h1>Adopt a Dog!</h1>
				<form action="/Pets/Dogs" method="get">
					<h3>Name:<input class="inputs" type="text" name="name"></h3>
					<h3>Breed:<input class="inputs" type="text" name="breed"></h3>
					<h3>Weight(lb):<input class="inputs" type="text" name="weight"></h3>
					<input class="btn" type="submit" value="Submit">
				</form>	
			</div>
			<div id="rightpanel">
				<h1>Adopt a Cat!</h1>	
				<form action="/Pets/Cats" method="get">
					<h3>Name:<input class="inputs" type="text" name="name"></h3>
					<h3>Breed:<input class="inputs" type="text" name="breed"></h3>
					<h3>Weight(lb):<input class="inputs" type="text" name="weight"></h3>
					<input class="btn" type="submit" value="Submit">
				</form>
			</div>
		</div>
	</body>
</html>