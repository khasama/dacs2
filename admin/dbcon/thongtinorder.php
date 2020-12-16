<?php
    require "ConDB.php";
    $idDH = $_GET["idDH"];
    $sql = "
        SELECT * FROM tb_chitietdonhang
        INNER JOIN tb_sanpham
        ON tb_chitietdonhang.idSP = tb_sanpham.idSP
        WHERE idDH = :idDH
    ";
    $pre = $conn->prepare($sql);
    $pre->bindParam(":idDH", $idDH, PDO::PARAM_INT);
    $pre->execute();
    ;
?>

<span onclick="document.getElementById('thongtin').style.display='none'" class="close" title="Close Modal">&times;</span>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>Sản phẩm</th>
            <th>Size-màu</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
        </tr>
    </thead>
    <tbody>
        <?php 
            foreach($pre->fetchAll() as $row):
        ?>
        <tr>
            <td><?php echo $row["Ten"]; ?></td>
            <td><?php echo $row["Kieu"]; ?></td>
            <td><?php echo number_format($row["DonGia"], 0, ",", "."); ?></td>
            <td><?php echo $row["SoLuong"]; ?></td>
            <td><?php echo number_format($row["ThanhTien"], 0, ",", "."); ?></td>
        </tr>
        
        <?php
            endforeach;
        ?>
    </tbody>
</table>