<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["color"])){
            $color = $_POST["color"];
            $idSP = $_POST["idSP"];
            $sql = "
                INSERT INTO tb_mausanpham (idMauSP, idMau, idSP) 
                VALUES (NULL, :idMau, :idSP)
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idMau", $color, PDO::PARAM_INT);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=view-color&idSP=".$idSP);
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["color"])){
            $idMau = $_POST["color"];
            $idMauSP = $_POST["idMauSP"];
            $idSP = $_POST["idSP"];
            $sql = "
                UPDATE tb_mausanpham
                SET idMau = :idMau
                WHERE idMauSP = :idMauSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idMau", $idMau, PDO::PARAM_INT);
            $pre->bindParam(":idMauSP", $idMauSP, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=view-color&idSP=".$idSP);  
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idMauSP = filter_input(INPUT_POST, 'idMauSP');
        $idSP = filter_input(INPUT_POST, 'idSP');
        $sql = "
            DELETE FROM tb_mausanpham
            WHERE idMauSP = :idMauSP;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idMauSP", $idMauSP, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=view-color&idSP=".$idSP);  
    }
?>