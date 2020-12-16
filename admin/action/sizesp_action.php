<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["idSize"]) && !empty($_POST["gia"])){
            $idSize = $_POST["idSize"];
            $idSP = $_POST["idSP"];
            $gia = $_POST["gia"];
            $sql = "
                INSERT INTO tb_sizesanpham (idSizeSP, idSize, idSP, Gia) 
                VALUES (NULL, :idSize, :idSP, :gia)
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSize", $idSize, PDO::PARAM_INT);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->bindParam(":gia", $gia, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=view-size&idSP=".$idSP);
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["gia"])){
            $idSP = $_POST["idSP"];
            $gia = $_POST["gia"];
            $idSizeSP = $_POST["idSizeSP"];
            $sql = "
                UPDATE tb_sizesanpham
                SET Gia = :gia
                WHERE idSizeSP = :idSizeSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":gia", $gia, PDO::PARAM_INT);
            $pre->bindParam(":idSizeSP", $idSizeSP, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=view-size&idSP=".$idSP);  
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idSizeSP = filter_input(INPUT_POST, 'idSizeSP');
        $idSP = filter_input(INPUT_POST, 'idSP');
        $sql = "
            DELETE FROM tb_sizesanpham
            WHERE idSizeSP = :idSizeSP;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idSizeSP", $idSizeSP, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=view-size&idSP=".$idSP);  
    }
?>