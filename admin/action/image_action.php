<?php
require 'function.php';
require "../dbcon/ConDB.php";
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$expensions= array("jpeg","jpg","png");
    if( isset($_POST["add"])){
        if( $_FILES["img"]['name'] !== "" ){
            $anh = $_FILES['img']['name'];
            $idSP = $_POST["idSP"];
            $duoi = pathinfo($anh, PATHINFO_EXTENSION);

            if( in_array($duoi, $expensions) === TRUE){
                $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                while(file_exists("../../public/img/product/".$img)){
                    $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                }

                move_uploaded_file($_FILES['img']['tmp_name'], "../../public/img/product/".$img);

                $sql = "
                    INSERT INTO 
                    tb_image (idImg, idSP, Img) 
                    VALUES 
                    (NULL, :idSP, :img);
                ";
                $pre = $conn->prepare($sql);
                $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
                $pre->bindParam(":img", $img, PDO::PARAM_STR);
                $pre->execute();
                header("location:../?p=view-image&idSP=".$idSP);
            }else{
                echo "<script> window.history.back(); </script>";
                echo "<script> alert('Chỉ nhận file ảnh !!!'); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }  
    if( isset($_POST["xoa"])){
        $idImg = filter_input(INPUT_POST, 'idImg');
        $idSP = filter_input(INPUT_POST, 'idSP');
        $img = $_POST["img"];
        $sql = "
            DELETE FROM tb_image
            WHERE idImg = :idImg
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idImg", $idImg, PDO::PARAM_INT);
        $pre->execute();
        unlink("../../public/img/product/".$img);
        header("location:../?p=view-image&idSP=".$idSP);
    }
?>