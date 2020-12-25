<?php
    require_once "../admin/dbcon/ConDB.php";
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
    
?>
<div class="modal-content animate">
    <div class="ttdh">
        <span onclick="document.getElementById('detail').style.display='none'" class="close" title="Close Modal">&times;</span>
        <table>
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Kiểu</th>
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
                        <td><a href=""><?php echo $row["Ten"]; ?></a></td>
                        <td><?php echo $row["Kieu"]; ?></td>
                        <td><?php echo number_format($row["DonGia"], 0, ",", "."); ?>đ</td>
                        <td><?php echo $row["SoLuong"]; ?></td>
                        <td><?php echo number_format($row["ThanhTien"], 0, ",", "."); ?>đ</td>
                    </tr>
                <?php
                    endforeach;
                ?>
            </tbody>
        </table>
    </div>
</div>