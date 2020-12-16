function setErro(input, mess) {
    var formc = input.parentElement;
    var tb = formc.querySelector("p");
    tb.innerHTML = mess;
    formc.className = "control erro";
}

function setSucc(input, mess) {
    var formc = input.parentElement;
    var tb = formc.querySelector("p");
    tb.innerHTML = mess;
    formc.className = "control succ";
}

function checkDN(){
    var tdnv = document.getElementById("tdn");
    var pwv = document.getElementById("pw");

    if (tdnv.value === "") {
        if (pwv.value === "") {
            setErro(tdnv, "Tên đăng nhập trống");
            setErro(pwv, "Mật khẩu trống");
            return false;
        }else{
            setErro(tdnv, "Tên đăng nhập trống");
            return false;
        }
    } 

    if (pwv.value === "") {
        setErro(pwv, "Mật khẩu trống");
        return false;
    }
    return true;
}

const eml = document.getElementById("eml");
const tdndk = document.getElementById("tdndk");
const pwdk = document.getElementById("pwdk");
const rpwdk = document.getElementById("rpwdk");
var dk = true;
var a = false;
var c = false;
const reg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

eml.addEventListener('blur', (e) => {
    const val = e.target.value;
    if (val === "") {
        setErro(eml, "Email trống");
    } 
});

eml.addEventListener('keyup', (e) => {
    const val = eml.value;
    if (val === "") {
        setErro(eml, "Email trống");
    } else if (reg.test(val) != dk) {
        setErro(eml, "Email không đúng định dạng");
    } else {
        setSucc(eml, "");
        a = true;
    }
});

tdndk.addEventListener('keyup', (e) => {
    const val = tdndk.value;
    if (val === "") {
        setErro(tdndk, "Tên đăng nhập trống !!!");
    } else if (val.length <= 6) {
        setErro(tdndk, "Tên đăng nhập phải lớn hơn 6 kí tự");
    } else {
        setSucc(tdndk, "");
        
    }

});
tdndk.addEventListener('blur', (e) => {
    const val = e.target.value;
    if (val === "") {
        setErro(tdndk, "Tên đăng nhập trống !!!");
    } else if (val.length <= 6) {
        setErro(tdndk, "Tên đăng nhập phải lớn hơn 6 kí tự");
    }
});

pwdk.addEventListener('blur', (e) => {
    const val = e.target.value;

    if (val === "") {
        setErro(pwdk, "Mật khẩu trống");
    }

});
pwdk.addEventListener('keyup', (e) => {
    const val = pwdk.value;

    if (val === "") {
        setErro(pwdk, "Mật khẩu trống");
    }  else if (val.length <= 4) {
        setErro(pwdk, "Mật khẩu phải lớn hơn 4 kí tự");
    }else{
        setSucc(pwdk, "");
    }

});

rpwdk.addEventListener('blur', (e) => {
    const val = e.target.value;
    
    if (val === "") {
        setErro(rpwdk, "Nhập lại mật khẩu trống");
    } 
});
rpwdk.addEventListener('keyup', (e) => {
    const val = rpwdk.value;
    const pwdk1 = pwdk.value;

    if (val === "") {
        setErro(rpwdk, "Nhập lại mật khẩu trống");
    } else if (val != pwdk1) {
        setErro(rpwdk, "Mật khẩu không trùng khớp");
        setErro(pwdk, "Mật khẩu không trùng khớp")
    } else if(pwdk1.length <= 4 || val.length <= 4){
        setErro(rpwdk, "Mật khẩu phải lớn hơn 4 kí tự");
        setErro(pwdk, "Mật khẩu phải lớn hơn 4 kí tự");
    }else{
        setSucc(pwdk, "");
        setSucc(rpwdk, "");
        c = true;
    }
});

function checkDK() {
    var tdn = tdndk.value;
    var val = eml.value;

    if ( a === true && tdn.length > 6 && c === true ) {
        if (reg.test(val) === dk){
            return true;
        }
        alert('Vui lòng nhập đúng định dạng email');
        return false;
    }  
    else{
        alert('Vui lòng nhập đầy đủ tất cả các thông tin');
        return false;
    } 
    return false;   
}

function openDN(){
    document.getElementById('dang-ki').style.display='none';
    document.getElementById('dang-nhap').style.display='block';
}

function openDK(){
    document.getElementById('dang-nhap').style.display='none';
    document.getElementById('dang-ki').style.display='block';
}

function erroLogin(){
    document.getElementById('dang-nhap').style.display='block';
    document.getElementById('erroLogin').style.display='block';
}
