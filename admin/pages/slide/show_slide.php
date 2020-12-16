
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Cơ Sở Dữ Liệu</h1>
<p class="mb-4">Quản lý các thông tin của trang web</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary" style="display:inline;">
            Quản lý Slide:
        </h6>

        <div style="text-align:right;display:inline;margin-left:55%;">
            <form action="././action/slide_action.php" style="display:inline;" method="post" enctype='multipart/form-data'>
                <label for="img">Chọn ảnh: </label>
                <input type="file" name="img"  style="margin:0;width: 20%;"/> 
                <button type="submit" name="add" style="margin:0;" class="btn-sub">Thêm</button>
            </form>
        </div>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Slide</th>
                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $slide = all_slide();
                        foreach($slide as $s):
                    ?>
                    <tr>
                        <td><?php echo $s["idSlide"]; ?></td>
                        <td><img src="../public/img/slide/<?php echo $s["Slide"]; ?>" alt="" width="50%"></td>
                        <td>
                            <form action="././action/slide_action.php" method="post" style="display: inline;" 
                                onsubmit='return confirm("Bạn có chắc là muốn xóa không ???")'>
                                <input type="hidden" name="idSlide" value="<?php echo $s["idSlide"]; ?>">
                                <input type="hidden" name="slide" value="<?php echo $s["Slide"]; ?>">
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

