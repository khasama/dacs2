
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
    <p class="mb-4">Quản lý các thông tin của trang web</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                Quản lý tập Màu:
            </h6>
            
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="id">ID</th>
                            <th>Màu</th>
                            <th><a href="./?p=add-color">Thêm</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $color = all_color();
                            foreach($color as $c):
                        ?>
                        <tr>
                            <td><?php echo $c["idMau"]; ?></td>
                            <td><?php echo $c["Mau"]; ?></td>
                            <td>
                                <a href="./?p=sua-color&idCol=<?php echo $c["idMau"]; ?>">Sửa</a> | 
                                <form action="././action/color_action.php" method="post" style="display: inline;" 
                                    onsubmit='return confirm("Bạn có chắc là muốn xóa Màu:<?php echo $c["Mau"]; ?> không ???")'>
                                    <input type="hidden" name="idMau" value="<?php echo $c["idMau"]; ?>">
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
    </div>
</div>

