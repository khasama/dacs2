<?php
    // Tất cả chức năng ở đây

    # Sản phẩm func
        // Lấy tất cả sản phẩm
        function all_product(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_sanpham
                INNER JOIN tb_loaisanpham
                ON tb_sanpham.idLoaiSP = tb_loaisanpham.idLoaiSP
                INNER JOIN tb_thuonghieu
                ON tb_sanpham.idTH = tb_thuonghieu.idTH
                INNER JOIN tb_ttsanpham
                ON tb_sanpham.idTTSP = tb_ttsanpham.idTTSP
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }

        // Lấy 16 sản phẩm mới nhất
        function new_product(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_sanpham 
                ORDER BY tb_sanpham.idSP DESC 
                LIMIT 0,16
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }

        // Lấy thông tin sản phẩm
        function info_product($idSP){
            require "ConDB.php";
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
            return $pre->fetchAll();
        }

        
    #
    
    # Image func
        // Lấy tất cả ảnh của 1 sản phẩm
        function all_image($idSP){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_image
                WHERE idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }

        // Lấy năm có idNam
        function nam($idNam){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_nam
                WHERE idNam = :idNam
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idNam", $idNam, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Loại sản phẩm func
        // Lấy loại sản phẩm
        function all_loaisp(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        // Lấy loại sản phẩm theo loại
        function loaisp_loai($idLoai){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
                WHERE idLoai = :idLoai
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // Lấy thể loại có idTheloai
        function theloai_phim($idTheloai){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_theloai
                WHERE idTheLoai = :idTheloai
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idTheloai", $idTheloai, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Màu sản phẩm func
        // Lấy màu của 1 sản phẩm
        function color_sp($idSP){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_mausanpham
                INNER JOIN tb_mau
                ON tb_mausanpham.idMau = tb_mau.idMau
                WHERE tb_mausanpham.idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Size sản phẩm func
        // đếm số size của sản phẩm
        function count_sizesp($idSP){
            require "ConDB.php";
            $sql = "
                SELECT idSizeSP FROM tb_sizesanpham
                WHERE tb_sizesanpham.idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->rowCount();
        }
        // Lấy size của 1 sản phẩm
        function size_sp($idSP){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_sizesanpham
                INNER JOIN tb_size
                ON tb_sizesanpham.idSize = tb_size.idSize
                WHERE tb_sizesanpham.idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # đơn hàng func
        // lấy tất cả đơn hàng
        function all_order(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_donhang
                INNER JOIN tb_trangthaidh
                ON tb_donhang.idTTDH = tb_trangthaidh.idTTDH
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Loại func
        // Lấy loại
        function all_loai(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        // Lấy thông tin 1 loại
        function loai($idLoai){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
                INNER JOIN tb_loaisanpham
                ON tb_loai.idLoai = tb_loaisanpham.idLoai
                INNER JOIN tb_sanpham
                ON tb_sanpham.idLoaiSP = tb_loaisanpham.idLoaiSP
                WHERE tb_loai.idLoai = :idLoai
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }

        
    #
    # Màu func
        // Lấy tất cả màu
        function all_color(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_mau
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        // Lấy thông tin màu có idMau
        function info_color($idMau){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_mau
                WHERE idMau = :idMau
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idMau", $idMau, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Size func
        // Lấy tất cả size
        function all_size(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_size
                ORDER BY Size ASC
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        // Lấy thông tin size có idSize
        function info_size($idSize){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_size
                WHERE idSize = :idSize
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSize", $idSize, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # Tình trạng func
        // Lấy tất cả tình trạng sản phẩm
        function ttsp(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_ttsanpham
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        
    #
    # Thương hiệu func
        // Lấy tất cả tình trạng sản phẩm
        function all_th(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_thuonghieu
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        
    #
    # mã giảm giá func
        // Lấy tất cả mã giảm giá
        function all_mgg(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_magiamgia
                ORDER BY idMGG DESC
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
        
    #
    # Size func
        // Lấy tất cả size
        function all_slide(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_slide
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    #rating func
        // lấy số đánh giá của 1 sao
        function get_start($rating, $idSP){
            require "ConDB.php";
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
        // lấy số đánh giá của 1 sản phẩm
        function luot_rating($idSP){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_rating
                WHERE idSP = :idSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idSP", $idSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    # thương hiệu func
        // lấy sản phẩm bán chạy có idLoai 
        function all_brand(){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_thuonghieu
            ";
            $pre = $conn->prepare($sql);
            $pre->execute();
            return $pre->fetchAll();
        }
    #

    #tìm loại fun
        // lấy sản phẩm bán chạy có idLoai 
        function selling($idLoai, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
                INNER JOIN tb_loaisanpham
                ON tb_loai.idLoai = tb_loaisanpham.idLoai
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loai.idLoai = :idLoai
                ORDER BY DaBan DESC
                LIMIT :start, 16
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // lấy sản phẩm mới có idLoai 
        function newsp($idLoai, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
                INNER JOIN tb_loaisanpham
                ON tb_loai.idLoai = tb_loaisanpham.idLoai
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loai.idLoai = :idLoai
                ORDER BY idSP DESC
                LIMIT :start, 16
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // lấy sản phẩm có giá giảm dần có idLoai 
        function costgiam($idLoai, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
                INNER JOIN tb_loaisanpham
                ON tb_loai.idLoai = tb_loaisanpham.idLoai
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loai.idLoai = :idLoai
                ORDER BY GiaGiam DESC
                LIMIT :start, 16
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // lấy sản phẩm có giá tăng dần có idLoai 16
        function costtang($idLoai, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loai
                INNER JOIN tb_loaisanpham
                ON tb_loai.idLoai = tb_loaisanpham.idLoai
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loai.idLoai = :idLoai
                ORDER BY GiaGiam ASC
                LIMIT :start, 16
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoai", $idLoai, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #
    #tìm loại sản phẩm fun
        // lấy sản phẩm bán chạy có idLoaiSP
        function selling_loaisp($idLoaiSP, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loaisanpham.idLoaiSP = :idLoaiSP
                ORDER BY DaBan DESC
                LIMIT :start, 16
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoaiSP", $idLoaiSP, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        
        // lấy sản phẩm mới có idLoai 
        function newsp_loaisp($idLoaiSP, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loaisanpham.idLoaiSP = :idLoaiSP
                ORDER BY idSP DESC
                LIMIT :start, 16
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoaiSP", $idLoaiSP, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // lấy sản phẩm có giá giảm dần có idLoaiSP 
        function costgiam_loaisp($idLoaiSP, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loaisanpham.idLoaiSP = :idLoaiSP
                ORDER BY GiaGiam DESC
                LIMIT :start, 16
                
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoaiSP", $idLoaiSP, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // lấy sản phẩm có giá tăng dần có idLoai 16
        function costtang_loaisp($idLoaiSP, $start){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham    
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loaisanpham.idLoaiSP = :idLoaiSP
                ORDER BY GiaGiam ASC
                LIMIT :start, 16
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoaiSP", $idLoaiSP, PDO::PARAM_INT);
            $pre->bindParam(":start", $start, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
        // đếm số sản phẩm có idLoaiSP
        function selling_loaisp_count($idLoaiSP){
            require "ConDB.php";
            $sql = "
                SELECT * FROM tb_loaisanpham
                INNER JOIN tb_sanpham
                ON tb_loaisanpham.idLoaiSP = tb_sanpham.idLoaiSP
                WHERE tb_loaisanpham.idLoaiSP = :idLoaiSP
            ";
            $pre = $conn->prepare($sql);
            $pre->bindParam(":idLoaiSP", $idLoaiSP, PDO::PARAM_INT);
            $pre->execute();
            return $pre->fetchAll();
        }
    #


?>