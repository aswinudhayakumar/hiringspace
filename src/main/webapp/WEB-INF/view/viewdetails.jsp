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
                    <li><a href="userpannel.html" id="whit">Home</a>
                    </li>
                    <li><a href="usersearch.html" id="whit">
                            <div class="under">Search</div>
                        </a></li>
                    <li><a id="whit" href="about">About</a></li>
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

    <div class="container">
        <div class="row">
        
                    <%
            	
                Boolean check = (Boolean) request.getAttribute("applied");
            	Advertisement temp = (Advertisement) request.getAttribute("data"); 
            	int app = (int) request.getAttribute("total");
            	System.out.println("Hello "+temp);
            
            %>
        
            <div class="col-md-8">
                <h2> <%= temp.getEname() %> </h2><br>
                <form action="apply" method="post">
                <table class="table table-striped">
                    <tr>
                        <th>Category</th>
                        <td><%=temp.getCategory()%></td>
                    </tr>
                    <tr>
                        <th>Domain</th>
                        <td><%=temp.getDomain()%></td>
                    </tr>
                    <tr>
                        <th>Experience</th>
                        <td><%=temp.getExperience()%></td>
                    </tr>
                    <tr>
                        <th>Position</th>
                        <td><%= temp.getPosition()%></td>
                    </tr>
                    <tr>
                        <th>No.of.Vacancies</th>
                        <td>10</td>
                    </tr>
                    <tr>
                        <th>Salary / Stipend</th>
                        <td>Rs.<%=temp.getSalary()%></td>
                    </tr>
                    <tr>
                        <th>Required Knowledge</th>
                        <td><%= temp.getRequiredknowledge() %></td>
                    </tr>
                    <tr>
                        <th>Location</th>
                        <td><%=temp.getLocation()%></td>
                    </tr>
                    <tr>
                        <th>Posted on</th>
                        <td><%=temp.getPosteddate()%></td>
                    </tr>
                    <tr>
                        <th>Last date to apply</th>
                        <td><%=temp.getLastdate()%></td>
                    </tr>
                    <tr>
                        <th>Applications applied</th>
                        <td><%= app %></td>
                    </tr>
                    <tr>
                        <th>
                            Resume
                        </th>
                        <td>
                            <input type="file" name="" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Github link
                        </th>
                        <td>
                            <input type="text" name="gitlink" class="form-control" placeholder="Link for sample project (optional)">
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="uname" value="<%= session.getAttribute("username") %>">
                <input type="hidden" name="ename" value="<%= temp.getEname() %>" >
                <input type="hidden" name="uid" value="<%= session.getAttribute("userid") %>">
                <input type="hidden" name="eid" value="<%= temp.getId() %>">
                <input type="hidden" name="position" value="<%= temp.getPosition() %>">
                <input type="hidden" name="duedate" value="<%= temp.getLastdate() %>">
                <input type="hidden" name="category" value="<%= temp.getCategory() %>">
                <input type="hidden" name="mail" value="<%= session.getAttribute("mail") %>">
                <%
                	if(check == false){
                %>
                <input type="submit" name="" class="btn btn-primary" value="Apply"> <a href="gotowebsite?website=<%= temp.getWebsite() %>" class="btn btn-primary" target="blank" class="btn btn-primary">Website</a>
                <%
                	}
                	else{
                %>
                
                <p class="btn btn-success">Already applied</p> <a href="gotowebsite?website=<%= temp.getWebsite() %>" class="btn btn-primary" target="blank" class="btn btn-primary">Website</a>
                
                <%
                	}
                %>
                
                </form>
                
            </div>
        </div>
    </div>

</br></br>
</body>

</html>