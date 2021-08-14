<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<head>
<title>DoMaTo/cnf</title>
<link rel="stylesheet" href="SeStyle.css">
<script src="Autocomplete.js"></script>
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
	function verify() {
		var i = 0;
		if (window.location.search.split('?').length > 1) {
			i = decodeURIComponent(window.location.search.split('?')[1].split('=')[1]);
		}
		if (i == 0) {
			document.getElementById('inorout').innerHTML = "<a class='nav-link' href='SignIn.jsp' style='color: white; font-weight: bold; margin-right: 50px'>Sign In</a>";
			
		} else {
			document.getElementById('inorout').innerHTML = "<a class='nav-link' href='SignOut.jsp' style='color: white; font-weight: bold; margin-right: 50px'>Sign Out</a>";
		}
};
</script>
</head>
<body style="background-color: black;" onload="verify()">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="height: 75px; background-color: #533549">
		<div><a class='navbar-brand' href='Home.html'><button type='button' class='btn btn-warning btn-sm' style='font-size: 25px; font-weight: bold; margin-left: 100px; vertical-align: middle;'>DoMaTo</button></a></div>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0"></ul>
			<div id="inorout"></div>
		</div>
	</nav>
<div class="container-fluid" style="overflow:hidden">
            <div class="row" style="margin-left: 0px; margin-right: 10px">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xl-6 " style=" heigth=504px ;padding-left: 0px; padding-right: 10px">
                    <div id="carouselExampleInterval" class="carousel slide carousel-fade" data-ride="carousel" style="width:max-width;height: 504px; margin-left: 10px; margin-top: 50px ;margin-right:50px">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-interval="3000">
                                <img src="c1.jpg" class="d-block w-100" id="imagesize" style="height: 504px">
                            </div>
                            <div class="carousel-item">
                                <img src="c2.jpg" class="d-block w-100" alt="..." id="imagesize" style="height: 504px">
                            </div>
                            <div class="carousel-item">
                                <img src="c3.jpg" class="d-block w-100" alt="..." id="imagesize" style="height: 504px">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev" style="height: 504px"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next" style="height: 504px"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xl-6 " style="height: 504px; padding-left: 10px; padding-right: 0px; margin-left: -30px;">
                    <div style="margin-top: 50px; margin-left: 10px">
                        <h1 style="color: #EC4D37; text-align: center;font-family: monospace;">Cheese N freeze</h1>
                        <div style="padding-left: 15px; padding-right: 15px">
                            <br>
                            
                            <%
			String name, email;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String URL = "jdbc:mysql://localhost:3306/res?serverTimezone=UTC";
				conn = DriverManager.getConnection(URL, "root", "");
				ps = conn.prepareStatement("select * from hotels where Name='Cheese N freeze'");
				rs = ps.executeQuery();
				while (rs.next()) {
		%>
                                <p style="color: white; text-align: center; font-family:cursive;font-style: italic;">
                                    <%=rs.getString("Comment")%>
                                </p>
                                <hr>
                                <p style="color: #F4A950; text-align: left; padding-left: 20px;font-family: Arial, Helvetica, sans-serif;">locate destination</p>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.869688165581!2d80.18023381405527!3d12.980185518203678!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525e069c004b67%3A0x56f523b3ecbc2a06!2sCheese%20n&#39;%20Freeze!5e0!3m2!1sen!2sin!4v1604326955827!5m2!1sen!2sin" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                <%
				}
                %>
                                    <div id="comment"></div>
                                    <%
			} catch (Exception e) {
				out.println(e);
			}
			rs.close();
			ps.close();
			conn.close();
		%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	
	<div style="padding-left: 15px; padding-right: 15px; overflow:hidden;" >
        <br>
        
        <%
			String name1, email1;
			Connection conn1 = null;
			PreparedStatement ps1 = null;
			ResultSet rs1 = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String URL = "jdbc:mysql://localhost:3306/res?serverTimezone=UTC";
				conn1 = DriverManager.getConnection(URL, "root", "");
				ps1 = conn1.prepareStatement("select * from hotels where Name='Cheese N freeze'");
				rs1 = ps1.executeQuery();
				while (rs1.next()) {
		%>

        <p style="color: rgb(156, 235, 202);">
            <%=rs1.getString("Cuisine")%>
        </p>

        <p style="color: rgb(255, 255, 255);">
           <%=rs1.getString("Location")%>
        </p>

        <button class="btn btn-success" type="button"><%=rs1.getInt("Rating")%></button>
        <hr>
        <h4 style="color: rgb(95, 250, 64);">book a table/order now</h4>
        <a style="color: red;" href="https://www.zomato.com/chennai/cheese-n-freeze-adambakkam/menu" target="_blank">ZOMATO</a>
        <a style="color: rgb(250, 154, 29);" href="https://www.swiggy.com/restaurants/cheese-n-freeze-radha-nagar-chrompet-chennai-16934" target="_blank">SWIGGY</a>
        <a style="color: white;" href="https://www.dineout.co.in/chennai/cheese-n-freeze-chromepet-south-west-chennai-83680" target="_blank">DINEOUT</a>


        <%
				}
                %>
        <div id="comment"></div>
        <%
			} catch (Exception e) {
				out.println(e);
			}
			rs1.close();
			ps1.close();
			conn1.close();
		%>

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
					<a href="https://www.instagram.com/explore/tags/freezencheese/" target="_blank"><img src="insta.jpg" width="50" height="50" title="insta" alt="insta"></a>
					<a href="https://www.facebook.com/cnfpvtltd/" target="_blank"><img src="fb.jpg" width="50" height="50" title="fb" alt="fb"></a>
					<a href="https://twitter.com/SayCheeseTexas/media" target="_blank"><img src="twitter.jpg" width="50" height="50" title="twitter" alt="twitter"></a>
					
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
