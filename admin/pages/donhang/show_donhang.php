
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
            Quản lý đơn hàng:
        </h6>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="id">ID</th>
                        <th>Tên khách hàng</th>
                        <th>Số điện thoại</th>
                        <th>Nơi nhận</th>
                        <th>Ghi chú</th>
                        <th>Tổng tiền</th>
                        <th>Thời gian</th>
                        <th style="width: 100px;">Trạng thái</th>
                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $order = all_order();
                        foreach($order as $or):
                    ?>
                    <tr>
                        <td><?php echo $or["idDH"]; ?></td>
                        <td><?php echo $or["TenKH"]; ?></td>
                        <td><?php echo $or["SDT"]; ?></td>
                        <td><?php echo $or["NoiNhan"]; ?></td>
                        <td><?php echo $or["GhiChu"]; ?></td>
                        <td><?php echo number_format($or["TongTien"], 0, ",", "."); ?></td>
                        <td><?php echo $or["ThoiGian"]; ?></td>
                        <td>
                            <?php echo $or["TrangThaiDH"]; ?> <br>
                            <form action="././action/order_action.php" method="post" style="display: inline;">
                                <input type="hidden" name="idDH" value="<?php echo $or["idDH"]; ?>">
                                <button type="submit" name="change" class="btn-delete">Đổi trạng thái</button>
                            </form>
                        </td>
                        <td>
                            <form action="././action/order_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa đơn hàng không ???")'>
                                <input type="hidden" name="idDH" value="<?php echo $or["idDH"]; ?>">
                                <button type="submit" name="xoa" class="btn-delete">Xóa</button>
                            </form> |
                            <a href="javascript:void(0)" data-id="<?php echo $or["idDH"]; ?>" onclick="detailOrder(this)">Thông tin</a> <br> 
                            <!-- <a href="">Người dùng</a> -->
                        </td>
                    </tr>
                    
                    <?php
                        endforeach;
                    ?>
                </tbody>
            </table>
        </div>
        <div id="thongtin" class="modal modal-content animate">
            
        </div>
    </div>
</div>
</div>

