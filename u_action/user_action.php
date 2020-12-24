<?php
    session_start();
    require_once "../admin/dbcon/ConDB.php";
    if(isset($_POST["regis"])){
        if($_POST["eml"] !==  "" && $_POST["sdt"] !==  "" && $_POST["tdndk"] !==  "" && $_POST["pwdk"] !==  "" && $_POST["rpwdk"] !==  ""){
            if($_POST["pwdk"] === $_POST["rpwdk"]){
                $eml = $_POST["eml"];
                $sdt = $_POST["sdt"];
                $tdn = $_POST["tdndk"];
                $pw = $_POST["pwdk"];
                $hpw = password_hash($pw, PASSWORD_DEFAULT);
                $checktk = "
                    SELECT idUser FROM tb_user
                    WHERE TaiKhoan = :tdn
                    
                ";
                $pre = $conn->prepare($checktk);
                $pre->bindParam(":tdn", $tdn, PDO::PARAM_STR);
                $pre->execute();
                $counttk = $pre->rowCount();
                $checkeml = "
                    SELECT idUser FROM tb_user
                    WHERE Email = :eml
                    
                ";
                $pre = $conn->prepare($checkeml);
                $pre->bindParam(":eml", $eml, PDO::PARAM_STR);
                $pre->execute();
                $counteml = $pre->rowCount();
                if( $counteml > 0){
                    echo '<script>alert("Email đã tồn tại !!!");</script>';
                    echo '<script> window.history.back(); </script>';
                }else if($counttk > 0){
                    echo '<script>alert("Tên đăng nhập đã tồn tại");</script>';
                    echo '<script> window.history.back(); </script>';
                }else if($counteml === 0 && $counttk === 0){
                    $sql = "
                        INSERT INTO tb_user (idUser, Email, TaiKhoan, MatKhau, Avatar, idLoaiTK, HoTen, DiaChi, SDT) 
                        VALUES (NULL, :eml, :tdn, :pw, 'uk.jpg', '2', '', '', :sdt);
                    ";
                    $pre = $conn->prepare($sql);
                    $pre->bindParam(":eml", $eml, PDO::PARAM_STR);
                    $pre->bindParam(":tdn", $tdn, PDO::PARAM_STR);
                    $pre->bindParam(":pw", $hpw, PDO::PARAM_STR);
                    $pre->bindParam(":sdt", $sdt, PDO::PARAM_STR);
                    $pre->execute();
                    echo '<script>alert("Đăng ký thành công !!!!");</script>';
                    header("Location: ../");
                }
            }
        }else{
            echo '<script>alert("Yêu cầu nhập đầy đủ");</script>';
        }
    }
    if(isset($_POST["login"])){
        if($_POST["tdn"] !==  "" && $_POST["pw"] !==  ""){
            $tk = $_POST["tdn"];
            $pw = $_POST["pw"];
            $hpw = "";
            $sql = "
                SELECT * FROM tb_user 
                WHERE TaiKhoan = :tk
                OR Email = :tk
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":tk", $tk, PDO::PARAM_STR);
            $pre->execute();
            $acc = $pre->fetchAll();
            foreach($acc as $row):
                if (password_verify($pw, $row["MatKhau"])) {
                    $_SESSION["idUser"] = $row["idUser"];
                    $_SESSION["TaiKhoan"] = $row["TaiKhoan"];
                    $_SESSION["img"] = $row["Avatar"];
                    $_SESSION["loai"] = $row["idLoaiTK"];
                    //unset($_SESSION['stk']);
                    header("Location: ../");
                }else {
                    $_SESSION["stk"] = "Sai tên đăng nhập hoặc mật khẩu !!";
                    // echo '<script>alert("Yêu cầu nhập đầy đủ");</script>';
                    echo '<script> window.history.back();</script>';
                }
            endforeach;
        }else{
            echo '<script>alert("Yêu cầu nhập đầy đủ");</script>';
            echo '<script> window.history.back();</script>';
        }
    }
    if(isset($_POST["dang"])){
        if($_POST["cmt"] !==  ""){
            $cmt = $_POST["cmt"];
            $idUser = $_POST["idUser"];
            $idSP = $_POST["idSP"];
            $sql = "
                INSERT INTO tb_comment (idCmt, idUser, idSP, NoiDung, NgayTao) 
                VALUES (NULL, :idUser, :idSP, :cmt, CURRENT_TIME());
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idUser", $idUser, PDO::PARAM_INT);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->bindParam(":cmt", $cmt, PDO::PARAM_STR);
            $pre->execute();
            echo "<script> window.history.back(); </script>";
        }else{
            echo '<script>alert("Yêu cầu nhập đầy đủ");</script>';
            echo "<script> window.history.back(); </script>";
        }
    }
?>