<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Clean Blog - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="./static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="./static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="./static/css/clean-blog.css" rel="stylesheet">
  <link href="./static/css/login.css" rel="stylesheet">
  <link href="./static/css/member.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="index.php">Learning Man</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index">About</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="OOP_Board/oop_B_index.php">OOP</a></li>
					<li class="nav-item"><a class="nav-link" href="post">DBMS</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="../ServerSide/List.do">Server
							Side</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Frame
							Works</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Data
							Analystics</a></li>
				</ul>
			</div>
		</div>
	</nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('./static/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <span class="subheading">Team Project</span>
            <h1>Learning Man</h1>
            
            <%if(session.getAttribute("name") == null || session.getAttribute("name").equals(""))
            	{%>
            <p class="M_btn">
            	<a class="col-lg-8 col-md-10 mx-auto" href="../login/Login.jsp">로그인</a>
            	<a class="col-lg-8 col-md-10 mx-auto" href="../member/member.jsp">회원가입</a>            	
            </p>
            <%}
            else { String user_name = (String)session.getAttribute("name");
            	%>
            
            
            <p class="M_btn">
            	<a class="col-lg-8 col-md-10 mx-auto"><strong><%=user_name%></strong>님 환영합니다.</a>
            	<a class="col-lg-8 col-md-10 mx-auto" href="../member/MemberInfo.do">본인정보 수정</a>           	
            	<a class="col-lg-8 col-md-10 mx-auto" href="../login/logout.do">로그아웃</a>           	
            </p>
            <%
            }
            %>
          </div>
        </div>
      </div>
    </div>
  </header>
	<style>
		.M_btn>a {
			text-decoration: none;
			color:#fff;
		}
        .M_btn>p {
			text-decoration: none;
			color:#fff;
		}
		.M_btn>a:hover {
			color:#000;
		}
	</style>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-10 mx-auto">
        <div class="post-preview">
            <h2 class="post-title">
				머신러닝반 팀프로젝트
            </h2>
            <h3 class="post-subtitle" style="margin-bottom: 80px;">
              	2019 머신러닝반 교육커리큘럼 소개
            </h3>
            <h3 class="post-mtitle">
              	제작자
            </h3>
            <h3 class="post-mtitle">
              	OOP - 이동탁
            </h3>
            <h3 class="post-mtitle">
              	DBMS - 송승연
            </h3>
            <h3 class="post-mtitle">
              	Server Side - 최용규
            </h3>
            <h3 class="post-mtitle">
              	Frame Works - 성유진 
            </h3>
            <h3 class="post-mtitle">
              	Data Analystics - 엄윤환
            </h3>
        </div>
        <hr>
		<div class="post-preview" style="margin-bottom: 80px;">
            <h2 class="post-title" style="margin-bottom: 50px;">
				CONTENT
            </h2>
            <div style="text-align: center;">
            	<p>
            		<a href="#">OOP</a>
            	</p>
            	<p>
            		<a href="#">DBMS</a>
            	</p>
            	<p>
            		<a href="#">Server side</a>
            	</p>	
            </div>
            
        </div>
        <hr>
	<!-- Footer -->
	

<!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">           
          </ul>
          <p class="copyright text-muted">Copyright &copy; Vision 2019</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="./static/vendor/jquery/jquery.min.js"></script>
  <script src="./static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./static/js/jquery.dataTables_kor.js"></script>
  <script src="./static/js/dataTables.bootstrap4.js"></script>
  <!-- Custom scripts for this template -->
  <script src="./static/js/clean-blog.min.js"></script>
  <script src="./static/js/contents_any.js"></script>
  <script src="./static/js/demo/datatables-demo.js"></script>
  
  
  

</body>

</html>
