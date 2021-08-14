<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rotten Potatoes</title>
<%
	response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0);
%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script>
	function signin() {
		if (window.location.search.split('?').length > 1) {
			<%
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String name;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String URL = "jdbc:mysql://localhost:3306/res?serverTimezone=UTC";
				conn = DriverManager.getConnection(URL, "root", "");
				ps = conn.prepareStatement("select Name from details where Email = ? and Password =?");
				ps.setString(1, email);
				ps.setString(2, password);
				rs = ps.executeQuery();
				if (rs.next()) {
				name = rs.getString("Name");
					%>
					   window.location.href = "Home.html?i=1";
					<% 
				} else {
					%>
					alert("Invalid Email or Password!");
					window.location.href = "SignIn.jsp";
					<%
				}
			} catch (Exception e) {
				out.println(e);
			}
			rs.close();
			ps.close();
			conn.close();
		%>
		}
	}
</script>
</head>

<body style="background-color: black;" onload="signin()">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="height: 75px; background-color: #533549">
		<a class="navbar-brand" href="Home.html">
			<button type="submit" class="btn btn-warning btn-sm"
				style="font-size: 25px; font-weight: bold; margin-left: 100px; vertical-align: middle;">DoMaTO</button>
		</a>

		<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0"></ul>
			<a class="nav-link" href="SignUp.html"
				style="color: white; font-weight: bold; margin-right: 50px">Sign
				Up</a>
		</div>
	</nav>
	<div class="modal-body">
		<div class="containers-fluid">
			<form action="SignIn.jsp" style="margin: auto; margin-top: 200px;">
				<div class="row form-group" style="height: 50px">
					<div class="col-4"></div>
					<div class="col-1">
						<label for="email" style="font-weight: bold; color: white;">Email</label>
					</div>
					<div class="col-3">
						<input type="email" class="form-control" name="email" id="email"
							placeholder="Enter Email" required="required" />
					</div>
					<div class="col-4" id="emailErr"></div>
				</div>

				<div class="row form-group" style="height: 50px">
					<div class="col-4"></div>
					<div class="col-1">
						<label for="password" style="font-weight: bold; color: white">Password</label>
					</div>
					<div class="col-3">
						<input type="password" class="form-control" name="password"
							id="password" placeholder="Enter Password" required="required" />
					</div>
					<div class="col-4" id="nameErr"></div>
				</div>

				<div class="row form-group">
					<div class="col-6"></div>
					<div class="col-1">
						<button class="btn btn-outline-warning" type="submit"
							style="font-weight: bold; width: 85px;">Sign In</button>
					</div>
					<div class="col-5"></div>
				</div>
			</form>
		</div>
	</div>
	
		<footer class="page-footer font-small" style="background-color: #3C1A5B;">
	<hr>
		<div class="container text-center text-md-left mt-5" >
			<div class="row mt-3" >
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4"
					style="color: #FFF748;">
					<h6 class="text-uppercase font-weight-bold">social accounts</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<a href="" target="_blank"><img src="insta.jpg" width="50" height="50" title="insta" alt="insta"></a>
					<a href="" target="_blank"><img src="fb.jpg" width="50" height="50" title="fb" alt="fb"></a>
					<a href="" target="_blank"><img src="twitter.jpg" width="50" height="50" title="twitter" alt="twitter"></a>
					
				</div>
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4"
					style="color: #FFF748;">
					<h6 class="text-uppercase font-weight-bold">Developers</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p style="color: #CCF381;">xgendevbk@gmail.com</p>
					<p style="color: #CCF381;">xgendevak@gmail.com</p>
					
				</div>
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4"
					style="color: #FFF748;">
					<h6 class="text-uppercase font-weight-bold">Useful links</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<a href="SignIn.jsp" style="color:#CCF381;">Sign In</a>
					</p>
					<p>
						<a href="SignUp.html" style="color:#CCF381;">Sign Up</a>
					</p>
					<p>
						<a href="#top" style="color:#CCF381;">Go to Top</a>
					</p>
				</div>
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4"
					style="color: #FFF748;">
					<h6 class="text-uppercase font-weight-bold">Contact</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p style="color:#CCF381;">1234567890</p>
					<p style="color: #CCF381;">domato@gmail.com</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
