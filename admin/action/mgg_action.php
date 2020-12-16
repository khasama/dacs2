<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["mgg"]) && !empty($_POST["ptg"])){
            $mgg = $_POST["mgg"];
            $ptg = $_POST["ptg"];
            $sql = "
                SELECT * FROM tb_magiamgia
                WHERE Ma = :mgg
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":mgg", $mgg, PDO::PARAM_STR);
            $pre->execute();
            $count = $pre->rowCount();
            if($count === 0){
                $sql = "
                    INSERT INTO tb_magiamgia (idMGG, Ma, GiamGia, NgayTao) 
                    VALUES (NULL, :mgg, :ptg, CURRENT_DATE())
                ";
                
                $pre = $conn->prepare($sql);
                $pre->bindParam(":mgg", $mgg, PDO::PARAM_STR);
                $pre->bindParam(":ptg", $ptg, PDO::PARAM_INT);
                $pre->execute();
                header("location:../?p=show-magiamgia");
            }else {
                echo "<script> alert('Mã đã tồn tại trong hệ thống'); </script>";
                echo "<script> window.history.back(); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["auto-add"])){
        $permitted_chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        if(!empty($_POST["ptg"])){
            $mgg = substr(str_shuffle($permitted_chars), 0, 6);
            $ptg = $_POST["ptg"];
            $sql = "
                INSERT INTO tb_magiamgia (idMGG, Ma, GiamGia, NgayTao) 
                VALUES (NULL, :mgg, :ptg, CURRENT_DATE())
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":mgg", $mgg, PDO::PARAM_STR);
            $pre->bindParam(":ptg", $ptg, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=show-magiamgia");
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idMGG = filter_input(INPUT_POST, 'idMGG');
        $sql = "
            DELETE FROM tb_magiamgia
            WHERE idMGG = :idMGG;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idMGG", $idMGG, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-magiamgia");   
    }
?>