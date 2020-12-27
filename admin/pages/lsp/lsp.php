
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
            Quản lý loại và loại sản phẩm:
        </h6>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="id">ID</th>
                        <th>Loại</th>
                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $loais = all_loai();
                        foreach($loais as $loai):
                    ?>
                    <tr>
                        <td><?php echo $loai["idLoai"]; ?></td>
                        <td><?php echo $loai["Loai"]; ?></td>
                        <td>
                            <form action="././action/user_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa loại: <?php echo $loai["Loai"]; ?> không ???")'>
                                <input type="hidden" name="idLoai" value="<?php echo $loai["idLoai"]; ?>">
                                <button type="submit" name="xoa" class="btn-delete">Xóa</button>
                            </form> |
                            <a href="">Loại sản phẩm</a>
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

