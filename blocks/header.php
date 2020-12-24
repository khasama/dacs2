<?php
    $cart = (isset($_SESSION["cart"])) ? $_SESSION["cart"] : [];
?>
<div class="header">
    <!-- trên -->
    <div id="top-head">
        <div class="frame" id="contact">
            <span id="email">
                Email: hahaha@gmail.com
            </span>
            <?php
                if(isset($_SESSION["idUser"])){
                    require 'ua.php';
                }else{
                    require 'lr.php';
                }
            ?>
            
        </div>
    </div>
    <!-- giữa -->
    <div id="mid-head">
        <div class="frame" id="logo">
            <a href="./" >
                <img src="public/img/logo.png" alt="">
            </a>
        </div>
    </div>
    <!-- dưới -->
    <div id="bot-head">
        <div class="frame" id="action">
            <div class="row">
                <div id="menu" class="col-3 col-sm-7 col-md-7 col-lg-6 col-xl-6">
                    <nav class="navbar navbar-expand-sm navbar-dark" style="height: 100%;padding: 0;">
                        <!-- Toggler/collapsibe Button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" id="btn" data-target="#collapsibleNavbar" style="margin: 0 auto;">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        
                        <!-- Navbar links -->
                        <div class="collapse navbar-collapse" id="collapsibleNavbar" style="text-align: center;z-index: 99999;">
                            <ul class="navbar-nav" style="width: 100%;">
                                <li class="nav-item">
                                    <a class="nav-link" href="./">TRANG CHỦ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)">SẢN PHẨM</a>
                                    <ul class="sub-menu">
                                        <?php
                                            $loai = all_loai();
                                            foreach($loai as $l):
                                        ?>
                                        <li class="sub-menu-item">
                                            <a class="nav-link" href="./?p=loai&idLoai=<?php echo $l["idLoai"]; ?>"><?php echo $l["Loai"]; ?></a>
                                            <ul class="sub-menu-2">
                                                <?php
                                                    $loaisp = loaisp_loai($l["idLoai"]);
                                                    foreach($loaisp as $lsp):
                                                ?>
                                                    <li><a href="./?p=loai-san-pham&idLoaiSP=<?php echo $lsp["idLoaiSP"]; ?>"><?php echo $lsp["LoaiSP"]; ?></a></li>
                                                <?php
                                                    endforeach;
                                                ?>
                                            </ul>
                                        </li>
                                        <?php
                                            endforeach;
                                        ?>

                                        <!-- <li class="sub-menu-item">
                                            <a class="nav-link" href="#">Trang Phục Nữ</a>
                                            <ul class="sub-menu-2">
                                                <li><a href="">Áo khoác nữ</a></li>
                                                <li><a href="">Áo khoác nữ</a></li>
                                                <li><a href="">Áo khoác nữ</a></li>
                                                <li><a href="">Áo khoác nữ</a></li>
                                            </ul>
                                        </li>
                                        <li class="sub-menu-item">
                                            <a class="nav-link" href="#">Phụ Kiện</a>
                                            <ul class="sub-menu-2">
                                                <li><a href="">Áo khoác nam</a></li>
                                                <li><a href="">Áo khoác nam</a></li>
                                                <li><a href="">Áo khoác nam</a></li>
                                                <li><a href="">Áo khoác nam</a></li>
                                            </ul>
                                        </li> -->
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">GIỚI THIỆU</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">LIÊN HỆ</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1" style="padding: 0;"></div>
                <div id="search" class="col-7 col-sm-3 col-md-3 col-lg-4 col-xl-4">
                    <form action="" method="get" id="form">
                        <input type="hidden" name="p" value="tim-kiem">
                        <input type="text" name="q" id="tk" placeholder="Tìm kiếm:">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                    <div id="suggestions">
                        <!-- <div id="sugg-item">
                            <p>Sơ mi nam</p>
                        </div>
                        <div id="sugg-item">
                            <p>Sơ mi nam</p>
                        </div>
                        <div id="sugg-item">
                            <p>Sơ mi nam</p>
                        </div> -->
                    </div>
                    <script>
                        const search = document.getElementById("tk");
                        const matchlist = document.getElementById("suggestions");

                        const searchStates = async searchText => {
                            const res = await fetch('http://localhost/dacs2/lsp.php');
                            const states = await res.json();

                            // 
                            let matches = states.filter(state => {
                                const regex = new RegExp(`^${searchText}`, 'gi');
                                return state.lsp.match(regex);
                            });

                            //console.log(matches);

                            if(searchText.length < 2){
                                matches = [];
                                matchlist.innerHTML = '';
                            }
                            outputHtml(matches);
                        };

                        const outputHtml = matches => {
                            if(matches.length > 0){
                                const html = matches.map(match => `
                                <div id="sugg-item">
                                    <p>${match.lsp}</p>
                                </div>
                                `).join('');
                                matchlist.innerHTML = html;
                            }
                        };


                        search.addEventListener('input', () => searchStates(search.value));
                    </script>
                </div>
                <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1" style="text-align: left;padding: 0;">
                    <a href="./?p=gio-hang" id="cart">
                        <i class="fa fa-shopping-cart" aria-hidden="true" style="position: absolute;"></i>
                        <span class="badge badge-danger"><?php if(isset($_SESSION["cart"])){echo count($_SESSION["cart"]);}else{echo "0";} ?></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>