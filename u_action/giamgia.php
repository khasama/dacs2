<?php
    require_once "../admin/dbcon/ConDB.php";
    $mgg = $_GET["mgg"];
    $tien = (int)$_GET["tien"];
    $giam = 0;
    $sql = "
        SELECT GiamGia FROM tb_magiamgia
        WHERE Ma = :mgg
    ";
    $pre = $conn->prepare($sql);
    $pre->bindParam(":mgg", $mgg, PDO::PARAM_STR);
    $pre->execute();
    if($pre->rowCount() > 0){
        $acc = $pre->fetchAll();
        foreach($acc as $row){
            $giam = $row["GiamGia"];
        }
        $tiengiam = ((100-(int)$giam)/100)*$tien;
        echo $tiengiam;
    }else{
        echo $tien;
    }
    
?>