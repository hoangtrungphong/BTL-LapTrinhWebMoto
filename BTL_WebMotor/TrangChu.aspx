<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_WebMotor.TrangChu" %>

<!DOCTYPE html>
<html xmlns="http:/www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="preconnect" href="https:/fonts.googleapis.com"/>
    <link rel="preconnect" href="https:/fonts.gstatic.com" crossorigin/>
    <link href="https:/fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="Style/CssTrangChu/styleTrangChu.css" rel="stylesheet" />
    <link href="Style/CssTrangChu/responsiveTrangChu.css" rel="stylesheet" />
    <script src="Scripts/TrangChuScripts/User.js"></script>
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <link href="assets/icon/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/all.css" rel="stylesheet" />
    <title>Trang Chủ</title>
</head>
<body>
    <form runat="server" method="post">
        <div class="App">
        <!-- HEADER -->
        <div id="header">
            <div class="grid">
                <div class="header-content">
                    <div class="logo">
                        <img src="assets/img/imgTrangChu/HGTP__2_-removebg-preview copy.png" alt="" class="logo-img"/>
                    </div>
                    <div class="header-item">
                        <div class="header-search">
                            <input type="text" name="input_name" id="input_name" class="input-search" placeholder="Nhập từ khóa tìm kiếm"/>
                            <button type="submit" id="search_name" name="search_name" class="menu-search_icon" style="color:white;font-size:1.2rem;" value="">Tìm kiếm</button>
                            <%--<input type="submit" id="search_name" name="search_name" class="menu-search_icon" style="color:white;font-size:1.4rem;" value="Tìm kiếm"/>--%>
                        </div>
                        <div class="header-info header-info__rpsMobile close">
                            <div class="header-info_first">
                                <a href="#" class="social-icon">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="social-icon">
                                    <i class="fab fa-youtube"></i>
                                </a>
                                <div class="info-contact">
                                    <a href="#" class="info-contact_icon">
                                        <i class="fas fa-user"></i>
                                    </a>
                                    <span class="info-login">Đăng Nhập</span>
                                    <span class="info-register">Đăng ký</span>  
                                    <a href="" class="info-open_icon info-open_icon-rpsMobile">
                                        <i class="fa-solid fa-cart-shopping"></i>
                                    </a>
                                    <div class="info__notify" >
                                        <div class="info__notify-account">
                                            <a href="DangKy.aspx" class="info__notify-register-rpsMobile">Đăng ký</a> 
                                            <a href="DangNhap.aspx" class="info__notify-login--rpsMobile">Đăng nhập</a>
                                            <a href="" class="info__notify-text">
                                                <i class="fas fa-chevron-right"></i>
                                                Dịch vụ khách hàng
                                            </a>
                                            <a href="" class="info__notify-text">
                                                <i class="fas fa-chevron-right"></i>
                                                Hỗ trợ khách hàng
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-info">
                        <div class="header-info_first">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-youtube"></i>
                            </a>
                            <!-- Đây là khối user-->
                            <div class="info-contact"  id="info" runat="server">
                               <!-- nhét code vào đây -->
                            </div>
                            <!-- -->
                        </div>
                        <div class="header-info_second">
                            <a href="" class="info-post_icon">
                                <i class="fas fa-edit"></i>
                                <p>Đăng bán xe</p>
                            </a>
                            <a href="GioHang.aspx" class="info-open_icon">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <p>Giỏ hàng</p>
                            </a>
                            <a href="" class="info-question_icon">
                                <i class="far fa-question-circle"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- NAVIGATION -->
            <div class="nav ">
                    <div class="grid">
                        <p class="nav-text nav-text__rpsMobile close">TÙY CHỌN</p>
                        <ul class="nav-first">
                            <li class="nav-item"><a href="">Trang chủ</a></li>
                            <li class="nav-item"><a href="">chợ xe máy</a></li>
                            <li class="nav-item"><a href="">tin tức</a></li>
                            <li class="nav-item"><a href="">đại lý</a></li>
                        </ul>
                        <div class="nav-icon nav-icon__rpsMobile close">
                            <i class="fas fa-bars"></i>
                        </div>
                    </div>
                </div>
        </div>

        <!-- BANNER -->
        <div id="banner-motobike">
            <figure class="loader">
                <a href="" target="_blank">
                    <img src="assets/img/imgTrangChu/banner.jpg" alt="ảnh lỗi" class="loader_banner">
                </a>
            </figure>
        </div>
        
        <!-- CONTAINER -->
        <div class="container">
            <div class="grid">
                <!-- SEARCH -->
                <div class="container__search">
                    <div class="search__moto">
                        <div class="search__moto-header">
                            <h4 class="title">Tìm kiếm xe</h4>
                        </div>
    
                        <div class="search__moto-list-option grid__row">
                            <div class="grid__column-6">  
                                <!-- list item option -->  
                                <select class="search__moto-option js-search__moto-option" id="search_color" name="search_color" runat="server">
                                    <option class="search__moto-item" value="none">Màu xe</option>
                                    <option class="search__moto-item" value="Đen">Đen</option>
                                    <option class="search__moto-item" value="Đỏ">Đỏ</option>
                                    <option class="search__moto-item" value="Trắng">Trắng</option>
                                    <option class="search__moto-item" value="Vàng">Vàng</option>
                                    <option class="search__moto-item" value="Xám">Xám</option>
                                    <option class="search__moto-item" value="Xanh lá">Xanh lá</option>
                                    <option class="search__moto-item" value="Xanh dương">Xanh dương</option>
                                </select>
                            </div>
                            <div class="grid__column-6">
                                <!-- list item option -->
                                <select class="search__moto-option js-search__moto-option" id="search_phankhoi" name="search_phankhoi" runat="server">
                                        <option class="search__moto-item" value = "1">Phân khối</option>
                                        <option class="search__moto-item" value = "50-174">51cc-174cc</option>
                                        <option class="search__moto-item" value = "175-400">175cc-400cc</option>
                                        <option class="search__moto-item" value = "401-750">401cc-750cc</option>
                                        <option class="search__moto-item" value = "751-1000">751cc-1000cc</option>
                                </select>
                            </div>
                            <div class="grid__column-6">
                                <select class="search__moto-option js-search__moto-option" id="search_tinhtrang" name="search_tinhtrang" runat="server">
                                    <option class="search__moto-item" value="none">Tình trạng xe</option>
                                    <option class="search__moto-item" value="Xe Mới">Mới</option>
                                    <option class="search__moto-item" value="Xe Cũ">Cũ</option>
                                </select>
                            </div>
                            <div class="grid__column-6">
                                <!-- list item option -->
                                <select class="search__moto-option js-search__moto-option" id="search_price" name="search_price" runat="server">
                                    <option class="search__moto-item" value="1">Mức giá</option>
                                    <option class="search__moto-item" value="10000000">10.000.000 VND</option>
                                    <option class="search__moto-item" value="50000000">50.000.000 VND</option>
                                    <option class="search__moto-item" value="100000000">100.000.000 VND</option>
                                    <option class="search__moto-item" value="300000000">300.000.000 VND</option>
                                    <option class="search__moto-item" value="500000000">500.000.000 VND</option>
                                    <option class="search__moto-item" value="1000000.000">1.000.000.000 VND</option>
                                    <option class="search__moto-item" value="3000000000">3.000.000.000 VND</option>
                                </select>
                            </div>
                            <div class="grid__column-6">
                                <!-- list item option -->
                                <select class="search__moto-option js-search__moto-option"  id="search_date" name="search_date" runat="server">
                                    <option class="search__moto-item" value="1">Đời xe</option>
                                    <option class="search__moto-item" value="2000">2000</option>
                                    <option class="search__moto-item" value="2001">2001</option>
                                    <option class="search__moto-item" value="2002">2002</option>
                                    <option class="search__moto-item" value="2003">2003</option>
                                    <option class="search__moto-item" value="2004">2004</option>
                                    <option class="search__moto-item" value="2005">2005</option>
                                    <option class="search__moto-item" value="2006">2006</option>
                                    <option class="search__moto-item" value="2007">2007</option>
                                    <option class="search__moto-item" value="2008">2008</option>
                                    <option class="search__moto-item" value="2009">2009</option>
                                    <option class="search__moto-item" value="2010">2010</option>
                                    <option class="search__moto-item" value="2011">2011</option>
                                    <option class="search__moto-item" value="2012">2012</option>
                                    <option class="search__moto-item" value="2013">2013</option>
                                    <option class="search__moto-item" value="2014">2014</option>
                                    <option class="search__moto-item" value="2015">2015</option>
                                    <option class="search__moto-item" value="2016">2016</option>
                                    <option class="search__moto-item" value="2017">2017</option>
                                    <option class="search__moto-item" value="2018">2018</option>
                                    <option class="search__moto-item" value="2019">2019</option>
                                    <option class="search__moto-item" value="2020">2020</option>
                                    <option class="search__moto-item" value="2021">2021</option>
                                    <option class="search__moto-item" value="2022">2022</option>
                                </select>
                            </div>
                            <div class="grid__column-6"> 
                                <%--ghim--%>
                                <input type="submit" id="btn_search_moto" name="btn_search_moto" class="search__moto-btn" runat="server" value="Tìm kiếm"/> 
                            </div>
                        </div>
                    </div>
                    <!-- SEARCH BRAND TYPE -->
                    <div class="search__brand-type">
                        <div class="search__brand">
                            <h3 class="title">Hãng xe</h3>
                            <ul class="list__brand">
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">  
                                        <img src="assets/img/imgTrangChu/honda.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link"> 
                                        <img src="assets/img/imgTrangChu/yamaha.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/piaggio.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/suzuki.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/kawasaki.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/ducati.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/harley-davidson.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/benelli.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/mv-agusta.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                                <li class="item-brand">
                                    <a href="#" class="item-brand--link">
                                        <img src="assets/img/imgTrangChu/lambretta.jpg" alt="honda" class="item-brand--img">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="search__type">
                            <h3 class="type__title">Theo loại xe</h3>
                            <ul class="list__type">
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/SCOOTER.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Xe tay ga</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/Xe_con_tay.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Xe số</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/UNDERBONE.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Xe côn tay</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/NAKEDBIKE.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Naked bike</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/SPORTBIKE.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Sport bike</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/CLASSIC.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Classic</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/streetfighter.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Street fighter</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/CRUISER.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Cruiser</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/DRAG.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Drag</span>
                                    </a>
                                </li>
                                <li class="item__type">
                                    <a href="#" class="item__type--link">
                                        <div>
                                            <img src="assets/img/imgTrangChu/type_moto/BOBBER.jpg" alt="" class="item__type--img">
                                        </div>
                                        <span class="item__type--tittle">Bobber</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- HOME PRODUCT ITEM -->
                <div class="home-product">
                    <div class="grid__row" id="listproduct" runat="server">
                    </div>
                </div>
            </div>

            <div class="bg-white">
                <!-- SUGGEST BIKE -->
            <div class="home-suggest">
                <div class="grid">
                    <div class="home-title">
                        <h3 class="title">Gợi ý tìm xe</h3>
                        <a href="" class="see-all">Xem tất cả</a>
                    </div>

                    <div class="grid__row--m10">
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Xe phù hợp cho nam
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Xe phù hợp cho nữ
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Xe phù hợp cho học sinh trung học phổ thông
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Côn tay
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Tay ga
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Ít bảo trì
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Du lịch
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Đi đường dài
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="grid__column-4--m10">
                            <div class="home-suggest-item">
                                <a href="#" class="home-suggest-item--link">
                                    Phong cách
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>

        <!-- MODEL BIKE -->
        <!-- <div class="home-model">
                <div class="grid">
                    <div class="home-title">
                        <h3 class="title">
                            Dòng xe được xem nhiều nhất
                        </h3>
                        <a href="" class="see-all">Xem tất cả</a>
                    </div>
                    <div class="home-model-list">
                        <div class="btn-model-next-previous">
                            <img src="assets/img/imgTrangChu/btn-pre-slide.png" alt="" class="btn-model-next-previous--img">
                        </div>
                        
                        <div class="home-model-list-item">
                            <div class="home-model-item close-responsive-tablet">
                                <a href="" class="home-model-item--link">
                                    <div class="home-model-item--link">
                                    <img src="assets/img/imgTrangChu/top_moto/401_wave-100-rs.jpg" alt="" class="home-model-item--img">
                                </div>
                                    <span class="home-model-item--tittle">HONDA Wave 100 RS</span>
                                </a>
                            </div>
                            <div class="home-model-item close-responsive-max450">
                                <a href="" class="home-model-item--link">
                                    <div class="home-model-item--link">
                                        <img src="assets/img/imgTrangChu/top_moto/966_sirius.jpg" alt="" class="home-model-item--img">
                                    </div>
                                    <span class="home-model-item--tittle">HONDA Wave 100 RS</span>
                                </a>
                            </div>
                            <div class="home-model-item close-responsive-max767">
                                <a href="" class="home-model-item--link">
                                    <div class="home-model-item--link">
                                        <img src="assets/img/imgTrangChu/top_moto/395_wave-alpha.jpg" alt="" class="home-model-item--img"></div>
                                    <span class="home-model-item--tittle">HONDA Wave 100 RS</span>
                                </a>
                            </div>
                            <div class="home-model-item close-responsive-max767">
                                <a href="" class="home-model-item--link">
                                    <div class="home-model-item--link">
                                        <img src="assets/img/imgTrangChu/top_moto/375_sh-125.jpg" alt="" class="home-model-item--img"></div>
                                    <span class="home-model-item--tittle">HONDA Wave 100 RS</span>
                                </a>
                            </div>
                            <div class="home-model-item close-responsive-max767">
                                <a href="" class="home-model-item--link">
                                    <div class="home-model-item--link">
                                        <img src="assets/img/imgTrangChu/top_moto/999_winner-150.jpg" alt="" class="home-model-item--img"></div>
                                    <span class="home-model-item--tittle">HONDA Wave 100 RS</span>
                                </a>
                            </div>
                        </div>

                        <div class="btn-model-next-previous">
                            <img src="assets/img/imgTrangChu/btn-next-slide.png" alt="" class="btn-model-next-previous--img">
                        </div>
                    </div>
                </div>
        </div> -->

        <!-- KEYWORD BIKE -->
        <div class="home-keyword">
            <div class="grid">
                <div class="home-title">
                    <h3 class="title">
                        Các từ khóa phổ biến
                    </h3>
                </div>

                <div class="home-keyword-list">
                    <ul class="grid__row home-keyword-list-item">
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Honda Winner X</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Exciter 150</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Kawasaki Z1000</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Yamaha R6</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe HONDA</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe YAMAHA</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe PIAGGIO</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe SYM</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe SUZUKI</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Kawasaki</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe DUCATI</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe HARLEY-DAVIDSON</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Benelli</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe BMW</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe KTM</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe DAELIM</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe TRIUMPH</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe KYMCO</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Royal Enfield</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe SACHS</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Brixton</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe VISITOR</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe MV AGUSTA</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe GPX</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe REBEL USA</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Bajaj Pulsar</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe DAEHAN</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Moto Guzzi</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Kengo</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe CFMoto</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe aprilia</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Lifan</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Bosscity</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Lambretta</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe MOBYLETTE</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Hyosung</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Minsk</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe KEEWAY</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe Vento</a>
                        </li>
                        <li class="grid__column-3--m6 home-keyword-item">
                            <a href="#" class="home-keyword-item--link">Xe tay ga giá rẻ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div id="footer">
            <div class="grid">
                <div class="footer-container">
                    <div class="footer-in4">
                        <p class="footer-head">Thông tin liên hệ</p>
                        <div class="footer-in4__text" style="font-style: italic;">Số 96, Định Công, Hoàng Mai, Hà Nội</div>
                        <div class="footer-in4__text">Giờ làm việc: Thứ 2 - 6: 8h00 - 17h00</div>
                        <div class="footer-in4__text">Email: <span>support@hgtp.vn</span></div>
                        <div class="footer-in4__text">Số bàn: <span>028 3821 0587</span></div>
                        <div class="footer-in4__text">Đường dây nóng: <span>0932 979 060 - 0932 858 030</span></div>
                        <div class="footer-icon__first">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                        <div class="footer-certification">
                            <div class="footer-certification__global">
                                <i class="fa-solid fa-globe"></i>
                                <p class="footer-certification__text">HGTP Global</p>
                            </div>
                            <div class="footer-certification__img">
                                <img src="https:/webikevn-8743.kxcdn.com/frontend/img/bo_cong_thuong.svg" alt="">
                            </div>
                        </div>
                    </div>
                    
                    <div class="footer-content">
                        <p class="footer-head">siêu thị phụ tùng</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Dòng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hãng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Chính hãng    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phụ tùng    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Đồ bảo hộ    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Mũ bảo hiểm    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phụ kiện    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Thành viên    
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">chợ xe máy</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phân khối lớn
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hãng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phân khối 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Loại xe
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tỉnh thành 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Cửa hàng
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tiện ích 
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">thông tin khác</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Quy chế hoạt động  
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Chính sách bảo mật 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Bản quyền 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hỗ trợ khách hàng
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Sơ đồ trang 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Liên hệ
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">tin tức xe máy</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="">
                                    <i class="ti-angle-right"></i>
                                    Trang chủ
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tin tức - sự kiện   
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Thông tin xe máy  
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Kinh nghiệm
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Xe độ
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Video giải trí
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-payment">
                        <p class="footer-head">phương thức thanh toán</p>
                        <div class="footer-container__first">
                            <img src="assets/img/imgTrangChu/payment-01.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgTrangChu/payment-02.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgTrangChu/payment-03.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgTrangChu/payment-04.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__second">
                            <img src="assets/img/imgTrangChu/payment-05.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgTrangChu/payment-06.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__third">
                            <img src="assets/img/imgTrangChu/payment-07.png" alt="" class="footer-container__img">
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-copyright">
                <div class="grid">
                    <p class="footer-copyright__text">
                        © 2022 HGTP Vietnam. All rights reserved.
                    </p>
                </div>
            </div>

            <!-- Nút trở lên đầu -->
            <div class="scrollTop">
                <i class="fas fa-chevron-up"></i>
            </div>
        </div>
    </div>
    </form>

    <!-- Javascript -->
    <script src="https:/code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop()) {
                    $('.scrollTop').fadeIn();
                } else {
                    $('.scrollTop').fadeOut();
                }
            });
            $('.scrollTop').click(function () {
                $('html, body').animate({ scrollTop: 0 }, 500)
            });
        });
    </script>
</body>
</html>