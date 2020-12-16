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
<?php
    $idSP = (int)$_GET["idSP"];
    $product = info_product($idSP);
    foreach($product as $p):
?>
<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Sửa Sản Phẩm</h1>
    
    <div class="add-item">
        <form action="././action/product_action.php" method="post" style="margin-top:25px;" enctype='multipart/form-data'>
            <label for="ten">Tên: </label>
            <input type="text" name="ten" id="ten" class="form-control form-control-sm in" value="<?php echo $p["Ten"]; ?>"> <br>
            <input type="hidden" name="idSP" value="<?php echo $idSP; ?>"/>
            <label for="tenkd">Tên không dấu: </label>
            <input type="tenkd" name="tenkd" id="tenkd" class="form-control form-control-sm in" value="<?php echo $p["TenKD"]; ?>"> <br>
            <label for="gia">Giá gốc: </label>
            <input type="number" name="gia" id="giagoc" class="form-control form-control-sm in-s" value="<?php echo $p["GiaGoc"]; ?>"> <br>
            <label for="giagiam">Giá giảm: </label>
            <input type="number" name="giagiam" id="giagiam" class="form-control form-control-sm in-s" value="<?php echo $p["GiaGiam"]; ?>" onfocus="setMax()"> Tối đa: <span id="max-cost"></span><br>
            <label for="idTH">Thương hiệu: </label>
            <input type="hidden" name="idTH" id="idTH" value="<?php echo $p["idTH"]; ?>">
            <input type="text" class="form-control form-control-sm in-s" id="thuong-hieu" disabled value="<?php echo $p["ThuongHieu"]; ?>"> <a href="javascript:void(0)"  onclick="document.getElementById('th').style.display='block'">Thay đổi</a> <br>
            <label for="mota">Mô tả sản phẩm: </label>
            <textarea id="mota" class="ckeditor" name="mota"><?php echo $p["MoTa"]; ?></textarea> <br>
            <label for="loai">Loại: </label>
            <select name="loai" id="loai" class="form-control form-control-sm in-s" style="width: 150px">
                <?php
                    $loai = all_loai();
                    foreach( $loai as $l ):
                ?>
                    <option value="<?php echo $l["idLoai"]; ?>" <?php if($l["idLoai"] === $p["idLoai"]){echo "selected";} ?>><?php echo $l["Loai"]; ?></option>
                <?php
                    endforeach;
                ?>
            </select> <br>
            <label for="loaisp">Loại sản phẩm: </label>
            <select name="loaisp" id="loaisp" class="form-control form-control-sm in-s" style="width: 150px">
                <?php
                    $loaisp = loaisp_loai($p["idLoai"]);
                    foreach( $loaisp as $lsp ):
                ?>
                    <option value="<?php echo $lsp["idLoaiSP"]; ?>" <?php if($lsp["idLoaiSP"] === $p["idLoaiSP"]){echo "selected";} ?> ><?php echo $lsp["LoaiSP"]; ?></option>
                <?php
                    endforeach;
                ?>
            </select> <br>
            <label for="ttsp">Tình trạng sản phẩm: </label>
            <select name="idTTSP" id="ttsp" class="form-control form-control-sm in-s" style="width: 150px">
                <?php
                    $ttsp = ttsp();
                    foreach( $ttsp as $t ):
                ?>
                    <option value="<?php echo $t["idTTSP"]; ?>" <?php if($t["idTTSP"] === $p["idTTSP"]){echo "selected";} ?> ><?php echo $t["TinhTrang"]; ?></option>
                <?php
                    endforeach;
                ?>
            </select> <br>
            <label for="img">Ảnh bìa: </label>
            <input type="hidden" name="tenanh" value="<?php echo $p["Anh"]; ?>"/>
            <input type="file" name="img" id="img" /> <br>
            <img src="../public/img/product/<?php echo $p["Anh"]; ?>" alt="" width="30%">
            <br>
            <button type="submit" class="btn-sub" name="sua" data-toggle="modal" data-target="#myModal">Sửa</button>
            <a href="javascript:void(0)" onclick="window.history.back();">Quay lại</a>
        </form>
        <!-- table thương hiệu -->
        <div id="th" class="modal" style="display:none;margin:2% 22%;width: 60%;padding:2%;height:auto;background-color:#fff;box-shadow: 0px 0px 18px 0px grey;">
            <span onclick="document.getElementById('th').style.display='none'" class="close" title="Close Modal">&times;</span>
            <div class="modal-content animate">
            
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="id">ID</th>
                            <th>Thương Hiệu</th>
                            <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $thuonghieu = all_th();
                            foreach($thuonghieu as $th):
                        ?>
                        <tr>
                            <td><?php echo $th["idTH"]; ?></td>
                            <td><?php echo $th["ThuongHieu"]; ?></td>
                            <td>
                                <a href="javascript:void(0)" onclick="getTH(this)" data-id="<?php echo $th["idTH"]; ?>" data-th="<?php echo $th["ThuongHieu"]; ?>">Chọn</a> 
                            </td>
                        </tr>
                        
                        <?php
                            endforeach;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
        <script>
            function getTH(ele){
                document.getElementById('th').style.display='none';
                var id = ele.getAttribute("data-id");
                var th = ele.getAttribute("data-th");
                document.getElementById("idTH").setAttribute("value", id);
                document.getElementById("thuong-hieu").setAttribute("value", th);
            }
        </script>
        <!-- table thương hiệu -->
    </div>
</div>
<?php
    endforeach;
?>