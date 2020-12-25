<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../">
        <img src="../public/img/logo.png" alt="" srcset="" width="70%">
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="./">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>


    <!-- Các bảng quản lý -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-table"></i>
            <span>Quản lý</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="./?p=show-product">Sản phẩm</a>
                <a class="collapse-item" href="./?p=show-color">Màu</a>
                <a class="collapse-item" href="./?p=show-size">Size</a>
                <a class="collapse-item" href="./?p=show-order">Đơn hàng</a>
                <a class="collapse-item" href="./?p=show-magiamgia">Mã giảm giá</a>
                <a class="collapse-item" href="./?p=show-slide">Slide</a>
                <a class="collapse-item" href="./?p=show-brand">Thương hiệu</a>
                <a class="collapse-item" href="./?p=show-user">Người dùng</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>