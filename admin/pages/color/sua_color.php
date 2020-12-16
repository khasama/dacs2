<?php
    $color = info_color((int)$_GET["idCol"]);
    foreach( $color as $c ):
?>
<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Chỉnh sửa Màu</h1>
    
    <div class="add-item"> 
        <form action="././action/color_action.php" method="post" style="" enctype='multipart/form-data'>
            <label for="mau">Màu: </label>
            <input type="text" name="mau" id="" class="form-control form-control-sm in-s" value="<?php echo $c["Mau"]; ?>"> <br>
            <input type="hidden" name="idMau"value="<?php echo $c["idMau"]; ?>">
            <button type="submit"  class="btn-sub" name="sua" data-toggle="modal" data-target="#myModal">Sửa</button>
            <a href="javascript:void(0)" onclick="window.history.back();">Quay lại</a>
        </form>
    </div>
</div>
<?php
    endforeach;
?>