<%@ page language='java' contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.BoardDAO" %>
<%@ page import="dao.IDAO" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Board DBMS</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
  
</head>
<body>
<% 
	String id = null;
	if(session.getAttribute("id") != null){
		id = (String) session.getAttribute("id");		
	}
	int pageNumber = 1;
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
%>

 <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">Learningman</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="board_dbms.html">DBMS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="post.html">Sample Post</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/dbms3.png')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">                    
                         
          </div>
        </div>
      </div>
    </div>
  </header>


  <!-- Main Content -->
  <div class="container">
      <div class="row">
      <form method="post" action="writeAction.jsp" style="width:100%;height: 100%;">
		<table class="table table-striped" style="text-align: center; border: 1xp solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align: center;">글작성</th>		
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>제목 : </td>
						<td><input type="text" style="width:100%;height: 100%;" class="farm-control" placeholder="글 제목" name="dbmstitle" maxlength="100"></td>
					</tr>
					<tr>
						<td>내용 : </td>
						<td><textarea class="farm-control" placeholder="글 내용" name="dbmsContent" maxlength="2048" style="width:100%;height: 350px;"></textarea></td>
					</tr>
				</tbody>				
		</table>
		<input href="submit" class="btn btn-primary pull-right" value="작성">
      </form>

        
        </div>
  </div>

  <hr>
    <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>
</html>