<?php
    $size = info_size((int)$_GET["idSize"]);
    foreach( $size as $s ):
?>
<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Chỉnh sửa Size</h1>
    
    <div class="add-item"> 
        <form action="././action/size_action.php" method="post" style="" enctype='multipart/form-data'>
            <label for="size">Size: </label>
            <input type="text" name="size" id="" class="form-control form-control-sm in-s" value="<?php echo $s["Size"]; ?>"> <br>
            <input type="hidden" name="idSize" id="" value="<?php echo $s["idSize"]; ?>">
            <button type="submit"  class="btn-sub" name="sua" data-toggle="modal" data-target="#myModal">Sửa</button>
            <a href="javascript:void(0)" onclick="window.history.back();">Quay lại</a>
        </form>
    </div>
</div>
<?php
    endforeach;
?>