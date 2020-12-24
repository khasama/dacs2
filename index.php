<?php
    session_start();
    require_once "admin/dbcon/function.php";
    if( isset($_GET["p"]) ){
        $p = $_GET["p"];
    }else $p = "";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="public/css/main.css">
    <link rel="stylesheet" href="public/css/user.css">
    <link rel="stylesheet" href="public/css/rps.css">
    <link rel="stylesheet" href="public/css/bootstrap-rating.css">
    <script src="public/js/bootstrap-rating.min.js"></script>
    <title>Document</title>
    
</head>
<body>
    <div class="wrapper">
        <!-- header -->
        <?php
            require_once "blocks/header.php";
        ?>
        <!-- end header -->

        <!-- content -->
        <div class="content">
            <?php
                switch($p){

                    case "thong-tin" : 
                        if( isset($_GET["idSP"]) && isset($_GET["name"]) ){
                            require "pages/thongtin.php"; break;
                        }else{
                            require "pages/home.php"; break;
                        }
                    case "loai" : 
                        if( isset($_GET["idLoai"]) ){
                            require "pages/timloai.php"; break;
                        }else{
                            require "pages/home.php"; break;
                        }
                    case "loai-san-pham" : 
                        if( isset($_GET["idLoaiSP"]) ){
                            require "pages/timloaisp.php"; break;
                        }else{
                            require "pages/home.php"; break;
                        }
                    case "tim-kiem" : 
                        if( isset($_GET["q"]) ){
                            require "pages/timtk.php"; break;
                        }else{
                            require "pages/home.php"; break;
                        }
                    case "gio-hang" : require "pages/cart.php"; break;
                    case "nguoi-dung" : require "pages/info.php"; break;
                        
                    
                    default : require "pages/home.php";
                }
            ?>
        </div>
        <!-- end content -->

        <!-- footer -->
        <?php
            require_once "blocks/footer.php";
        ?>
        <!-- end footer -->
    </div>
    
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="public/js/main.js"></script>
    <script src="public/js/dn-dk.js"></script>
    <?php
        if( isset($_SESSION["stk"]) ){
            echo "<script>erroLogin();</script>";
        }
    ?>
</body>
</html>
