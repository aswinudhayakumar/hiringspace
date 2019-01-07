<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.Advertisement, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Employee Pannel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/images/logo.png" size="16x16">
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap-theme.css">
<script
	src="/js/jquery.min.js"></script>
<script
	src="/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/css/style_2.css">
</head>

<body>
	<nav class="navbar">
		<div class="container-fluid">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#main">
					<span id="men">Menu</span>
				</button>
				                <a href="${pageContext.request.contextPath}/" class="navbar-brand" id="hed">
                <table>
                	<tr>
                		<td><img src="/images/logo.png" height="40px" width="40px"></td>
                		<td>Hiring space</td>
                	</tr>
                </table>
                </a>
			</div>

			<div class="collapse navbar-collapse" id="main">
				<ul class="nav navbar-nav navbar-left">
					<li><a
						href="${pageContext.request.contextPath}/employerpannel" id="whit">
							<div class="under">Home</div>
					</a>
					<li><a href="${pageContext.request.contextPath}/employeradd"
						id="whit"> Add Advertisement </a></li>
					<li><a href="about" id="whit">About</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					
					<table>
						<tr>
							<td style="color:white;">Hello, <%= session.getAttribute("empname") %> &nbsp&nbsp</td>
							<td><a href="logout"><button class="btn btn-primary bb">Logout</button></a></td>
						</tr>
					</table>
				 
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
		<h2 style="margin-bottom:0px;">Upcoming Recruitments</h2>
			<%
				List<Advertisement> temp = (List<Advertisement>) request.getAttribute("data");
				if(temp.size() != 0){
				
				for (Advertisement i : temp) {
					
				String date = i.getLastdate();
				Date lastdate =new SimpleDateFormat("yyyy-MM-dd").parse(date); 
				
				if(lastdate.after(new Date())){
				
			%>
			<div class="col-md-3 box">
				<br>
				<h4>
					<%=i.getCategory()%>
				</h4>
				<b>Posted for</b> : <%=i.getDomain()%> <br> <b>Position</b> : <%=i.getPosition()%> <br>
				<b>Posted Date</b> : <%=i.getPosteddate()%> <br> <b>Last Date</b> : <%=i.getLastdate()%> <br>
				<br> <a href="${pageContext.request.contextPath}/viewaddetails?id=<%=i.getId() %>" class="btn btn-primary">View form</a> <a href="${pageContext.request.contextPath}/select?id=<%=i.getId() %>" class="btn btn-primary">Select applied</a> <br>
				<br>
			</div>
			
			<div class="col-md-1"></div>
						<%
				}
				}
				}
				else{
					 %>
					 <br>
					<h4>No Upoming Recuritments left</h4>
					<%
				}
			%>
		</div>
		
				<div class="row">
				<h2 style="margin-bottom:0px;">Completed Recruitments</h2>
			<%
				if(temp.size() != 0){
				
				for (Advertisement i : temp) {
					
				String date = i.getLastdate();
				Date lastdate =new SimpleDateFormat("yyyy-MM-dd").parse(date); 
				
				if(lastdate.before(new Date())){
				
			%>
			<div class="col-md-3 box">
				<br>
				<h4>
					<%=i.getCategory()%>
				</h4>
				<b>Posted for</b> : <%=i.getDomain()%> <br> <b>Position</b> : <%=i.getPosition()%> <br>
				<b>Posted Date</b> : <%=i.getPosteddate()%> <br> <b>Last Date</b> : <%=i.getLastdate()%> <br>
				<br> <a href="${pageContext.request.contextPath}/viewaddetails?id=<%=i.getId() %>" class="btn btn-primary">View form</a> <a href="${pageContext.request.contextPath}/viewapp?id=<%=i.getId() %>" class="btn btn-primary">View selected</a> <br>
				<br>
			</div>
			
			<div class="col-md-1"></div>
						<%
				}
				}
				}
				else{
					 %>
					 <br>
					<h4 >No Completed Recuritments left</h4>
					<%
				}
			%>
		</div>
		
	</div>

<br><br>
</body>

</html>