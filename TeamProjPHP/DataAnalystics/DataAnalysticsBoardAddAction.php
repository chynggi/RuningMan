<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>게시글 입력 시스템</title>
    </head>
    <body>
        <h1>board_insert_action.php</h1>
        <?php
        require 'BoardDaoFunction.php';
        insert();
            //헤더함수를 이용하여 리스트 페이지로 리다이렉션
            header("Location: ./DataAnalysticsBoardList.php");
        ?>
    </body>
</html>