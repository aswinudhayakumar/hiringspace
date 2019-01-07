<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>About us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/images/logo.png" size="16x16">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="/css/style.css" />
    <link rel="stylesheet" href="/css/style_2.css">
	<style>
        body{
            background: url("/images/design-tools.jpg");
        }
		h3{
			margin : 0px;
        }
        .about-box{
            border-top:5px solid #78e08f;
            background: white;
            padding: 20px;
        }
        .below-box{
            background: #ecf0f1;
            padding: 27px;
            box-shadow: 5px 5px 10px black , -5px -2px 5px black;
        }
        .line{
            background: gray;
            padding: 0px;
            width: 4px;
            height: 150px;
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
                   
            <%
            	String user = (String) session.getAttribute("username");
            	String emp = (String) session.getAttribute("empname");
            	if(emp != null){
            %>
            		 <ul class="nav navbar-nav navbar-left">
            		<li><a href="userpannel.html" id="whit">Home</a></li>
                    <li><a href="usersearch.html" id="whit">Add Advertisement</a></li>
                    <li><a id="whit" href="about"><div class="under">About</div></a></li>
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                    	<table>
						<tr>
							<td style="color:white;padding:5px;">Hello, <%= session.getAttribute("empname") %> &nbsp&nbsp</td>
							<td><a href="logout"><button class="btn btn-primary bb">Logout</button></a></td>
						</tr>
					</table>
                </ul>
            <%
            	}
            	else if(user != null){
            %>
            		<ul class="nav navbar-nav navbar-left">
                    <li><a href="userpannel" id="whit">Home</a></li>
                    <li><a href="usersearch" id="whit">Search</a></li>
                    <li><a href="about" id="whit"><div class="under">About</div></a></li>
                    </ul>
                    
                 <ul class="nav navbar-nav navbar-right">
                    	<table>
						<tr>
							<td style="color:white;padding:5px;">Hello, <%= session.getAttribute("username") %> &nbsp&nbsp</td>
							<td><a href="logout"><button class="btn btn-primary bb">Logout</button></a></td>
						</tr>
					</table>
                </ul>
                
            <%
            	}
            	else{
            %>
            		<ul class="nav navbar-nav navbar-left">
                    <li><a href="about" id="whit" ><div class="under">About</div></a></li>
                    </ul>
            <%
            	}
            %>
            </div>
        </div>
    </nav>

    <div class="container" style="padding:0px;">
        <br><br><br>
        <div class="row about-box">
            <div class="col-md-12">
                <div class="row" style="margin:0px;">
                    <div class="col-md-5">
                        <img src="/images/m2.png" alt="" height="250px">
                    </div>
                    <div class="col-md-6">
                        <h1><b>I'm Mr.Aswin Udhayakumar</b></h1>
                        <p style="color:#5f27cd;">UI/UX Designer and Java Developer</p> <br>
                        <p>Hello, I am a web developer and android enthusiast would love to develop an creative idea into whole new innovative product. I want to look back on my career and be proud of the work, and be proud that I tried everything.</p><br>
                        <button class="btn btn-success">Hire me</button>&nbsp<button class="btn btn-success">Download Resume</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br>
    <div class="container-fluid below-box">
        <div class="row" style="margin:0px;">
            <div class="col-md-12" style="padding:0px;">
                <div class="row">
                    <div class="col-md-1 col-xs-0"></div>
                    <div class="col-md-2 col-xs-5">
                        <h3 style="margin-bottom:0px;"><b>About me</b></h3>
                        <p>Know more about me</p>
                        <img src="/images/new.jpg" alt="" height="127px" width="127px" style="border-radius:50%;border:5px solid silver;">
                    </div>
                    <br>
                    <div class="col-md-1  col-xs-4 line" style="margin-left:15px;"></div>
                    <div class="col-md-7  col-xs-5" style="padding:0px;padding-left:15px;">
                        Hi, I am an engineering student from karpagam college of engineering I love to explore more techy gadjets
                        I also got an interest and some good skills in playing piano.<br><br>
                        <b>Mail : </b><a href="">aswiniu03@gmail.com</a><br>
                        <br>
                        <b>Follow me at</b> <br><br>
                        <div class="icons">
                                <a href="https://twitter.com/Aswin32454459">
                                     <img src="/images/twitter.png" target="_blank" alt="" class="indicons" height="40px" width="40px">
                                </a>
                                <a href="https://www.instagram.com/aswin_udhayakumar/">
                                     &nbsp<img src="images/insta.png" target="_blank" alt="" class="indicons" height="40px" width="40px">
                                </a>
                                <a href="https://plus.google.com/108618297712850551574">
                                    &nbsp<img src="/images/gplus.png" target="_blank" alt="" class="indicons"height="40px" width="40px">
                                </a>
                                                                <a href="https://github.com/aswinudhayakumar">
                                    &nbsp<img src="/images/github.png" target="_blank" alt="" class="indicons"height="40px" width="40px">
                                </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 </body>
 </html>
  