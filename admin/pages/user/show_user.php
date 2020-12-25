
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
            Quản lý người dùng:
        </h6>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="id">ID</th>
                        <th>Email</th>
                        <th>Tài khoản</th>
                        <th>Họ tên</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Loại</th>
                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $users = all_user();
                        foreach($users as $user):
                    ?>
                    <tr>
                        <td><?php echo $user["idUser"]; ?></td>
                        <td><?php echo $user["Email"]; ?></td>
                        <td><?php echo $user["TaiKhoan"]; ?></td>
                        <td><?php echo $user["HoTen"]; ?></td>
                        <td><?php echo $user["DiaChi"]; ?></td>
                        <td><?php echo $user["SDT"]; ?></td>
                        <td><?php echo $user["LoaiTK"]; ?></td>
                        <td>
                            <form action="././action/user_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa người dùng có ID = <?php echo $user["idUser"]; ?> không ???")'>
                                <input type="hidden" name="idUser" value="<?php echo $user["idUser"]; ?>">
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

