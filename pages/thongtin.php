<?php
    $idSP = (int)$_GET["idSP"];
    $product = info_product($idSP);
    $count = 0;
    foreach($product as $p):
        $pt = 100 - (($p["GiaGiam"]*100)/$p["GiaGoc"]);
        $pt = round($pt, 0, PHP_ROUND_HALF_UP);
        $rate = luot_rating($idSP);
        $luot = 0;
        $score = 0;
        foreach($rate as $r){
            $score += $r["Rating"];
            $luot++;
        }
        $aver = ($luot !== 0) ? round($score/$luot, 1) : 0;
?>

<div class="frame" id="info-product">
    <div class="row">
        <div id="anh-sp" class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <div id="main-img">
                <img  src="public/img/product/<?php echo $p["Anh"]; ?>">
            </div>
            <div id="list-img">
                <?php
                    $list_img = all_image($idSP);
                    foreach($list_img as $li):
                ?>
                    <div class="img-item" data-img="<?php echo $li["Img"]; ?>" onclick="changeImg(this);">
                        <img src="public/img/product/<?php echo $li["Img"]; ?>" alt="">
                    </div>
                <?php
                    endforeach;
                ?>
            </div>
            
        </div>
        <div id="tt-sp" class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
            <p id="name-sp"><?php echo $p["Ten"]; ?></p>
            <div id="th-tt">
                <h6>Thương hiệu: <a href=""><?php echo $p["ThuongHieu"]; ?></a></h6> |
                <span>Tình trạng: <?php echo $p["TinhTrang"]; ?></span> 
                <span id="love"><i class="fa fa-heart" aria-hidden="true"></i> <?php echo $p["LuotLike"]; ?></span>
            </div>
            <div id="cost">
                <span id="gia-ban"><?php echo number_format($p["GiaGiam"], 0, ",", "."); ?> ₫</span>
                <span id="gia-goc" ><?php echo number_format($p["GiaGoc"], 0, ",", "."); ?> ₫</span>
                <span id="giam" >-<?php echo $pt; ?>%</span>
            </div>
            <?php
                $count = count_sizesp($idSP);
                if($count > 0):
                    
            ?>
                <div id="size">
                    <span>Size: </span> <br>
                    <?php
                        $size = size_sp($idSP);
                        foreach($size as $s):
                            $giam = 100 - (($s["Gia"]*100)/$p["GiaGoc"]);
                            $giam = round($giam, 0, PHP_ROUND_HALF_UP);
                    ?>
                        <a href="javascript:void(0)" data-price="<?php echo number_format($s["Gia"], 0, ",", "."); ?> ₫" class="size"
                         data-id="<?php echo $s["idSizeSP"] ?>" data-giam="<?php echo $giam."%"; ?>" onclick="changeSize(this)">
                            <?php echo $s["Size"]; ?>
                        </a>
                    <?php endforeach; ?>
                </div>
            <?php
                    
                endif; 
            ?>
            <div id="mau">
                <span>Màu: </span> <br>
                <?php
                    $color = color_sp($idSP);
                    foreach($color as $co):
                ?>
                    <a href="javascript:void(0)" class="mau" data-id="<?php echo $co["idMauSP"]; ?>" onclick="changeColor(this);"><?php echo $co["Mau"]; ?></a>
                <?php
                    endforeach;
                ?>
            </div>
            <form action="u_action/cart_action.php" onsubmit="return checkAddCart()" method="POST">
                <label for="">Số lượng: </label>
                <input type="number" value="1" min="1" name="soluong" id="so-luong"><br>
                <button type="submit" name="add-cart" id="add-cart">Thêm giỏ hàng <i class="fa fa-cart-plus" aria-hidden="true"></i></button>
                <a href="" id="like"><i class="fa fa-heart" aria-hidden="true"></i></a>
                <input type="hidden" value="<?php if($count === 0){echo "0";}else{echo "";} ?>" name="size"  id="size-sp"><br>
                <input type="hidden" value=""  id="mau-sp" name="mau"><br>
                <input type="hidden" value="<?php echo $idSP; ?>"  name="idSP"><br>   
            </form>
        </div>
    </div>            
</div>

<!-- mô tả -->
<div id="mo-ta" class="frame">
    <h3>Mô tả sản phẩm</h3>
    <div id="mt-content">
        <?php
            echo $p["MoTa"];
        ?>
    </div>
</div>
<!-- end mô tả -->

<!-- rate -->
<div id="danh-gia" class="frame">
    <div class="row">
        <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3" id="total-rating">
            <h3>Đánh Giá</h3>
            <p id="r"><?php echo $aver; ?></p><span id="t-r">(<?php echo $luot; ?> nhận xét)</span> <br>
            <input type="hidden" id="aver" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="<?php echo $aver; ?>" disabled/>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3" id="detail-rating">
            <input type="hidden" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="5" disabled/> <span class="slr" id="five"><?php echo get_start(5,$idSP); ?></span> <br>
            <input type="hidden" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="4" disabled/> <span class="slr" id="four"><?php echo get_start(4,$idSP); ?></span> <br>
            <input type="hidden" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="3" disabled/> <span class="slr" id="three"><?php echo get_start(3,$idSP); ?></span> <br>
            <input type="hidden" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="2" disabled/> <span class="slr" id="two"><?php echo get_start(2,$idSP); ?></span> <br>
            <input type="hidden" class="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty" value="1" disabled/> <span class="slr" id="one"><?php echo get_start(1,$idSP); ?></span> <br>
        </div>

        <div id="user-rating" class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
            <h4>Đánh giá của bạn về sản phẩm này</h4>
            <input type="hidden" class="rating" id="rating" data-filled="fa fa-star fa-star-filled" data-empty="fa fa-star fa-star-empty"/>
            <script>
                $('#rating').rating();
                $('.rating-symbol').click(function(){
                    var idU = <?php if(isset($_SESSION["idUser"])){echo $_SESSION["idUser"];}else{echo "0";} ?>;
                    if(idU !== 0){
                        var rate = $('#rating').rating('rate');
                        $.get("u_action/rating.php", {rate:rate, idU:idU, idSP:<?php echo $idSP; ?>}, function(data){
                            //$("#tongtienthanhtoan").attr("value",data);
                            var json = JSON.parse(data);
                            console.log(json["rating"]);
                            console.log(json["luot"]);
                            $("#one").html(json["one"]);
                            $("#two").html(json["two"]);
                            $("#three").html(json["three"]);
                            $("#four").html(json["four"]);
                            $("#five").html(json["five"]);
                            $("#t-r").html("(" + json["luot"] + " nhận xét)");
                            $("#r").html(json["rating"]);
                            $("#aver").attr("value",json["rating"]);
                        });
                    }else{
                        alert("Vui lòng đăng nhập để đánh giá !!!");
                    }
                });
            </script>
        </div>

    </div>

    <div id="cmt">
        <?php
            if(!isset($_SESSION["idUser"])){
                echo "<a href='javascript:void(0)' onclick='document.getElementById('dang-nhap').style.display='block''>Đăng nhập</a> để bình luận";
            }else{
                require 'cmt.php';
            }
        ?>
    </div>
</div>
<!-- end rate -->

<?php
    endforeach;
?>