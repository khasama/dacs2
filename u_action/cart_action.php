<?php
    session_start(); 
    require_once "../admin/dbcon/ConDB.php";

    if(isset($_SESSION["idUser"])){
        if(isset($_POST["add-cart"])){
            $idSP = $_POST["idSP"];
            $idSize = (int)$_POST["size"];
            $idMau = (int)$_POST["mau"];
            $soluong = $_POST["soluong"];
    
            $size = "Không";
            $price = 0;
            $ten = "";
            $anh = "";
            $mau = "";
            $tenkd= "";
    
            $sql = "
                SELECT * FROM tb_sanpham
                INNER JOIN tb_loaisanpham
                ON tb_sanpham.idLoaiSP = tb_loaisanpham.idLoaiSP
                INNER JOIN tb_loai
                ON tb_loaisanpham.idLoai = tb_loai.idLoai
                INNER JOIN tb_thuonghieu
                ON tb_sanpham.idTH = tb_thuonghieu.idTH
                INNER JOIN tb_ttsanpham
                ON tb_sanpham.idTTSP = tb_ttsanpham.idTTSP
                WHERE idSP = :idSP
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            foreach($pre->fetchAll() as $row){
                $price = $row["GiaGiam"];
                $ten = $row["Ten"];
                $anh = $row["Anh"];
                $tenkd = $row["TenKD"];
            }
    
            if($idSize > 0){
                $sql = "
                    SELECT * FROM tb_sizesanpham
                    INNER JOIN tb_size
                    ON tb_sizesanpham.idSize = tb_size.idSize
                    WHERE tb_sizesanpham.idSizeSP = :idSizeSP
                ";
                $pre = $conn->prepare($sql);
                $pre->bindParam(":idSizeSP", $idSize, PDO::PARAM_INT);
                $pre->execute();
                foreach($pre->fetchAll() as $row){
                    $size = $row["Size"];
                    $price = $row["Gia"];
                }
            }
    
            $sql = "
                SELECT * FROM tb_mausanpham
                INNER JOIN tb_mau
                ON tb_mausanpham.idMau = tb_mau.idMau
                WHERE tb_mausanpham.idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            foreach($pre->fetchAll() as $row){
                $mau = $row["Mau"];
            }
    
            $kieu = $size." - ".$mau;
            $item = [
                'id' => $idSP,
                'name' => $ten,
                'img' => $anh,
                'price' => $price,
                'kieu' => $kieu,
                'quantity' => $soluong
            ];
            if(isset($_SESSION["cart"][$idSP])){
                $_SESSION["cart"][$idSP]['quantity'] += $soluong;
            }else{
                $_SESSION["cart"][$idSP] = $item;
            }
            header("Location: ../?p=thong-tin&idSP=".$idSP."&name=".$tenkd);
            
        }
        if(isset($_POST["delete"])){
            unset($_SESSION["cart"][$_POST["idSP"]]);
            header("Location: ../?p=gio-hang");
        }
        if(isset($_POST["update"])){
            $_SESSION["cart"][$_POST["idSP"]]['quantity'] = $_POST["quantity"];
            header("Location: ../?p=gio-hang");
        }
        if(isset($_POST["thanh-toan"])){
            $tenkh = $_POST["tenkh"];
            $sdt = $_POST["sdt"];
            $dc = $_POST["dc"];
            $ghichu = $_POST["ghichu"];
            $tongtien = $_POST["tongtien"];
            if($tenkh !== "" && $sdt !== "" && $dc !== ""){
                $sql = "
                    INSERT INTO tb_donhang (idDH, TenKH, SDT, NoiNhan, GhiChu, TongTien, ThoiGian, idUser, idTTDH) 
                    VALUES (NULL, :tenkh, :sdt, :dc, :ghichu, :tongtien, CURRENT_TIME(), :idUser, '1');
                ";
                $pre = $conn->prepare($sql);
                $pre->bindParam(":tenkh", $tenkh, PDO::PARAM_STR);
                $pre->bindParam(":sdt", $sdt, PDO::PARAM_STR);
                $pre->bindParam(":dc", $dc, PDO::PARAM_STR);
                $pre->bindParam(":ghichu", $ghichu, PDO::PARAM_STR);
                $pre->bindParam(":tongtien", $tongtien, PDO::PARAM_INT);
                $pre->bindParam(":idUser", $_SESSION["idUser"], PDO::PARAM_INT);
                $pre->execute();
                $idDH = $conn->lastInsertId();;
                $ctdh = "";
                
                $cart = (isset($_SESSION["cart"])) ? $_SESSION["cart"] : [];
                $count = 1;
                foreach($cart as $key){
                    $daban = 0;
                    $ctdh .= "('null', '".$key["id"]."', '".$key["kieu"]."', '".$key["price"]."', '".$key["quantity"]."', '".$key["quantity"]*$key["price"]."', '".$idDH."')";
                    $sql = "
                        SELECT * FROM tb_sanpham
                        WHERE idSP = :idSP
                        
                    ";
                    $pre = $conn->prepare($sql);
                    $pre->bindParam(":idSP", $key["id"], PDO::PARAM_INT);
                    $pre->execute();
                    foreach($pre->fetchAll() as $row){
                        $daban = $row["DaBan"];
                    }
                    $daban += $key["quantity"];
                    $sql = "
                        UPDATE tb_sanpham
                        SET DaBan = :sell
                        WHERE idSP = :idSP;
                    ";
                    $pre = $conn->prepare($sql);
                    $pre->bindParam(":idSP", $key["id"], PDO::PARAM_INT);
                    $pre->bindParam(":sell", $daban, PDO::PARAM_INT);
                    $pre->execute();
                    // kiểm tra mảng để thêm dấu phẩy
                    if( $count !== count($cart)){
                        $ctdh .= ",";
                        $count ++;
                    }
                }
                
                $sql = "INSERT INTO tb_chitietdonhang (idCTDH, idSP, Kieu, DonGia, SoLuong, ThanhTien, idDH) VALUES".$ctdh;
                $pre = $conn->prepare($sql);
                $pre->execute();
                unset($_SESSION["cart"]);
                header("Location: ../");
            }else{
                echo "<script> alert('Vui lòng nhập những thông tin bắt buộc !!!'); </script>";
                echo "<script> window.history.back(); </script>";
            }
        }
    }else{
        
        echo "<script> alert('Vui lòng đăng nhập !!!'); </script>";
        echo "<script> window.history.back(); </script>";
        
    }
?>