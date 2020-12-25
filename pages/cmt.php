<h4>Bình Luận</h4>

<div id="user-input">
    <img src="public/img/user/<?php echo $_SESSION["img"]; ?>" alt="" id="u-i">
    <div id="cmt-in">
        <form action="u_action/user_action.php" method="post" onsubmit="return cmt()">
            <textarea name="cmt" id="ndcmt" placeholder="Nhập bình luận"></textarea>
            <input type="hidden" name="idSP" value="<?php echo $idSP; ?>">
            <input type="hidden" name="idUser" value="<?php echo $_SESSION["idUser"]; ?>">
            <button type="submit" name="dang">Đăng</button>
        </form>
    </div>
</div>

<div id="list-cmt">
    <?php
        $cmts = cmt_pro($idSP);
        foreach($cmts as $cmt):
    ?>
    <div class="user-cmt">
        <img src="public/img/user/<?php echo $cmt["Avatar"]; ?>" alt="" srcset="">
        <div class="content-cmt" style="width : 100%;">
            <h5><?php echo $cmt["TaiKhoan"]; ?></h5> <span class="time"><?php echo $cmt["NgayTao"]; ?></span>
            <p><?php echo $cmt["NoiDung"]; ?></p>
        </div>
    </div>
    <?php
        endforeach;
    ?>
</div>