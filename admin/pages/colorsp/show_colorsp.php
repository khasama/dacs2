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
                Quản lý tập Màu của sản phẩm: <?php echo $p["Ten"]; ?>
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
                            <th>Màu</th>
                            <th><a href="javascript:void(0)" onclick="document.getElementById('id01').style.display='block'">Thêm</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $color = color_sp($idSP);
                            foreach($color as $c):
                        ?>
                        <tr>
                            <td><?php echo $c["idMauSP"]; ?></td>
                            <td><?php echo $c["Mau"]; ?></td>
                            <td>
                                <a href="javascript:void(0)" onclick="getID(this)" data-id="<?php echo $c["idMauSP"]; ?>">Sửa</a> | 
                                <form action="././action/colorsp_action.php" method="post" style="display: inline;" 
                                    onsubmit='return confirm("Bạn có chắc là muốn xóa Màu của sản phẩm này không ???")'>
                                    <input type="hidden" name="idMauSP" value="<?php echo $c["idMauSP"]; ?>">
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

        <!-- thêm màu -->
        <div id="id01" class="modal">
            <form class="modal-content animate" action="././action/colorsp_action.php" method="post">
                <div class="form-thanh-toan">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h4>Thêm màu cho sản phẩm</h4>
                    <label for="color">Lựa chọn màu: </label>
                    <select name="color" class="form-control form-control-sm in-s" style="width: 150px">
                        <?php
                            $mau = all_color();
                            foreach( $mau as $m ):
                        ?>
                        <option value="<?php echo $m["idMau"]; ?>"><?php echo $m["Mau"]; ?></option>
                        <?php
                            endforeach;
                        ?>
                    </select> <br>
                    <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
                    <button type="submit" name="add" class="btn-sub">Thêm</button>
                </div>
            </form>
        </div>
        <!-- thêm màu -->
        
        <!-- sửa màu -->
        <div id="id02" class="modal">
            <form class="modal-content animate" action="././action/colorsp_action.php" method="post">
                <div class="form-thanh-toan">
                    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h4>Sửa màu cho sản phẩm</h4>
                    <label for="color">Lựa chọn màu: </label>
                    <select name="color"  class="form-control form-control-sm in-s" style="width: 150px">
                        <?php
                            $mau = all_color();
                            foreach( $mau as $m ):
                        ?>
                        <option value="<?php echo $m["idMau"]; ?>"><?php echo $m["Mau"]; ?></option>
                        <?php
                            endforeach;
                        ?>
                    </select> <br>
                    <input type="hidden" value="" name="idMauSP" class="form-control form-control-sm in-s" id="idMauSP">
                    <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
                    <button type="submit" name="sua" class="btn-sub">Sửa</button>
                </div>
            </form>
        </div>
        <!-- sửa màu -->
    </div>
</div>
<?php
    endforeach;
?>
