function changeImg(ele){
    var img = ele.getAttribute("data-img");
    document.getElementById("main-img").innerHTML = "<img  src='public/img/product/"+img+"'>";
}



function listDown(ele){
    const status = ele.getAttribute("id");
    if(status === "u-n"){
        $("#user").animate({top:'25px'},500);
        $("#u-n").attr('id', "u-n-s");
    }
    if(status === "u-n-s"){
        $("#user").animate({top:'-110px'},100);
        $("#u-n-s").attr('id', "u-n");
    }
}

function changeSize(ele){
    const gia = ele.getAttribute("data-price");
    const giam = ele.getAttribute("data-giam");
    const id = ele.getAttribute("data-id");
    document.getElementById("gia-ban").innerHTML = gia;
    document.getElementById("giam").innerHTML = giam;
    document.getElementById("size-sp").setAttribute("value", id);
    $(".size").attr("style","");
    ele.setAttribute("style", "background-color:#5ccaff;color: #fff;");
}

function changeColor(ele){
    const id = ele.getAttribute("data-id");
    document.getElementById("mau-sp").setAttribute("value", id);
    $(".mau").attr("style","");
    ele.setAttribute("style", "background-color:#5ccaff;color: #fff;");
}

function checkThanhToan(){
    const tenkh = document.getElementById("tenkh").value;
    const sdt = document.getElementById("p").value;
    const dc = document.getElementById("dc").value;
    
    if(tenkh !== "" && sdt !== "" && dc !== ""){
        alert("Thanh toán thành công !!!");
        return true;
    }else{
        alert("Vui lòng nhập những thông tin bắt buộc !!!");
        return false;
    }
}

function checkMGG(){
    const mgg = document.getElementById("mgg").value;
    const tien = document.getElementById("tien").value;
    $.get("u_action/magiamgia.php", {mgg:mgg, tien:tien}, function(data){
        $("#tongtien").html(data);
        $("#tttt").html(data);
        $("#ghichu").html(data);
    });
    $.get("u_action/giamgia.php", {mgg:mgg, tien:tien}, function(data){
        $("#tongtienthanhtoan").attr("value",data);
    });
}

function checkAddCart(){
    const size = document.getElementById("size-sp").value;
    const mau = document.getElementById("mau-sp").value;
    if(size === ""){
        alert("Vui lòng chọn size cho sản phẩm !!!");
        return false;
    }
    if(mau === ""){
        alert("Vui lòng chọn màu cho sản phẩm !!!");
        return false;
    }
    alert('Đã thêm vào giỏ hàng !!!');
    return true;

}
function changeOption(ele){
    // const type= ele.getAttribute("data-type");
    // const idLoai = ele.getAttribute("data-id");
    $(".option-item").attr("style","");
    $(ele).css({"color": "#0056b3", "text-decoration": "underline"});
    // $.get("u_action/timloai_sort.php", {type:type, idLoai:idLoai}, function(data){
    //     $("#loai-sort").html(data);
    // });
}

function cmt(){
    const cmt = $('textarea#ndcmt').val()
    if(cmt !== ""){
        return true;
    }else{
        alert("Vui lòng nhập nội dung !!!");
        return false;
    }
    // $.get("u_action/timloai_sort.php", {type:type, idLoai:idLoai}, function(data){
    //     $("#loai-sort").html(data);
    // });
}
// function changeOptionlsp(ele){
//     const type= ele.getAttribute("data-type");
//     const idLoaiSP = ele.getAttribute("data-idSP");
//     $(".option-item").attr("style","");
//     $(ele).css({"color": "#0056b3", "text-decoration": "underline"});
//     $.get("u_action/timloai_sort.php", {type:type, idLoai:idLoai}, function(data){
//         $("#loai-sort").html(data);
//     });
// }

function viewDetail(ele){
    const id= ele.getAttribute("data-id");
    $.get("u_action/detailhis.php", {idDH:id}, function(data){
        $("#detail").html(data);
    });
    document.getElementById('detail').style.display='block'
}

