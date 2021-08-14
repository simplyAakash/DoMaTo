<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoMaTo</title>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		String mobile = request.getParameter("mobile");
		if (!name.matches(".*\\d.*") && email.matches("(.)+@(.)+") && password.matches("[A-Za-z0-9]{6,}") && password.equals(cpassword)
				&& mobile.matches("[6-9][0-9]{9}")) {
			Connection conn = null;
			PreparedStatement ps = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String URL = "jdbc:mysql://localhost:3306/res?serverTimezone=UTC";
				conn = DriverManager.getConnection(URL, "root", "");
				ps = conn.prepareStatement("insert into details values(?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, password);
				ps.setString(4, mobile);
				int res = ps.executeUpdate();
				if (res != 0) {
	%>
	<script>
		window.location.href = "SignIn.jsp";
	</script>
	<%
		}
			} catch (Exception e) {
				out.println(e);
			}
			ps.close();
			conn.close();
		} 
		else {
	%>
	<script>
		window.location.href = "SignUp.html?i=1";
	</script>
	<%
		}
	%>
	
	
</body>
</html>
