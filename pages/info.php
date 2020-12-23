<?php
    if(!isset($_SESSION["idUser"])){
        header("Location: ./");
    }
    $user = info_user($_SESSION["idUser"]);
    foreach($user as $u):
?>
<div class="frame" id="info-user">
    <div class="row">
        <div id="ava-user-action" class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <div id="anh-user">
                <img src="public/img/user/<?php echo $u["Avatar"]; ?>" alt="">
            </div>
            <div id="change-img">
                <form action="#" method="post" class="u-a">
                    <input type="file" name="avatar" id="avatar" style="width: 65%;">
                    <button type="submit" style="margin-bottom: 15px;padding: 0px 20px;border:none;box-shadow: 3px 2px 8px 1px #4b4747;outline: none;">Thay đổi</button>
                </form>
            </div>
        </div>
        <div id="tt-user" class="col-12 col-sm-12 col-md-8 col-lg-84 col-xl-8">
            <div id="i-u">
                <form action="#" method="post" class="u-a">
                    <h4>Thông tin người dùng</h4>
                    <label for="email">Email: </label>
                    <input type="email" name="email" value="<?php echo $u["Email"]; ?>" style="width: 71%;"> <br>
                    <label for="hvt">Họ tên: </label>
                    <input type="text" name="hvt" value="<?php echo $u["HoTen"]; ?>" style="width: 70%;"> <br>
                    <label for="phone">Số điện thoại: </label>
                    <input type="text" name="phone" value="<?php echo $u["SDT"]; ?>" style="width: 64%;"> <br>
                    <label for="address">Địa chỉ: </label>
                    <input type="text" name="address" value="<?php echo $u["DiaChi"]; ?>" style="width: 70%;"> <br>
                    <button type="submit" style="margin-right: 10px;">Lưu thay đổi</button>
                    <button type="button">Lịch sử giao dịch</button>
                </form>
            </div>
            <div style="margin: 10px 0;"></div>
            <div id="change-pass">
                <form action="" class="u-a" method="post">
                    <h4>Thay đổi mật khẩu</h4>
                    <label for="oldpass">Mật khẩu cũ: </label>
                    <input type="password" value="" style="width: 65%;"> <br>
                    <label for="newpass">Mật khẩu mới: </label>
                    <input type="password" value="" style="width: 64%;"> <br>
                    <label for="rnewpass">Nhập lại mật khẩu mới: </label>
                    <input type="password" value="" style="width: 55%;"> <br>
                    <button type="submit">Đổi mật khẩu</button>
                </form>
            </div>
        </div>
    </div>
</div>

<div id="history" class="frame">
    <h4>Lịch sử giao dịch</h4>
    <table>
        <thead>
            <tr>
                <th>Mã đơn hàng</th>
                <th>Tên khách hàng</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
                <th>Tổng tiền</th>
                <th>Thời gian</th>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php
                $orders = order_user($_SESSION["idUser"]);
                foreach($orders as $order):
            ?>
                <tr>
                    <td><?php echo $order["idDH"]; ?></td>
                    <td><?php echo $order["TenKH"]; ?></td>
                    <td><?php echo $order["SDT"]; ?></td>
                    <td><?php echo $order["NoiNhan"]; ?></td>
                    <td><?php echo number_format($order["TongTien"], 0, ",", "."); ?></td>
                    <td><?php echo $order["ThoiGian"]; ?></td>
                    <td><a href="javascript:void(0)" data-id="<?php echo $order["idDH"]; ?>" onclick="document.getElementById('detail').style.display='block'">Xem thông tin</a></td>
                </tr>
            <?php
                endforeach;
            ?>
        </tbody>
    </table>
    <div id="detail" class="modal">
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
                        <tr>
                            <td><a href="">Dây nịt nam thắt lưng nam chất liệu da bò</a></td>
                            <td>Không - đen</td>
                            <td>999.999đ</td>
                            <td>2</td>
                            <td>999.999đ</td>
                        </tr>
                        <tr>
                            <td><a href="">Dây nịt nam thắt lưng nam chất liệu da bò</a></td>
                            <td>Không - đen</td>
                            <td>999.999đ</td>
                            <td>2</td>
                            <td>999.999đ</td>
                        </tr>
                        <tr>
                            <td><a href="">Dây nịt nam thắt lưng nam chất liệu da bò</a></td>
                            <td>Không - đen</td>
                            <td>999.999đ</td>
                            <td>2</td>
                            <td>999.999đ</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php
    endforeach;
?>