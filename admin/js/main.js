function addMoviefileValidation(){
    var fileInput = document.getElementById('img');
    var fileInput_bg = document.getElementById('img-bg');
    var tenphim = document.getElementById('ten-phim');
    var tenphimkhac = document.getElementById('ten-phim-khac');
    var noidung = document.getElementById('noidung');
    var filePath = fileInput.value; 
    var filePath_bg = fileInput_bg.value; 
    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;//các tập tin cho phép
    
    if( tenphim.value === "" && tenphimkhac.value === "" && noidung.value === "" ){
        var erro = document.getElementById('popup');
        erro.innerHTML = "Vui lòng nhập đầy đủ thông tin";
        return false;
    }
    // Kiểm tra định dạng
    if(!allowedExtensions.exec(filePath) || !allowedExtensions.exec(filePath_bg)){
        var erro = document.getElementById('popup');
        erro.innerHTML = "Vui lòng upload các file có định dạng: .jpeg .jpg .png ";
        return false;
    }
  
    return true;
}

function getID(ele){
    document.getElementById('id02').style.display='block';
    var id = ele.getAttribute("data-id");
    document.getElementById("idMauSP").setAttribute("value", id);
}


function getIDs(ele){
    document.getElementById('id02').style.display='block';
    var id = ele.getAttribute("data-id");
    var cost = ele.getAttribute("data-cost");
    var size = ele.getAttribute("data-size");
    document.getElementById("idSizeSP").setAttribute("value", id);
    document.getElementById("cost").setAttribute("value", cost);
    document.getElementById("size").setAttribute("value", size);
}
function setMax(){
    var giagoc = document.getElementById("giagoc");
    var mc = document.getElementById("max-cost");
    var max = giagoc.getAttribute("value");
    document.getElementById("giagiam").setAttribute("max", max);
    mc.innerHTML = max;
}
function setMaxV2(){
    var giagoc = document.getElementById("giagoc").value;
    var mc = document.getElementById("max-cost");
    document.getElementById("giagiam").setAttribute("max", giagoc);
    mc.innerHTML = giagoc;
}

function detailOrder(ele){
    const id = ele.getAttribute("data-id"); 
    document.getElementById('thongtin').style.display='block'
    $.get("dbcon/thongtinorder.php", {idDH:id}, function(data){
        $("#thongtin").html(data);
    });
}

