<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["change"])){
        $idDH = $_POST["idDH"];
        $sql = "
            UPDATE tb_donhang
            SET idTTDH = 2
            WHERE idDH = :idDH
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idDH", $idDH, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-order");
    }
    if( isset($_POST["xoa"])){
        $idDH = filter_input(INPUT_POST, 'idDH');
        $sql = "
            DELETE FROM tb_donhang
            WHERE idDH = :idDH;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idDH", $idDH, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-order");  
    }
?>