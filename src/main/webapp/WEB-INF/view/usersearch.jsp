<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.Advertisement, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User search</title>
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
                    <li><a href="userpannel" id="whit">Home</a>
                    </li>
                    <li><a href="usersearch" id="whit">
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

    <div class="container top">
        <div class="row ">
            <div class="col-md-4 search-box">
                <h3>Search</h3>
                <form action="search" method="post">
                <table>
                    <tr>
                        <td>
                            <select name="category" id="" class="form-control" required>
                                <option value="" disabled selected>select your search category</option>
                                <option value="Internships">Internships</option>
                                <option value="Jobs">Jobs</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select name="domain" id="" class="form-control" required>
                                <option value="" disabled selected>Preffered Domain</option>
                                <option value="Any">Any</option>
                                <option value="Web app development">Web app development</option>
                                <option value="Mobile app development">Mobile app development</option>
                                <option value="Cvil Engineering">Cvil Engineering</option>
                                <option value="Automobile Engineering">Automobile Engineering</option>
                                <option value="Mechanical Engineering">Mechanical Engineering</option>
                                <option value="Electrical Engineering">Electrical Engineering</option>
                                <option value="Data Science">Data Science</option>
                                <option value="Networking">Networking</option>
                                <option value="Artifical Intelligence">Artifical Intelligence</option>
                                <option value="Machine Learning">Machine Learning</option>
                                <option value="Paragraph">Paragraph Writing</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select name="location" id="" class="form-control" required>
                                <option value="" disabled selected>Preffered Location</option>
                                <option value="Any">Any</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Coimbatore">Coimbatore</option>
                                <option value="Bangalore">Bangalore</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Kolkata">Kolkata</option>
                                <option value="Pune">Pune</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Punjab">Punjab</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            <input type="submit" name="" id="" value="search" class="btn btn-primary">
                        </td>
                    </tr>
                </table>
                </form>
            </div>
            
            <div class="col-md-8">
            
            <%
            
            	List<Advertisement> temp = (List<Advertisement>) request.getAttribute("data"); 
            int a = 0;
            if(temp != null){
    		for(Advertisement i :temp){
    			
			String date = i.getLastdate();
			Date lastdate =new SimpleDateFormat("yyyy-MM-dd").parse(date); 
			if(lastdate.after(new Date())){
				a = a + 1;
			}
    		}
            }
            	if(temp != null){
            %>
            <h3><%= a %> results found</h3>
            <%
            		for(Advertisement i :temp){
            			
        			String date = i.getLastdate();
        			Date lastdate =new SimpleDateFormat("yyyy-MM-dd").parse(date); 
        			if(lastdate.after(new Date())){
            		
            %>
            	
            	               <div class="collect">
                    <h4><b><%= i.getEname() %></b></h4>
                    <b>Category</b> : <%=i.getCategory()%><br>
                    <b>Domain</b> : <%=i.getDomain()%> <br>
                    <b>Expericence</b> : <%=i.getExperience()%> <br>
                    <b>Salary / Stipend</b> : Rs.<%=i.getSalary()%> <br>
                    <b>Posted on</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <b>Last date</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <b>Location</b> <br>
                    <%=i.getPosteddate()%> &nbsp&nbsp&nbsp&nbsp&nbsp <%=i.getLastdate()%> &nbsp&nbsp&nbsp&nbsp<%=i.getLocation()%><br><br>
                    <a href="${pageContext.request.contextPath}/viewdetails?id=<%=i.getId()%>" class="btn btn-primary">View</a>&nbsp&nbsp&nbsp<a href="gotowebsite?website=<%= i.getWebsite() %>" class="btn btn-primary" target="blank">Website</a>
               </div>
            			
 		<%
        			}}}
            	else{
        %>
        	<h3>0 results found</h3>
        <% 
            
        	}
            	
 		%>
            </div>
        </div>
    </div>

    <br><br>
</body>

</html>