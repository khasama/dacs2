<?php
    $idSP = (int)$_GET["idSP"];
    $product = info_product($idSP);
    foreach($product as $p):
?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
    <p class="mb-4">Quản lý các thông tin của trang web</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary" style="float:left;">
                Quản lý tập SIZE của sản phẩm: <?php echo $p["Ten"]; ?>
            </h6>
            <h6 class="m-0 font-weight-bold text-primary" style="float:right;">
                <a href="./?p=show-product">Quay lại</a>
            </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="id">ID</th>
                            <th>Size</th>
                            <th>Giá</th>
                            <th><a href="javascript:void(0)" onclick="document.getElementById('id01').style.display='block'">Thêm</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $size = size_sp($idSP);
                            foreach($size as $s):
                        ?>
                        <tr>
                            <td><?php echo $s["idSizeSP"]; ?></td>
                            <td><?php echo $s["Size"]; ?></td>
                            <td><?php echo number_format($s["Gia"], 0, ",", "."); ?></td>
                            <td>
                                <a href="javascript:void(0)" onclick="getIDs(this)" data-id="<?php echo $s["idSizeSP"]; ?>" data-cost="<?php echo $s["Gia"]; ?>" data-size="<?php echo $s["Size"]; ?>">Sửa</a> | 
                                <form action="././action/sizesp_action.php" method="post" style="display: inline;" 
                                    onsubmit='return confirm("Bạn có chắc là muốn xóa Size của sản phẩm này không ???")'>
                                    <input type="hidden" name="idSizeSP" value="<?php echo $s["idSizeSP"]; ?>">
                                    <input type="hidden" name="idSP" value="<?php echo $idSP; ?>">
                                    <button type="submit" name="xoa" class="btn-delete">Xóa</button>
                                </form>
                            </td>
                        </tr>
                        
                        <?php
                            endforeach;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- thêm size -->
        <div id="id01" class="modal">
            <form class="modal-content animate" action="././action/sizesp_action.php" method="post">
                <div class="form-thanh-toan">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h4>Thêm size cho sản phẩm</h4>
                    <label for="size">Lựa chọn size: </label>
                    <select name="idSize" class="form-control form-control-sm in-s" style="width: 150px">
                        <?php
                            $size = all_size();
                            foreach( $size as $s ):
                        ?>
                        <option value="<?php echo $s["idSize"]; ?>"><?php echo $s["Size"]; ?></option>
                        <?php
                            endforeach;
                        ?>
                    </select> <br>
                    <label for="size">Giá: </label>
                    <input type="number"  name="gia" class=" form-control form-control-sm in-s" max="<?php echo (int)$p["GiaGiam"]; ?>"> <br>
                    <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
                    <button type="submit" name="add" class="btn-sub">Thêm</button>
                </div>
            </form>
        </div>
        <!-- thêm size -->
        
        <!-- sửa size -->
        <div id="id02" class="modal">
            <form class="modal-content animate" action="././action/sizesp_action.php" method="post">
                <div class="form-thanh-toan">
                    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h4>Sửa size cho sản phẩm</h4>
                    <label for="size">Size: </label>
                    <input type="text"  name="size" class=" form-control form-control-sm in-s" disabled value="" id="size">  <br>
                    <label for="size">Giá: </label>
                    <input type="number"  name="gia" id="cost" value="" class=" form-control form-control-sm in-s" max="<?php echo (int)$p["GiaGiam"]; ?>"> <br>
                    <input type="hidden" value="" name="idSizeSP" id="idSizeSP">
                    <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
                    <button type="submit" name="sua" class="btn-sub">Sửa</button>
                </div>
            </form>
        </div>
        <!-- sửa size -->
    </div>
</div>
<?php
    endforeach;
?>
