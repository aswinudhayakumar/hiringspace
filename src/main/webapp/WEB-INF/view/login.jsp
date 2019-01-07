<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.showup.model.Advertisement, java.util.List, java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>login</title>
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
            <div class="col-md-6 ">
                <div class="box">
                	<%
                		String status = (String) request.getAttribute("status");
                		if(status == null)
                			status = "";
                		System.out.println(status);
                	%>
                    <br><br>
                    <h1>Sign in</h1>
                    <form action="signin" method="post">
                    <table>
                        <tr>
                            <td><input type="text" class="form-control" name="email" placeholder="Email Id"></td>
                            <% if(status.equals("error")){ %>
                            <td>&nbsp&nbsp<a data-toggle="tooltip" title="Email Id or password doesn't matched"><span
                                        class="glyphicon glyphicon-asterisk color"></span></a></td>
                        	<% } %>
                        </tr>&nbsp&nbsp
                        <tr>
                            <td><br><input type="password" class="form-control" name="pass" placeholder="password"></td>
                            <% if(status.equals("error")){ %>
                            <td>&nbsp&nbsp<a data-toggle="tooltip" title="Username or password doesn't matched"><span
                                        class="glyphicon glyphicon-asterisk color"></span></a></td>
                        	<% } %>
                        </tr>
                        <tr>
                            <td><br><input type="submit" class="btn btn-success" value="signin"></td>
                        </tr>
                        <tr>
                            <td><br><a href="#">forgot password?</a>&nbsp &nbsp <a href="${pageContext.request.contextPath}/signup">Need account? Create one.</a></td>
                        </tr>

                    </table>
                    </form>
                </div>
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
                    <a href="https://www.instagram.com/aswin_udhayakumar/">
                         &nbsp<img src="/images/insta.png" alt="" class="indicons" height="40px" width="40px">
                    </a>
                    <a href="https://plus.google.com/108618297712850551574">
                        &nbsp<img src="/images/gplus.png" alt="" class="indicons"height="40px" width="40px">
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