<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["size"])){
            $size = $_POST["size"];
            $sql = "
                SELECT * FROM tb_size
                WHERE Size = :size
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":size", $size, PDO::PARAM_STR);
            $pre->execute();
            $count = $pre->rowCount();
            if($count === 0){
                $sql = "
                    INSERT INTO tb_size (idSize, Size) 
                    VALUES (NULL, :size)
                ";
                
                $pre = $conn->prepare($sql);
                $pre->bindParam(":size", $size, PDO::PARAM_STR);
                $pre->execute();
                header("location:../?p=show-size");
            }else {
                echo "<script> alert('Size đã tồn tại trong hệ thống'); </script>";
                echo "<script> window.history.back(); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["size"])){
            $size = $_POST["size"];
            $idSize = $_POST["idSize"];
            $sql = "
                UPDATE tb_size
                SET Size = :size
                WHERE idSize = :idSize
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSize", $idSize, PDO::PARAM_INT);
            $pre->bindParam(":size", $size, PDO::PARAM_STR);
            $pre->execute();
            header("location:../?p=show-size");   
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idSize = filter_input(INPUT_POST, 'idSize');
        $sql = "
            DELETE FROM tb_size
            WHERE idSize = :idSize;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idSize", $idSize, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-size");   
    }
?>