<div id="demo" class="carousel slide" data-ride="carousel">
    <!-- The slideshow -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="public/img/slide/slide-1.jpg" width="100%" style="max-height:480px;">
        </div>
        <?php
            $slide = all_slide();
            foreach($slide as $s):
        ?>
        <div class="carousel-item">
            <img src="public/img/slide/<?php echo $s["Slide"]; ?>" width="100%" style="max-height:480px;">
        </div>
        <?php
            endforeach;
        ?>
    </div>

    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>

<div id="news" class="frame">
    <h3 class="product-type"><a href="">Sản phẩm mới</a></h3>
    <div class="row-product">
        <?php
            $new = new_product();
            foreach($new as $n):
                $pt = 100 - (($n["GiaGiam"]*100)/$n["GiaGoc"]);
                $pt = round($pt, 0, PHP_ROUND_HALF_UP);
        ?>
            <div class="product">
                <a href="./?p=thong-tin&idSP=<?php echo $n["idSP"]; ?>&name=<?php echo $n["TenKD"]; ?>" class="product-item">
                    <img src="public/img/product/<?php echo $n["Anh"]; ?>" alt="<?php echo $n["Ten"]; ?>" class="img-product"><br>
                    <span class="title-product"><?php echo $n["Ten"]; ?></span> <br>
                    <span class="gia"><?php echo number_format($n["GiaGiam"], 0, ",", "."); ?> ₫</span>
                    <span class="phan-tram"><?php echo $pt; ?>%</span><br>
                    <span class="gia-goc"><?php echo number_format($n["GiaGoc"], 0, ",", "."); ?> ₫</span>
                </a>
            </div>
        <?php
            endforeach;
        ?>
    </div>
</div>
<div id="hot" class="frame">
<h3 class="product-type"><a href="">Sản phẩm bán chạy</a></h3>
    <div class="row-product">
        <?php
            $new = new_product();
            foreach($new as $n):
                $pt = 100 - (($n["GiaGiam"]*100)/$n["GiaGoc"]);
                $pt = round($pt, 0, PHP_ROUND_HALF_UP);
        ?>
            <div class="product">
                <a href="./?p=thong-tin&idSP=<?php echo $n["idSP"]; ?>&name=<?php echo $n["TenKD"]; ?>" class="product-item">
                    <img src="public/img/product/<?php echo $n["Anh"]; ?>" alt="<?php echo $n["Ten"]; ?>" class="img-product"><br>
                    <span class="title-product"><?php echo $n["Ten"]; ?></span> <br>
                    <span class="gia"><?php echo number_format($n["GiaGiam"], 0, ",", "."); ?> ₫</span>
                    <span class="phan-tram"><?php echo $pt; ?>%</span><br>
                    <span class="gia-goc"><?php echo number_format($n["GiaGoc"], 0, ",", "."); ?> ₫</span>
                </a>
            </div>
        <?php
            endforeach;
        ?>
    </div>
</div>