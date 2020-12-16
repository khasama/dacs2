
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
            Quản lý Size:
        </h6>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="id">ID</th>
                        <th>Size</th>
                        <th><a href="./?p=add-size">Thêm</a></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $size = all_size();
                        foreach($size as $s):
                    ?>
                    <tr>
                        <td><?php echo $s["idSize"]; ?></td>
                        <td><?php echo $s["Size"]; ?></td>
                        <td>
                            <a href="./?p=sua-size&idSize=<?php echo $s["idSize"]; ?>">Sửa</a> | 
                            <form action="././action/size_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa Size:<?php echo $s["Size"]; ?> không ???")'>
                                <input type="hidden" name="idSize" value="<?php echo $s["idSize"]; ?>">
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

