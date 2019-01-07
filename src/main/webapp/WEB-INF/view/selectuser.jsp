<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.*, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Select People</title>
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
                    <button class="btn btn-primary bb">Logout</button>
                </ul>
            </div>
        </div>
    </nav>
<%
	List<Applied> temp = (List<Applied>) request.getAttribute("applied");          
%>

<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8 col-xs-8">
        	<% 	if(temp.size() != 0){ 
        	for(Applied i : temp){%>
        	<h2>Select applied users for <%= i.getPosition() %></h2>
        	(click the name of candidate to download the respective resume)<br><br>
        	<%
        	break;
        	}
        	%>
            <table class="table table-bordered">
            <% 
            for(Applied i : temp){ %>
            <% } %>
                <tr>
                    <th>Name</th>
                    <th>Github</th>
                    <th>mail</th>
                    <th>Select</th>
                </tr>
                <% for(Applied i : temp){ 
                	if(i.getStatus() == 0 ){
                %>
                <tr>
                <% } 
                else{
                %>
                <tr class="success">
                <% } %>
                    <td> <%= i.getUname() %> </td>
                    <td> <%= i.getGitlink() %> </td>
                    <td> <%= i.getMail() %> </td>
                    <% if(i.getStatus() == 0 ){ %>
                    <td> <a href="${pageContext.request.contextPath}/selecthim?uid=<%=i.getUid() %>&aid=<%=i.getAid() %>"> select </a> </td>
                    <% } 
                	else{
                	%>
                	<td> <a href="${pageContext.request.contextPath}/deselecthim?uid=<%=i.getUid() %>&aid=<%=i.getAid() %>"> De-select </a> </td>
                	<% } %>
                </tr>
                <% } %>
            </table>
            <%
            }
        	else{
        	%>
        	<h2>0 people applied still now</h2>
        	<%
        	}
        	%>
        </div>
    </div>
</div>
</body>
</html>