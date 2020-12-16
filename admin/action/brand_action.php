<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["brand"])){
            $brand = $_POST["brand"];
            $sql = "
                SELECT * FROM tb_thuonghieu
                WHERE ThuongHieu = :brand
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":brand", $brand, PDO::PARAM_STR);
            $pre->execute();
            $count = $pre->rowCount();
            if($count === 0){
                $sql = "
                    INSERT INTO tb_thuonghieu (idTH, ThuongHieu) 
                    VALUES (NULL, :brand)
                ";
                
                $pre = $conn->prepare($sql);
                $pre->bindParam(":brand", $brand, PDO::PARAM_STR);
                $pre->execute();
                header("location:../?p=show-brand");
            }else {
                echo "<script> alert('Thương hiệu đã tồn tại trong hệ thống'); </script>";
                echo "<script> window.history.back(); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idTH = filter_input(INPUT_POST, 'idTH');
        $sql = "
            DELETE FROM tb_thuonghieu
            WHERE idTH = :idTH;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idTH", $idTH, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-brand");   
    }
?>