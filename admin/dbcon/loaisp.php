<?php
    require "ConDB.php";
    require "function.php";
?>
<?php 
    $idLoai = (int)$_GET["idLoai"];
    $loaisp = loaisp_loai($idLoai);
    foreach($loaisp as $lsp):
?>
<option value="<?php echo $lsp["idLoaiSP"]; ?>"><?php echo $lsp["LoaiSP"]; ?></option>
<?php
    endforeach;
?>