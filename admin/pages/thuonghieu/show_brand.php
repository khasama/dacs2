
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
            Quản lý Thương hiệu:
        </h6>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="id">ID</th>
                        <th>Thương hiệu</th>
                        <th><a href="javascript:void(0)" onclick="document.getElementById('brand').style.display='block'">Thêm</a></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $brand = all_brand();
                        foreach($brand as $b):
                    ?>
                    <tr>
                        <td><?php echo $b["idTH"]; ?></td>
                        <td><?php echo $b["ThuongHieu"]; ?></td>
                        <td>
                            <form action="././action/brand_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa Thương hiệu: <?php echo $b["ThuongHieu"]; ?> không ???")'>
                                <input type="hidden" name="idTH" value="<?php echo $b["idTH"]; ?>">
                                <button type="submit" name="xoa" class="btn-delete">Xóa</button>
                            </form>
                        </td>
                    </tr>
                    
                    <?php
                        endforeach;
                    ?>
                </tbody>
            </table>
            <div id="brand" class="modal">
                <form class="modal-content animate" action="././action/brand_action.php" method="post">
                    <div class="form-thanh-toan">
                        <span onclick="document.getElementById('brand').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <h4>Thêm Thương hiệu</h4>
                        <label for="color">Thương hiệu: </label>
                        <input type="text"  name="brand" class="form-control form-control-sm in-s"><br>
                        <button type="submit" name="add" class="btn-sub">Thêm</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

