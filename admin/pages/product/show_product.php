<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
    <p class="mb-4">Quản lý các thông tin của trang web</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản lý sản phẩm</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th >Tên</th>
                            <th style="width:100px;">Loại sản phẩm</th>
                            <th style="width:70px;">Giá</th>
                            <th style="width:80px;">Ảnh</th>
                            <th style="width:60px;">Thương hiệu</th>
                            <th style="width:70px;">Đánh giá</th>
                            <th style="width:70px;">Tình trạng</th>
                            <td style="width:65px;"><a href="./?p=add-product">THÊM</a></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $product = all_product();
                            foreach( $product as $p ):
                                $rate = luot_rating($p["idSP"]);
                                $luot = 0;
                                $score = 0;
                                foreach($rate as $r){
                                    $score += $r["Rating"];
                                    $luot++;
                                }
                                $aver = ($luot !== 0) ? round($score/$luot, 1) : 0;
                        ?>
                        <tr>
                            <td><?php echo $p["idSP"]; ?></td>
                            <td><?php echo $p["Ten"]; ?></td>
                            <td><?php echo $p["LoaiSP"]; ?></td>
                            <td><?php echo number_format($p["GiaGiam"], 0, ",", "."); ?></td>
                            <td><img src="../public/img/product/<?php echo $p["Anh"]; ?>" alt="" width="85px"></td>
                            <td><?php echo $p["ThuongHieu"]; ?></td>
                            <td><?php echo $aver; ?></td>
                            <td><?php echo $p["TinhTrang"]; ?></td>
                            <td>
                                <a href="./?p=sua-product&idSP=<?php echo $p["idSP"]; ?>" title="Sửa thông tin sản phẩm">Sửa</a> |
                                <form action="././action/product_action.php" style="display: inline;"
                                    onsubmit='return confirm("Bạn có chắc là muốn xóa sản phẩm: <?php echo $p["Ten"]; ?> không ???")' method="post">
                                    <input type="hidden" name="idSP" value="<?php echo $p["idSP"]; ?>">
                                    <input type="hidden" name="img" value="<?php echo $p["Anh"]; ?>">
                                    <button class="btn-delete" type="submit" title="xóa sản phẩm" name="xoa">Xóa</button>
                                </form> |
                                <a href="./?p=view-image&idSP=<?php echo $p["idSP"]; ?>">Xem ảnh</a> |
                                <a href="./?p=view-size&idSP=<?php echo $p["idSP"]; ?>">Xem size</a> |
                                <a href="./?p=view-color&idSP=<?php echo $p["idSP"]; ?>">Xem màu</a>
                            </td>
                        </tr>
                        <?php
                            endforeach;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
</div>


