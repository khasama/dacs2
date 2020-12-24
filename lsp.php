<?php
    require_once "admin/dbcon/ConDB.php";
    $lsp = array();
    $sql = "
        SELECT * FROM tb_loaisanpham
    ";
    $pre = $conn->prepare($sql);
    $pre->execute();
    $count = 1;
    while($data = $pre->fetch(PDO::FETCH_ASSOC)){
        $movie[] = array(
            'id'     => $data["idLoaiSP"],
            'lsp'   => $data["LoaiSP"]
        );
        $count++;
    }
    header('Content-Type', 'application/json');
    echo json_encode($movie);
    
?>