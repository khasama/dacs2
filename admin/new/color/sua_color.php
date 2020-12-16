<?php
    $color = info_season((int)$_GET["idCol"]);
    foreach( $color as $c ):
?>
<div class="container-fluid">

    <h1 class="h3 mb-2 text-gray-800">Chỉnh sửa Màu</h1>
    
    <div class="add-item"> 
        <form action="././action/season_action.php" method="post" style="" enctype='multipart/form-data'>
            <label for="phim">Phim: </label>
            <input type="text" name="phim" id="" class="form-control form-control-sm in-s" disabled value="<?php echo $p["Ten"]; ?>"> <br>
            <label for="seri">Series:</label>
            <select name="seri" id="" class="form-control form-control-sm in">
                <?php
                    $sr = all_series();
                    foreach($sr as $s):
                ?>
                    <option value="<?php echo $s["idSR"]; ?>"><?php echo $s["Phim"]; ?></option>
                <?php
                    endforeach;
                ?>
            </select> <br>
            <label for="sea">Season( Mùa): </label>
            <input type="text" name="sea" id="" class="form-control form-control-sm in-s"> <br>
            <input type="hidden" name="idPhim" id="" value="<?php echo $p["idPhim"]; ?>">
            <button type="submit"  class="btn-sub" name="add" data-toggle="modal" data-target="#myModal">Thêm</button>
        </form>
    </div>
</div>
<?php
    endforeach;
?>