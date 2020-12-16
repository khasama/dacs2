<?php
    $cart = (isset($_SESSION["cart"])) ? $_SESSION["cart"] : [];
    $total = 0;
    // echo "<pre>";
    // print_r($cart);
?>

<div class="frame" id="gio-hang">
    <h3 id="tt-gh">Giỏ hàng của bạn</h3>
        <table>
            <thead>
                <tr>
                    <th class="ten-sp">Sản phẩm</th>
                    <th class="kieu">Kiểu</th>
                    <th >Đơn giá</th>
                    <th class="sl-sp">Số lượng</th>
                    <th >Thành tiền</th>
                    <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    foreach($cart as $key):
                        
                ?>
                    <tr>
                        <td class="ten-sp">
                            <img src="public/img/product/<?php echo $key["img"]; ?>" alt="" width="100px" style="float: left;margin-right: 7px;">
                            <?php echo $key["name"]; ?>
                        </td>
                        <td class="kieu">
                            <?php echo $key["kieu"]; ?>
                        </td>
                        <td class="gia-sp">
                            <?php echo number_format($key["price"], 0, ",", "."); ?> ₫
                        </td>
                        <td class="sl-sp">
                            <form action="u_action/cart_action.php" method="post">
                                <input type="hidden" name="idSP" value="<?php echo $key["id"]; ?>">
                                <input type="number" value="<?php echo $key["quantity"]; ?>" name="quantity" min="1">
                                <button type="submit" id="update-sp" name="update">Cập nhật</button>
                            </form>
                        </td>
                        <td class="thanh-tien">
                            <?php echo number_format($key["quantity"]*$key["price"], 0, ",", "."); ?> ₫
                        </td>
                        <td class="dlt-sp">
                            <form action="u_action/cart_action.php" method="post">
                                <input type="hidden" name="idSP" value="<?php echo $key["id"]; ?>">
                                <button type="submit" id="btn-delete" name="delete">Xóa</button>
                            </form>
                        </td>
                    </tr>
                <?php
                    $total += $key["quantity"]*$key["price"];
                    endforeach;
                ?>

            </tbody>
        </table>
        

    <div id="pay">
        <div id="ma-giam-gia">
            <label for="mgg">Mã giảm giá: </label>
            <input type="text" id="mgg" placeholder="Nhập mã(nếu có)">
            <a href="javascript:void(0)" onclick="checkMGG()">Kiểm tra</a>
            <input type="hidden" id="tien" value="<?php echo $total; ?>">
        </div>
        <div id="thanh-toan">
            <div>
                <h4 >Tổng tiền: <span id="tongtien"> <?php echo number_format($total, 0, ",", "."); ?> ₫</span></h4>
            </div>
            <a href="javascript:void(0)" onclick="document.getElementById('id01').style.display='block'">Xác nhận</a>
        </div>
    </div>
    <div id="id01" class="modal">
        <form class="modal-content animate" action="u_action/cart_action.php" onsubmit="return checkThanhToan()" method="post">
            <div class="form-thanh-toan">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h4>Thông tin thanh toán</h4>
                <label for="tenkh">Tên khách hàng(người nhận): </label>
                <input type="text"  name="tenkh" id="tenkh"> <br>
                <label for="sdt">Số điện thoại: </label>
                <input type="number"  name="sdt" id="sdt"> <br>
                <label for="dc">Nơi nhận: </label>
                <input type="text"  name="dc" id="dc"> <br>
                <label for="email">Email(*): </label>
                <input type="text"  name="email" > <br>
                <label for="ghichu">Ghi chú(*): </label><br>
                <textarea id="ghichu" style="margin: 0px;resize: none;height: 110px;width:100%;" value="" name="ghichu"></textarea> 
                <input type="hidden" id="tongtienthanhtoan"  name="tongtien" value="<?php echo $total; ?>"> <br>
                <span>(*): Không bắt buộc</span>
                <h5>Tổng tiền bạn phải thanh toán: <span id="tttt"><?php echo number_format($total, 0, ",", "."); ?> ₫</span></h5>
                <button type="submit" name="thanh-toan">Xác nhận thanh toán</button>
            </div>
            
        </form>
    </div>
    
</div>