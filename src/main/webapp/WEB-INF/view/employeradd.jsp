<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Advertisement</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/images/logo.png" size="16x16">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-theme.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="/css/style_2.css" />
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
                    <li><a href="employerpannel" id="whit">
                            Home
                        </a>
                    <li><a href="employeradd" id="whit">
                            <div class="under">Add Advertisement</div>
                        </a></li>
                    <li><a href="about" id="whit">About</a></li>
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

    <div class="container">
        <div class="row ">
            <div class="col-md-4"></div>
            <div class="col-md-8">
                <h2>Add Advertisement</h2>
                <form action="${pageContext.request.contextPath}/addtoadvertise" method="post">
                <table border-collapse="collapse" class="">
                    <tr>
                        <th>Category</th>
                        <td>
                            <select name="category" id="" class="form-control" required>
                                <option value="" disabled selected>select your search category</option>
                                <option value="Internships">Internships</option>
                                <option value="Jobs">Jobs</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Domain</th>
                        <td>
                            <select name="domain" id="" class="form-control" required>
                                <option value="" disabled selected>Select the Doamin</option>
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
                        <th>Experience</th>
                        <td>
                            <input type="number" name="experience" id="" class="form-control" placeholder="Enter Experience needed" required>
                        </td>
                    </tr>
                    <tr>
                        <th>Position</th>
                        <td>
                            <input type="text" name="position" id="" class="form-control" placeholder="Enter Position " required>
                        </td>
                    </tr>
                    <tr>
                        <th>No.of.vacancies</th>
                        <td>
                            <input type="text" name="vacancies" id="" class="form-control" placeholder="Enter No.of.vacancies" required>
                        </td>
                    </tr>
                    <tr>
                        <th>Salary / Stipend</th>
                        <td>
                            <input type="number" name="salary" id="" class="form-control" placeholder="Enter Salary / Stipend" required>
                        </td>
                    </tr>
                    <tr>
                        <th>Required Knowledge</th>
                        <td>
                            <textarea name="knowledge" id="" cols="20" rows="2" required></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Location</th>
                        <td>
                                <select name="location" id="" class="form-control" required>
                                <option value="" disabled selected>Location of a company</option>
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
                    	<th>Company website</th>
                    	<td>
                    		<input type="text" name="website" class="form-control" placeholder="(Eg) www.showup.com" required>
                    	</td>
                    </tr>
                    <tr>
                        <th>Last Date to apply</th>
                        <td>
                            <input type="date" name="lastdate" id="" class="form-control" required>
                        </td>
                    </tr>
                </table> <br>
                <input type="submit" name="" id="" class="btn btn-primary"> 
                </form>
                
            </div>
        </div>
    </div>
<br>
</body>

</html>