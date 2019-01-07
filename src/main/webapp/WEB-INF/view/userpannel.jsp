<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.*, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User pannel</title>
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
                    <li><a href="userpannel" id="whit">
                            <div class="under">Home</div>
                        </a></li>
                    <li><a href="usersearch" id="whit">Search</a></li>
                    <li><a href="about" id="whit">About</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    	<table>
						<tr>
							<td style="color:white;padding:5px;">Hello, <%= session.getAttribute("username") %> &nbsp&nbsp</td>
							<td><a href="logout"><button class="btn btn-primary bb">Logout</button></a></td>
						</tr>
					</table>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container" style="padding:0px;">
        <div class="row top">
            <div class="col-md-4">
                <h3>Search applied categories</h3>
                <form action="getuserapplied" method="post">
                <table>
                    <tr>
                        <td>
                            <select name="category" id="" class="form-control">
                                <option value="" disabled selected>Select Category</option>
                                <option value="Internships">Internships</option>
                                <option value="Jobs">Jobs</option>
                            </select>
                        </td>
                        <td>
                           <input type="submit" class="btn btn-primary">
                        </td>
                    </tr>
                </table>
                </form>
            </div>
        </div>
        <%
        	String category = (String) request.getAttribute("category");
        	List<Applied> temp = (List<Applied>) request.getAttribute("data");
        	String result = null;
        	int n = 1;
        	if(category!=null && temp.size() != 0){
        %>
        <div class="row" style="padding:0px;">
        <div class="col-md-12 col-sm-12 col-xs-12" style="padding:0px;">
            <h2><%= category %> Applied</h2>
            <table class="table table-bordered">
                <tr>
                    <th>Company</th>
                    <th>Position</th>
                    <th>Due date (yyyy/mm/dd)</th>
                    <th>Status</th>
                </tr>
                <%
                	for(Applied i : temp){
                	if(i.getStatus() == 0){
                		result = "Under processing";
                	}
                	else if(i.getStatus() == 1){
                		result = "Selected";
                	}
                	else{
                		result = "Not selected";
                	}
                %>
               
               <tr>
               		<td><a href="${pageContext.request.contextPath}/viewdetails?id=<%= i.getAid() %>"><%= i.getEname() %></a></td>
               		<td><%= i.getPosition() %></td>
               		<td><%= i.getDuedate() %></td>        		
               		<td><%= result %></td>
               </tr>
        <%
        	n++;
            }
        	}
        	else{
        %>
        <h3 style="padding-left:5%">No results found</h3>
		<%
        	}	
		%>
		            </table>
            
        </div>
		</div>
    </div>

</body>

</html>