<?php
    $idLoaiSP = (int)$_GET["idLoaiSP"];
    $tenloai = "";
    $count = 0;
    $selling = selling_loaisp_count($idLoaiSP);
    foreach($selling as $s){
        $tenloai = $s["LoaiSP"];
        $count++;
    }
    if(isset($_GET["trang"])){
        $currentPage = (int)$_GET["trang"];
    }else{
        $currentPage = 1;
    }
    
    $start = ($currentPage - 1)*16;
    if(isset($_GET["type"])){
        switch($_GET["type"]){
            case "selling" :
                $product = selling_loaisp($idLoaiSP, $start);
                $type = "selling";
                break;
            case "new" :
                $product = newsp_loaisp($idLoaiSP, $start);
                $type = "new";
                break;
            case "costgiam" :
                $product = costgiam_loaisp($idLoaiSP, $start);
                $type = "costgiam";
                break;
            case "costtang" :
                $product = costtang_loaisp($idLoaiSP, $start);
                $type = "costtang";
                break;
            default : $product = selling_loaisp($idLoaiSP, $start);$type = "selling";
        }
    }else{
        $product = selling_loaisp($idLoaiSP, $start);
        $type = "selling";
    }
?>
<div id="result" class="frame">
    <h4><?php echo $tenloai; ?>: <?php echo $count; ?> sản phẩm</h4>
</div>
<div id="result-product" class="frame">
    <div id="option">
        <a href="./?p=loai-san-pham&idLoaiSP=<?php echo $idLoaiSP; ?>&type=selling" <?php if($type==="selling"){echo"style='color:#0056b3;text-decoration:underline'";} ?> class="option-item">Bán chạy</a>
        <a href="./?p=loai-san-pham&idLoaiSP=<?php echo $idLoaiSP; ?>&type=new" <?php if($type==="new"){echo"style='color:#0056b3;text-decoration:underline'";} ?> class="option-item" >Hàng mới</a>
        <a href="./?p=loai-san-pham&idLoaiSP=<?php echo $idLoaiSP; ?>&type=costgiam" <?php if($type==="costgiam"){echo"style='color:#0056b3;text-decoration:underline'";} ?> class="option-item" >Giá <i class="fa fa-arrow-down" aria-hidden="true"></i></a>
        <a href="./?p=loai-san-pham&idLoaiSP=<?php echo $idLoaiSP; ?>&type=costtang" <?php if($type==="costtang"){echo"style='color:#0056b3;text-decoration:underline'";} ?> class="option-item" >Giá <i class="fa fa-arrow-up" aria-hidden="true"></i></a>
    </div>
    <div id="sort-loaisp">
        <div class="row-product">
            <?php
                //$selling = selling($idLoaiSP);
                foreach($product as $s):
                    $pt = 100 - (($s["GiaGiam"]*100)/$s["GiaGoc"]);
                    $pt = round($pt, 0, PHP_ROUND_HALF_UP);
            ?>
                <div class="product">
                    <a href="./?p=thong-tin&idSP=<?php echo $s["idSP"]; ?>&name=<?php echo $s["TenKD"]; ?>" class="product-item">
                        <img src="public/img/product/<?php echo $s["Anh"]; ?>" alt="<?php echo $s["Ten"]; ?>" class="img-product"><br>
                        <span class="title-product"><?php echo $s["Ten"]; ?></span> <br>
                        <span class="gia"><?php echo number_format($s["GiaGiam"], 0, ",", "."); ?> ₫</span>
                        <span class="phan-tram"><?php echo $pt; ?>%</span><br>
                        <span class="gia-goc"><?php echo number_format($s["GiaGoc"], 0, ",", "."); ?> ₫</span>
                    </a>
                </div>
            <?php
                endforeach;
            ?>
        </div>
        <div class="phan-trang" style="text-align:center;">
            <?php
                $totalPage = ceil($count/16);
                
                $pagination = [$currentPage]; // Đây là mảng lưu các trang sẽ xuất hiện ở phần phân trang
                while (count($pagination) < 5) { // Sẽ chạy vòng lặp cho đến khi nào mảng này có đủ 5 phần tử thì thôi
                    $left = $pagination[0] - 1; // Phần tử tiếp theo ở bên trái sẽ là phần tử bên trái ở thời điểm hiện tại trừ đi 1
                    $right = $pagination[count($pagination) - 1] + 1; // Phần tử tiếp theo ở bên phải sẽ là phần tử bên phải ở thời điểm hiện tại cộng với 1
                    $added = false; // Biến để kiểm tra xem có trang mới được thêm vào không
                    if ($left > 0) {
                        array_unshift($pagination, $left); // Đẩy page mới vào đầu mảng 
                        $added = true;
                    }
                    if ($right <= $totalPage) {
                        array_push($pagination, $right); // Đẩy page mới vào cuối mảng 
                        $added = true;
                    }
                    if (!$added) { // Nếu cả bên trái lẫn bên phải đều không thể thêm phần tử nào vào nữa, thì break khỏi vòng lặp
                        break;
                    }
                }
                // Sau vòng lặp này bạn sẽ có một mảng có tối đa là 5 trang
                if ($pagination[0] != $currentPage) { // Nếu trang ngoài cùng bên trái, mà không phải là current page, thì sẽ có nút Previous 
                    array_unshift($pagination, '<');
                }

                if ($pagination[count($pagination) - 1] != $currentPage) { // Nếu trang ngoài cùng bên phải, mà không phải là current page, thì sẽ có nút Next 
                    array_push($pagination, '>');
                }
            ?>
            <?php
                foreach ($pagination as $p):
            ?>
                <a href="<?php
                    if($p === '<'){
                        echo "./?p=loai-san-pham&idLoaiSP=".$idLoaiSP."&type=".$type."&trang=".($currentPage-1);
                    }
                    else if($p === '>'){
                        echo "./?p=loai-san-pham&idLoaiSP=".$idLoaiSP."&type=".$type."&trang=".($currentPage+1);
                    }
                    else{
                        echo "./?p=loai-san-pham&idLoaiSP=".$idLoaiSP."&type=".$type."&trang=".$p;
                    }
                ?>" style="margin:0 5px;text-decoration: none;<?php if($p == $currentPage){echo "color:red;";} ?>">
                    <?php echo $p; ?>
                </a>
            <?php
                endforeach;
            ?>
        </div>
    </div>
</div>
