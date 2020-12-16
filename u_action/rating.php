<?php
    require "../admin/dbcon/ConDB.php";    
    $idSP = $_GET["idSP"];
    $idU = $_GET["idU"];
    $rate = $_GET["rate"];
    


    $sql = "
        SELECT * FROM tb_rating
        WHERE idUser = :idU
        AND idSP = :idSP
    ";
    $pre = $conn->prepare($sql);
    $pre->bindParam(":idU", $idU, PDO::PARAM_INT);
    $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
    $pre->execute();
    $count = $pre->rowCount();
    if($count === 0){
        $sql = "
            INSERT INTO tb_rating (idRating, Rating, idUser, idSP) 
            VALUES (NULL, :rate, :idU, :idSP);
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":rate", $rate, PDO::PARAM_INT);
        $pre->bindParam(":idU", $idU, PDO::PARAM_INT);
        $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
        $pre->execute();
    }else{
        $sql = "
            UPDATE tb_rating 
            SET Rating = :rate
            WHERE idUser = :idU
            AND idSP = :idSP
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":rate", $rate, PDO::PARAM_INT);
        $pre->bindParam(":idU", $idU, PDO::PARAM_INT);
        $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
        $pre->execute();
    }

    $sql = "
        SELECT * FROM tb_rating
        WHERE idSP = :idSP
    ";
    $pre = $conn->prepare($sql);
    $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
    $pre->execute();
    $score = 0;
    $luot = $pre->rowCount();
    foreach($pre->fetchAll() as $row){
        $score += $row["Rating"];
    }
    $aver = round($score/$luot, 1);
    
    $rate = [
        'rating' => $aver,
        'luot' => $luot,
        'one' => getStart(1, $idSP),
        'two' => getStart(2, $idSP),
        'three' => getStart(3, $idSP),
        'four' => getStart(4, $idSP),
        'five' => getStart(5, $idSP)
    ];
    echo json_encode($rate);



    function getStart($rating, $idSP){
        require "../admin/dbcon/ConDB.php";   
        $sql = "
            SELECT * FROM tb_rating
            WHERE Rating = :rating AND idSP = :idSP
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":rating", $rating, PDO::PARAM_INT);
        $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
        $pre->execute();
        return $pre->rowCount();
    }
?>
