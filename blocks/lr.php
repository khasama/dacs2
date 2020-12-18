<div id="dn-dk">
    <a href="javascript:void(0)" onclick="document.getElementById('dang-nhap').style.display='block'">Đăng nhập</a>
    |
    <a href="javascript:void(0)" onclick="document.getElementById('dang-ki').style.display='block'">Đăng ký</a>

    <div id="dang-nhap" class="modal">
        <form class="modal-content animate" action="u_action/user_action.php" onsubmit="return checkDN()" method="post">
            <div class="form-dn">
                <span onclick="document.getElementById('dang-nhap').style.display='none'" class="close" title="Close Modal">&times;</span>
                <div class="form-group">
                    <img src="public/img/logo.png" id="lg" alt="">
                    <h4>Chào mừng bạn đến với F-Ttc store</h4>
                    
                    <div class="control ">
                        <label for="tdn">Tên đăng nhập hoặc Email:</label>
                        <input type="text" class="form-control" id="tdn" placeholder="Điền tên năng nhập hoặc Email..." name="tdn">
                        <i class="fa fa-check-circle fa-2x tcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x tcheck cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>
                    <div class="control ">
                        <label for="pw">Mật Khẩu:</label>
                        <input type="password" class="form-control" id="pw" placeholder="Điền Mật Khẩu..." name="pw">
                        <i class="fa fa-check-circle fa-2x tcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x tcheck cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>
                    <p class="faild" id="erroLogin" style="display:none;">Sai thông tin đăng nhập. Vui lòng đăng nhập lại!!!</p>
                </div>
                <div id="btn" style="text-align: center;" >
                    <button type="submit" id="btn-dn" style="margin: 0 15px 0 0;" class="btn btn-primary" name="login">Đăng Nhập</button>
                    <button type="button" id="btn-dk" class="btn btn-primary" onclick="openDK()">Đăng Kí  </button>
                </div>
            </div>
        </form>
    </div>
    <div id="dang-ki" class="modal">
        <form class="modal-content animate" action="u_action/user_action.php" onsubmit="return checkDK()" method="post">
            <div class="form-dn">
                <span onclick="document.getElementById('dang-ki').style.display='none'" class="close" title="Close Modal">&times;</span>
                <div class="form-group">
                    <img src="public/img/logo.png" id="lg" alt="">
                    <h4>Chào mừng bạn đến với F-Ttc store</h4>
                    
                    <div class="control ">
                        <label for="eml">Email:</label>
                        <input type="text" class="form-control" id="eml" name="eml" placeholder="Nhập Email...">
                        <i class="fa fa-check-circle fa-2x tcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x tcheck  cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>

                    <div class="control ">
                        <label for="tdndk">Tên Đăng Nhập:</label>
                        <input type="text" class="form-control" id="tdndk" name="tdndk" placeholder="Nhập tên đăng nhập...">
                        <i class="fa fa-check-circle fa-2x tcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x tcheck  cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>

                    <div class="control ">
                        <label for="sdt">Số điện thoại:</label>
                        <input type="text" class="form-control" id="sdt" name="sdt" placeholder="Nhập sô điện thoại...">
                        <i class="fa fa-check-circle fa-2x tcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x tcheck  cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>
                    
                    <div id="mk" class="control ">
                        <label for="pwdk">Mật Khẩu:</label>
                        <input type="password" class="form-control" id="pwdk" name="pwdk" placeholder="Nhập mật khẩu...">
                        <i class="fa fa-check-circle fa-2x bcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x bcheck cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>
    
                    <div id="rmk" class="control ">
                        <label for="pwdk">Nhập Lại Mật Khẩu:</label>
                        <input type="password" class="form-control" id="rpwdk" name="rpwdk" placeholder="Nhập lại mật khẩu...">
                        <i class="fa fa-check-circle fa-2x bcheck csucc" aria-hidden="true"></i>
                        <i class="fa fa-exclamation-circle fa-2x bcheck cerro" aria-hidden="true"></i>
                        <p class="tb"></p>
                    </div>
                </div>
                <div id="btn" style="text-align: center;" >
                    <button type="submit" id="btn-dk"class="btn btn-primary" name="regis">Đăng Kí  </button>
                    <button type="button" id="btn-dn" style="margin: 0 15px 0 0;" class="btn btn-primary" onclick="openDN()">Đăng Nhập</button>
                </div>
            </div>
        </form>
    </div>
</div>