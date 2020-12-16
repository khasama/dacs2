<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["mau"])){
            $mau = $_POST["mau"];
            $sql = "
                SELECT * FROM tb_mau
                WHERE Mau = :mau
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":mau", $mau, PDO::PARAM_STR);
            $pre->execute();
            $count = $pre->rowCount();
            if($count === 0){
                $sql = "
                    INSERT INTO tb_mau (idMau, Mau) 
                    VALUES (NULL, :mau)
                ";
                
                $pre = $conn->prepare($sql);
                $pre->bindParam(":mau", $mau, PDO::PARAM_STR);
                $pre->execute();
                header("location:../?p=show-color");
            }else {
                echo "<script> alert('Màu đã tồn tại trong hệ thống'); </script>";
                echo "<script> window.history.back(); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["mau"])){
            $mau = $_POST["mau"];
            $idMau = $_POST["idMau"];
            $sql = "
                UPDATE tb_mau
                SET Mau = :mau
                WHERE idMau = :idMau
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idMau", $idMau, PDO::PARAM_INT);
            $pre->bindParam(":mau", $mau, PDO::PARAM_STR);
            $pre->execute();
            header("location:../?p=show-color");   
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idMau = filter_input(INPUT_POST, 'idMau');
        $sql = "
            DELETE FROM tb_mau
            WHERE idMau = :idMau;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idMau", $idMau, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-color");   
    }
?>