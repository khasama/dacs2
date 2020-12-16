
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary" style="display:inline;">
            Quản lý Mã giảm giá:
        </h6>

        <div style="text-align:right;display:inline;margin-left:50%;">
            <form action="././action/mgg_action.php" style="display:inline;" method="post">
                <input type="number" min="0" max="100" name="ptg" style="margin:0;" class="form-control form-control-sm in-s" placeholder="Nhập phần trăm giảm">
                <button type="submit" name="auto-add"style="margin:0;" class="btn-sub">Tạo tự động</button>
            </form>
        </div>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Mã giảm giá</th>
                        <th>Phần trăm giảm</th>
                        <th>Ngày tạo</th>
                        <th><a href="javascript:void(0)" onclick="document.getElementById('magg').style.display='block'">Thêm</a></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $magiamgia = all_mgg();
                        foreach($magiamgia as $mgg):
                    ?>
                    <tr>
                        <td><?php echo $mgg["Ma"]; ?></td>
                        <td><?php echo $mgg["GiamGia"]; ?>%</td>
                        <td><?php echo $mgg["NgayTao"]; ?></td>
                        <td>
                            <form action="././action/mgg_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa Mã: <?php echo $mgg["Ma"]; ?> không ???")'>
                                <input type="hidden" name="idMGG" value="<?php echo $mgg["idMGG"]; ?>">
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
        <div id="magg" class="modal">
            <form class="modal-content animate" action="././action/mgg_action.php" method="post">
                <div class="form-thanh-toan">
                    <span onclick="document.getElementById('magg').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h4>Thêm mã giảm giá</h4>
                    <label for="color">Nhập mã: </label>
                    <input type="text"  name="mgg" class="form-control form-control-sm in-s" id="mgg">
                    <label for="color">Nhập phần trăm giảm: </label>
                    <input type="number"  name="ptg" min="0" max="100" class="form-control form-control-sm in-s" id="ptg">
                    <button type="submit" name="add" class="btn-sub">Thêm</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>

