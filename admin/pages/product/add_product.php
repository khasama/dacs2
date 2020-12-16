<script>
    $(document).ready(function(){
        $("#loai").change(function(){
            var id = $(this).val()
            $.get("./dbcon/loaisp.php", {idLoai:id}, function(data){
                $("#loaisp").html(data);
            });
        });
    });
</script>

<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Thêm Sản Phẩm</h1>
    
    <div class="add-item">
        <form action="././action/product_action.php" method="post" style="margin-top:25px;" enctype='multipart/form-data'>
            <label for="ten">Tên: </label>
            <input type="text" name="ten" id="ten" class="form-control form-control-sm in"> <br>
            <label for="gia">Giá gốc: </label>
            <input type="number" name="gia" id="giagoc" class="form-control form-control-sm in-s" onkeyup="setMaxV2()"> <br>
            <label for="giagiam">Giá giảm: </label>
            <input type="number" name="giagiam" id="giagiam" class="form-control form-control-sm in-s" > Tối đa: <span id="max-cost"></span> <br>
            <label for="mota">Mô tả sản phẩm: </label>
            <textarea id="mota" class="ckeditor" name="mota"></textarea> <br>
            <label for="loai">Loại: </label>
            <select name="loai" id="loai" class="form-control form-control-sm in-s" style="width: 150px">
                <?php
                    $loai = all_loai();
                    foreach( $loai as $l ):
                ?>
                <option value="<?php echo $l["idLoai"]; ?>"><?php echo $l["Loai"]; ?></option>
                <?php
                    endforeach;
                ?>
            </select> <br>
            <label for="loaisp">Loại sản phẩm: </label>
            <select name="loaisp" id="loaisp" class="form-control form-control-sm in-s" style="width: 150px">
            </select> <br>
            <label for="img">Ảnh bìa: </label>
            <input type="file" name="img" id="img" /> <br>
            <br>

            <button type="submit" class="btn-sub" name="add" data-toggle="modal" data-target="#myModal">Thêm</button>
            <a href="javascript:void(0)" onclick="window.history.back();">Quay lại</a>
        </form>
    </div>
</div>