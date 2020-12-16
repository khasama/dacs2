<?php
require 'function.php';
require "../dbcon/ConDB.php";
    if( isset($_POST["add"])){
        
        if( !empty($_POST["mau"])){
            $mau = $_POST["mau"];
            $sql = "
                INSERT INTO tb_mau (idMau, Mau) 
                VALUES (NULL, :mau)
            ";
            
            $pre = $conn->prepare($sql);
            $pre->bindParam(":mau", $mau, PDO::PARAM_STR);
            $pre->execute();
            header("location:../?p=show-color");
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["ep"]) && !empty($_POST["link"])){
            $idEp = $_POST["idEp"];
            $server = $_POST["ser"];
            $episode = $_POST["ep"];
            $link = $_POST["link"];
            $sql = "
                UPDATE tb_episode
                SET Episode = :episode,
                    Server = :server,
                    Link = :link
                WHERE idEP = :idEp
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idEp", $idEp, PDO::PARAM_INT);
            $pre->bindParam(":episode", $episode, PDO::PARAM_STR);
            $pre->bindParam(":server", $server, PDO::PARAM_INT);
            $pre->bindParam(":link", $link, PDO::PARAM_STR);
            $pre->execute();
            header("location:../?p=show-episode&idPhim=".$_POST["idPhim"]);   
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idEp = filter_input(INPUT_POST, 'idEp');
        $sql = "
            DELETE FROM tb_episode
            WHERE idEp = :idEp;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idEp", $idEp, PDO::PARAM_INT);
        $pre->execute();
        header("location:../?p=show-episode&idPhim=".$_POST["idPhim"]);   
    }
?>