<?php
    if( isset($_GET["idSP"]) ){
        $idSP = (int)$_GET["idSP"];
    }
?>

<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Tất cả ảnh:</h1>
    <form action="././action/image_action.php" method="post" style="margin:25px 0;" enctype='multipart/form-data'>
        <label for="img">Thêm ảnh: </label>
        <input type="file" name="img" id="img" /> 
        <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
        <button type="submit" class="btn-sub" name="add" data-toggle="modal" data-target="#myModal">Thêm</button>
        <a href="./?p=show-product">Quay lại</a>
    </form>
    <div class="add-item" style="overflow: hidden;"> 
        <?php
            $image = all_image($idSP);
            foreach( $image as $img ):
        ?>
            <form action="././action/image_action.php" method="post" style="width:150px;height:250px;float:left;margin-right:25px;" enctype='multipart/form-data'>
                <img src="../public/img/product/<?php echo $img["Img"]; ?>" alt="" srcset="" width="100%" height="80%">
                <input type="hidden" value="<?php echo $img["Img"]; ?>" name="img">
                <input type="hidden" value="<?php echo $idSP; ?>" name="idSP">
                <input type="hidden" value="<?php echo $img["idImg"]; ?>" name="idImg">
                
                <button type="submit" class="btn-delete" name="xoa" data-toggle="modal" data-target="#myModal">Xóa</button>
            </form>
        <?php
            endforeach;
        ?>
    </div>
</div>
<script>
    
</script>
<?php
?>