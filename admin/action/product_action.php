<?php
require 'function.php';
require "../dbcon/ConDB.php";
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$expensions= array("jpeg","jpg","png");
    if( isset($_POST["add"])){
        
        if( !empty($_POST["ten"]) && !empty($_POST["gia"])){
            $ten = $_POST["ten"];
            $gia = $_POST["gia"];
            $giagiam = $_POST["giagiam"];
            $tenkd = changeTitle($ten);
            $mota = $_POST["mota"];
            $loaisp = $_POST["loaisp"];
            $anh = $_FILES['img']['name'];
            $duoi = pathinfo($anh, PATHINFO_EXTENSION);

            $check = "
                SELECT idSP FROM tb_sanpham
                WHERE Ten = :ten;
            ";
            $pre = $conn->prepare($check);
            $pre->bindParam(":ten", $ten, PDO::PARAM_STR);
            $pre->execute();
            $count = $pre->rowCount();
            if($count === 0){
                
                if( in_array($duoi, $expensions) === TRUE){
                
                    $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;

                    while(file_exists("../../public/img/product/".$img)){
                        $img = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                    }

                    move_uploaded_file($_FILES['img']['tmp_name'], "../../public/img/product/".$img);

                    $sql = "
                        INSERT INTO 
                        tb_sanpham (idSP, Ten, TenKD, GiaGoc, GiaGiam, Anh, MoTa, DaBan, idLoaiSP, LuotLike, idTTSP, idTH) 
                        VALUES 
                        (NULL, :ten, :tenkd, :gia, :giagiam, :img, :mota, 0, :loaisp, 0, 1, 2);
                    ";
                    $pre = $conn->prepare($sql);
                    $pre->bindParam(":ten", $ten, PDO::PARAM_STR);
                    $pre->bindParam(":tenkd", $tenkd, PDO::PARAM_STR);
                    $pre->bindParam(":gia", $gia, PDO::PARAM_INT);
                    $pre->bindParam(":giagiam", $giagiam, PDO::PARAM_INT);
                    $pre->bindParam(":img", $img, PDO::PARAM_STR);
                    $pre->bindParam(":mota", $mota, PDO::PARAM_STR);
                    $pre->bindParam(":loaisp", $loaisp, PDO::PARAM_INT);
                    $pre->execute();
                    header("location:../?p=show-product");
                }else{
                    echo "<script> window.history.back(); </script>";
                    echo "<script> alert('Chỉ nhận file ảnh !!!'); </script>";
                }
            }else{
                echo "<script> window.history.back(); </script>";
                echo "<script> alert('Sản phẩm đã tồn tại trong hệ thống !!!'); </script>";
            }
        }else {
            echo "<script> window.history.back(); </script>";
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["sua"])){
        if( !empty($_POST["ten"]) && !empty($_POST["tenkd"]) && !empty($_POST["gia"])){
            $idSP = $_POST["idSP"];
            $ten = $_POST["ten"];
            $gia = $_POST["gia"];
            $giagiam = $_POST["giagiam"];
            $tenkd = changeTitle($ten);
            $mota = $_POST["mota"];
            $ten_anh = $_POST["tenanh"];
            $loaisp = $_POST["loaisp"];
            $idTTSP = $_POST["idTTSP"];
            $idTH = $_POST["idTH"];
            

            if( $_FILES["img"]['name'] !== "" ){
                $anh = $_FILES['img']['name'];
                $duoi = pathinfo($anh, PATHINFO_EXTENSION);
                if( in_array($duoi, $expensions) === TRUE){
                    $anhbia = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                    while(file_exists("../../public/img/product/".$anhbia)){
                        $anhbia = substr(str_shuffle($permitted_chars), 0, 16)."_".$anh;
                    }
                    move_uploaded_file($_FILES['img']['tmp_name'], "../../public/img/product/".$anhbia);
                    unlink("../../public/img/product/".$ten_anh);
                    $img = "Anh = "."'$anhbia'".",";
                }else{
                    echo "<script> alert('Chỉ nhận file ảnh !!!'); </script>";
                }
            }else{
                $img = "";
            }
            $sql = "
                UPDATE tb_sanpham
                SET ".$img."
                    Ten = :ten,
                    TenKD = :tenkd,
                    GiaGoc = :gia,
                    GiaGiam = :giagiam,
                    MoTa =  :mota,
                    idLoaiSP = :loaisp,
                    idTTSP = :idTTSP,
                    idTH = :idTH
                WHERE idSP = :idSP;
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":ten", $ten, PDO::PARAM_STR);
            $pre->bindParam(":tenkd", $tenkd, PDO::PARAM_STR);
            $pre->bindParam(":gia", $gia, PDO::PARAM_INT);
            $pre->bindParam(":giagiam", $giagiam, PDO::PARAM_INT);
            $pre->bindParam(":mota", $mota, PDO::PARAM_STR);
            $pre->bindParam(":loaisp", $loaisp, PDO::PARAM_INT);
            $pre->bindParam(":idTTSP", $idTTSP, PDO::PARAM_INT);
            $pre->bindParam(":idTH", $idTH, PDO::PARAM_INT);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            header("location:../?p=show-product");
        }else {
            echo "<script> alert('Vui lòng nhập đầy đủ'); </script>";
        }
    }
    if( isset($_POST["xoa"])){
        $idSP = filter_input(INPUT_POST, 'idSP');
        $img = $_POST["img"];
        $sql = "
            DELETE FROM tb_sanpham
            WHERE idSP = :idSP;
        ";
        $pre = $conn->prepare($sql);
        $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
        $pre->execute();
        unlink("../../public/img/product/".$img);
        header("location:../?p=show-product");
    }
?>