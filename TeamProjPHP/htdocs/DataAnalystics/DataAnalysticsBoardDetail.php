<!DOCTYPE html>
<html>
    <head>
        <title>러닝맨 데이터 분석 게시판 게시글 내용</title>
        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  		<meta name="description" content="">
  		<meta name="author" content="">
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<link href="./css/bootstrap.css" rel='stylesheet' type='text/css'>
  		<link href="./css/boost.css" rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="./css/bootstrap.css">
        <script type="text/javascript" src="./js/bootstrap.js"></script>
	
    	<style>
            table {
                table-layout: fixed;
                word-wrap: break-word;
            }
        </style>        
    </head>

    <body>
        <?php
        include "../static/header.php"
        ?>
  		<hr>
  		<div class="container">
  		<?php
            require_once('../static/BoardDAOFunction.php');
            $key    = $_GET["board_no"];            
            $oneRow = selectOne($key,"DABOARD");            
        ?>
  			<table class="table table-bordered" style="width:100%">
  		<?php
            //result 변수에 담긴 값을 row 변수에 저장하여 테이블에 출력
            if($oneRow != null) {
        ?>
        	<tr>
                <td style="width:5%">작성자</td>
                <td style="width:40%" colspan="5">
                    <?php
                        echo $oneRow["ID"];
                    ?>
                </td>
            </tr>
            <tr>
                <td style="width:5%">제목</td>
                <td style="width:24%">
                    <?php
                        echo $oneRow["TITLE"];
                    ?>
                </td>
                <td style="width:5%">번호</td>
                <td style="width:3%">
                    <?php
                        echo $oneRow["NO"];
                    ?>
                </td>
                <td  style="width:5%">작성일</td>
                <td  style="width:3%">
                    <?php
                        echo $oneRow["XDATE"];
                    ?>
                </td>
            </tr>
  			<tr>
                <td colspan="6">               
                    <?php 
                        echo $oneRow["CONTENT"]
                    ?>                   
                </td>
            </tr>
            <?php
            }
            ?>
            </table>  		
  			<br>
        	&nbsp;&nbsp;&nbsp;
        	<a class="btn btn-primary2" href="./DataAnalysticsBoardUpdate.php?board_no=<?=$oneRow["NO"]?>">수정</a>
			<a class="btn btn-primary2" href="./DataAnalysticsBoardDelete.php?board_no=<?=$oneRow["NO"]?>">삭제</a>
        	<a class="btn btn-primary2" href="./DataAnalysticsBoardList.php.php">
        	리스트 이동
        	</a>
        	<?php
            include "../static/footer.php"
            ?>    
        </div>  
    </body>
</html>