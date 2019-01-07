<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.Advertisement, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>View details</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="/images/logo.png" size="16x16">
	<link rel="stylesheet" type="text/css"href="/css/bootstrap.css">
	<link rel="stylesheet" type="text/css"href="/css/bootstrap-theme.css">
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/css/style_2.css">
</head>

<body>
    <nav class="navbar">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main">
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
					<li><a id="whit" href="about">About</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
						<table>
						<tr>
							<td style="color:white;padding:5px;">Hello, <%= session.getAttribute("empname") %> &nbsp&nbsp</td>
							<td><a href="logout"><button class="btn btn-primary bb">Logout</button></a></td>
						</tr>
					</table>
				</ul>
            </div>
        </div>
    </nav>

	<%
		Advertisement temp =  (Advertisement) request.getAttribute("data");
	%>

    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2>View your Advertisement</h2><br>
                <table class="table table-striped">
                    <tr>
                        <th>Category</th>
                        <td><%= temp.getCategory() %></td>
                    </tr>
                    <tr>
                        <th>Apply for</th>
                        <td><%= temp.getDomain() %></td>
                    </tr>
                    <tr>
                        <th>Experience</th>
                        <td><%= temp.getExperience() %></td>
                    </tr>
                    <tr>
                        <th>Position</th>
                        <td><%= temp.getPosition() %></td>
                    </tr>
                    <tr>
                        <th>No.of.Vacancies</th>
                        <td><%= temp.getVacancies() %></td>
                    </tr>
                    <tr>
                        <th>Salary / Stipend</th>
                        <td><%= temp.getSalary() %></td>
                    </tr>
                    <tr>
                        <th>Required Knowledge</th>
                        <td><%= temp.getRequiredknowledge() %></td>
                    </tr>
                    <tr>
                        <th>Location</th>
                        <td><%= temp.getLocation() %></td>
                    </tr>
                    <tr>
                        <th>Posted on</th>
                        <td><%= temp.getPosteddate() %></td>
                    </tr>
                    <tr>
                        <th>Last date to apply</th>
                        <td><%= temp.getLastdate() %></td>
                    </tr>
                    <tr>
                        <th>Applications applied</th>
                        <td><%= temp.getCategory() %></td>
                    </tr>
                </table>
                
                </form>
            </div>
        </div>
    </div>

</body>

</html>