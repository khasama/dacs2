<?php
require 'function.php';
require "../dbcon/ConDB.php";
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$expensions= array("jpeg","jpg","png");
    if( isset($_POST["add"])){
        if( $_FILES["img"]['name'] !== "" ){
            $anh = $_FILES['img']['name'];
            $duoi = pathinfo($anh, PATHINFO_EXTENSION);
            if( in_array($duoi, $expensions) === TRUE){
                
                
                $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                while(file_exists("../../public/img/slide/".$img)){
                    $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                }

                move_uploaded_file($_FILES['img']['tmp_name'], "../../public/img/slide/".$img);

                $sql = "
                    INSERT INTO tb_slide (idSlide, Slide) 
                    VALUES (NULL, :img);
                ";
                $pre = $conn->prepare($sql);
                $pre->bindParam(":img", $img, PDO::PARAM_STR);
                $pre->execute();
                echo $img;
                header("location:../?p=show-slide");
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
        $idSlide = filter_input(INPUT_POST, 'idSlide');
        $slide = $_POST["slide"];
        $sql = "
            DELETE FROM tb_slide
            WHERE idSlide = :idSlide
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idSlide", $idSlide, PDO::PARAM_INT);
        $pre->execute();
        unlink("../../public/img/slide/".$slide);
        header("location:../?p=show-slide");
    }
?>