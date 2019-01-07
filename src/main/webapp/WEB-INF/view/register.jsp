<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/images/logo.png" size="16x16">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-theme.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" media="screen" href="/css/style.css" />
		<style>
		h3{
			margin : 0px;
		}
	</style>
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
                <li><a id="whit" href="about"><div class="under">About</div></a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-4 ">
            	
            	<%
            		String status = (String) request.getAttribute("status");
            		String pass = (String) request.getAttribute("password");
            		if(status == null)
            			status = "0";
            		if(pass == null)
            			pass = "0";
            	%>
            
                <div class="box">
                    <br><br>
                    <h1>Sign up</h1>
                    <table>
                    <form action="adduser" method="post">
                        &nbsp&nbsp
                        <tr>
                            <td><input type="text" class="form-control" name="name" placeholder="Name or Organaization name" required></td>
                        </tr>
                        <tr>
                                <td><br><input type="email" class="form-control" name="email" placeholder="email" required></td>
                                <% if(status.equals("error")){ %>
                                <td>&nbsp&nbsp<a data-toggle="tooltip" title="Email ID alredy exists"><span
                                            class="glyphicon glyphicon-asterisk color"></span></a></td>
                                <% } %>
                        </tr>
                        <tr>
                                <td><br><input type="number" class="form-control" name="age" placeholder="age" required></td>
                        </tr>
                        <tr>
                                <td><br><input type="password" class="form-control" name="password" placeholder="password" required></td>
                                <% if(pass.equals("error")){ %>
                                <td>&nbsp&nbsp<a data-toggle="tooltip" title="Password must have 8 characters"><span
                                            class="glyphicon glyphicon-asterisk color"></span></a></td>
                        		<% } %>
                        </tr>       
                        <tr>
                                <td>
                                    <br>
                                    <input type="radio" name="emporuser" value="student" required> Student &nbsp <input type="radio" name="emporuser" value="employer" required> Employer
                                </td>
                            </tr>               
                        <tr>
                            <td><br><input type="submit" class="btn btn-success" value="signup"></td>
                        </tr>
                        </form>
                        <tr>
                            <td><br><a href="${pageContext.request.contextPath}/">If you have already created an account signin.</a></td>
                        </tr>

                    </table>
                </div>
            </div>
            <div class="col-md-2">

            </div>
            <div class="col-md-6">
                <br><br><br>
                <div class="row">
                	<div class="col-md-3"></div>
                	<div class="col-md-6">
                		<img src="/images/logo.png" width="100%" height="100%">
                	</div>
                	<div class="col-md-3"></div>
                </div>
                <h3>Get Internships, Jobs, Trainings</h3><br>
                <div class="row">
                    <div class="col-md-6 col-xs-6 col-sm-6">
                        <img src="/images/gifmojo.gif" width="100%" id="intern">
                    </div>
                    <div class="col-md-6 col-xs-6 col-sm-6">
                        <img src="/images/job.gif" width="100%" id="intern">
                    </div>
                </div> <br><br>
                <div class="icons">
                    Follow us on &nbsp
                    <a href="https://twitter.com/Aswin32454459">
                         <img src="/images/twitter.png" alt="" class="indicons" height="40px" width="40px">
                    </a>
                    &nbsp
                    <a href="https://www.instagram.com/aswin_udhayakumar/">
                         <img src="/images/insta.png" alt="" class="indicons" height="40px" width="40px">
                    </a>
                    &nbsp
                    <a href="https://plus.google.com/108618297712850551574">
                        <img src="/images/gplus.png" alt="" class="indicons"height="40px" width="40px">
                    </a>
                    <br><br>
                    <center>© copyrights reserved - 18</center> 
                </div>
            </div>
        </div>
    </div>


</body>
<br><br>
</html>