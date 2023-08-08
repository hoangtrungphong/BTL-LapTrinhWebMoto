<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BTL_WebMotor.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Giỏ Hàng</title>
    <link href="Style/CssGioHang/styleGioHang.css" rel="stylesheet" />
    <link href="Style/CssGioHang/reponsiveGioHang.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/all.css" rel="stylesheet" />
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <link href="assets/icon/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <script src="Js/GioHang.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
    <form action="GioHang.aspx" runat="server" method="post">
        <div id="main">

            <!-- HEADER -->
            <div id="header">
                <div class="grid">
                    <div class="header-content">
                        <div class="logo">
                            <a href="TrangChu.aspx">
                                <img src="assets/img/imgGioHang/HGTP__2_-removebg-preview copy.png" alt="" class="logo-img">
                            </a>
                        </div>
                        <div class="header-item">
                            <div class="header-search">
                                 <input type="text" name="input_name" id="input_name" class="input-search" placeholder="Nhập từ khóa tìm kiếm"/>
                            <input type="submit" id="search_name" name="search_name" class="menu-search_icon" style="color:white;font-size:1.4rem;" value="Tìm kiếm"/>
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
                                        <div class="info__notify">
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
                                <div class="info-contact"  id="info" runat="server">
                            </div>
                            </div>
                            <div class="header-info_second">
                                <a href="" class="info-post_icon">
                                    <i class="fas fa-edit"></i>
                                    <p>Đăng bán xe</p>
                                </a>
                                <a href="" class="info-open_icon">
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
                <div class="container">
                    <div class="nav ">
                        <div class="grid">
                            <p class="nav-text nav-text__rpsMobile close">TÙY CHỌN</p>
                            <ul class="nav-first">
                                <li class="nav-item"><a href="TrangChu.aspx">Trang chủ</a></li>
                                <li class="nav-item"><a href="TrangChu.aspx">chợ xe máy</a></li>
                                <li class="nav-item"><a href="">tin tức</a></li>
                                <li class="nav-item"><a href="">đại lý</a></li>
                            </ul>
                            <div class="nav-icon nav-icon__rpsMobile close">
                                <i class="fas fa-bars"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BODY -->
            <div id="body">
                <div class="grid">
                    <div class="shopping__cast">
                        <div class="shopping__cast-header">
                            <p class="header-text">thông tin giỏ hàng của bạn</p>
                            <hr class="line line-1">
                        </div>
                        <div class="shopping__cast-body">
                            <div class="shopping__cast-first" id="list_item_product" runat="server">
                                    <style>
                                        table {
                                            width: 100%;
                                            text-align: center;
                                        }
 
                                        table tr td {
                                            padding: 12px 0;
                                            border-bottom: 1px solid #bbb;
                                        }

                                        thead tr th {
                                            font-size: 16px;
                                            padding-bottom: 20px;
                                        }
                                        thead tr th:first-child {
                                           text-align: left;
                                        }

                                        tbody tr td {
                                            font-size: 14px;
                                        }

                                        tbody tr td input {
                                            width: 15%;
                                        }
                                        tbody tr td:first-child {
                                            display: flex;
                                            align-items: center;
                                        }
                                        .form-first tbody tr td img {
                                            width: 150px;
                                        }
                                    </style>
                            </div>

                            <div class="shopping__cast-second">
                                <%--<div class="shopping__cast-customer">
                                    <p class="customer-title">Thông tin khách hàng</p>
                                    <div class="customer-in4">
                                        <input type="text" placeholder="Họ và tên" class="input-customer input-name"> 
                                        <div class="input-container">
                                            <input type="email" placeholder="Email" class="input-customer input-email"> 
                                            <input type="text" placeholder="Số điện thoại" class="input-customer input-phone">
                                        </div> 
                                        <input type="text" placeholder="Địa chỉ" class="input-customer input-address"> 
                                        <div class="input-container">
                                            <select type="text" name="distric" class="input-customer input-district">
                                                <option value="distric">Quận</option>
                                                <option value="distric">Thanh Xuân</option>
                                                <option value="distric">Đống Đa</option>
                                                <option value="distric">Hà Đông</option>
                                                <option value="distric">Yên Hòa</option>
                                                <option value="distric">Ba Đình</option>
                                            </select>
                                            <select type="text" name="city" class="input-customer input-city">
                                                <option value="city">Thành phố</option>
                                                <option value="city">Hà nội</option>
                                                <option value="city">Hồ Chí Minh</option>
                                            </select>
                                        </div>
                                    </div>
                                    <p id="test123" runat="server">\</p>
                                    <p class="payment-title">Thanh toán</p>
                                    
                                    <style>
                                        .form-second {
                                            margin: 0 12px;
                                        }
                                        .form-second thead tr th {
                                            padding-bottom: 0px;
                                        }                             
                                        .form-second tbody tr td:last-child, 
                                        .form-second thead tr th:last-child {
                                            text-align: end;
                                        }
                                        .form-second tbody tr td {
                                            font-size: 12px;
                                        }
                                    </style>
                                    <!-- Thông tin hóa đơn -->
                                    <form action="" class="form-third">
                                        <table>
                                            <thead>
                                                <th style="font-size:1.4rem;">Thành tiền</th>
                                            </thead>
                                        </table>
                                    </form>
                                    <style>
                                        .form-third {
                                            margin: 0 12px;
                                        }
                                        .form-third thead tr th:last-child {
                                            text-align: end;
                                        }
                                    </style>
                                    <!-- <div class="payment-sum">
                                        <p class="payment-sum__text">Thành tiền</p>
                                        <p class="payment-sum__price">313.903.080 VND</p>
                                    </div> -->
                                    <div class="payment-confirm">
                                        <button class="payment-delete__btn">Xóa thông tin</button>
                                        <button class="payment-confirm__btn">Hoàn tất đơn hàng</button>
                                    </div>
                                </div>--%>
                            </div>
                        
                        </div>

                        <!-- PHẦN XE MÁY / PHỤ TÙNG / HÃNG XE GỢI Ý -->
                       <%-- <div class="example-recomend">
                            <div class="example-title example-title__first">
                                <p class="example-text">Một số hãng xe nổi bật</p>
                                <a href="#" class="example-text__extend">
                                    Xem thêm
                                    <i class="ti-angle-double-right"></i>
                                </a>
                            </div>
                            <hr class="line line-2">
                            <div class="example-container__first">
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/honda.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">Honda</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/yamaha.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">yamaha</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/kawasaki.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">kawasaki</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/suzuki.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">suzuki</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/ducati.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">ducati</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/benelli.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">benelli</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/lambretta.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">lambretta</a>
                                </div>
                                <div class="example-items">
                                    <img src="assets/img/imgGioHang/bmw.jpg" alt="" class="example-items__img">
                                    <a href="" class="example-items__link">bmw</a>
                                </div>
                            </div>
                            <div class="example-title example-title__second">
                                <p class="example-text">có thể bạn sẽ thích</p>
                                <a href="#" class="example-text__extend">
                                    Xem thêm
                                    <i class="ti-angle-double-right"></i>
                                </a>
                            </div>
                            <hr class="line line-3">
                            <div class="example-container__second">
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/xe1.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">HONDA CBR1000RR</p>
                                        <p class="example-discription__price">416.500.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/xe2.jpg" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">SUZUKI GSX R1000R</p>
                                        <p class="example-discription__price">56.300.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/xe3.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">Kawasaki Ninja 1000</p>
                                        <p class="example-discription__price">155.000.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/999_winner-150.jpg" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">HONDA Winner 150</p>
                                        <p class="example-discription__price">71.500.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/991_versys-1000.jpg" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">Kawasaki Versys 1000</p>
                                        <p class="example-discription__price">318.000.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/1016_xr-150.jpg" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">HONDA XR 150</p>
                                        <p class="example-discription__price">62.000.000 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                            <div class="example-container__second">
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung1.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">KN Planning Silentstreet Muffler</p>
                                        <p class="example-discription__price">3.270.016 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung2.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">DAYTONA Rào cản (R) Bộ theo mô hình ô tô</p>
                                        <p class="example-discription__price">3.834.311 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung3.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">YOSHIMURA Chế hòa khí dòng Mikuni</p>
                                        <p class="example-discription__price">4.955.460 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung4.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">DAYTONA Ống bảo vệ động cơ</p>
                                        <p class="example-discription__price">4.975.438 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung5.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">OVER RACING Swing Arm Loại OV</p>
                                        <p class="example-discription__price">13.358.197 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                                <div class="example-items__second">
                                    <img src="assets/img/imgGioHang/phutung6.png" alt="" class="example-img">
                                    <div class="example-discription">
                                        <p class="example-discription__text">KIJIMA Nhà cung cấp phía sau</p>
                                        <p class="example-discription__price">3.327.013 VND</p>
                                        <div class="example-discription__btn">
                                            <button class="example-discription__details">Chi tiết</button>
                                            <button class="example-discription__add">
                                                <i class="fa-solid fa-cart-plus"></i>
                                            </button> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        
            <!-- FOOTER -->
            <div id="footer">
                <div class="grid">
                    <div class="footer-container">
                        <div class="footer-in4">
                            <p class="footer-head">Thông tin liên hệ</p>
                            <div class="footer-in4__text" style="font-style: italic;">Số 96, Định Công, Thanh Xuân, Hà Nội</div>
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
                                    <img src="https://webikevn-8743.kxcdn.com/frontend/img/bo_cong_thuong.svg" alt="">
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
                                <img src="assets/img/imgGioHang/payment-01.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-02.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-03.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-04.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__second">
                                <img src="assets/img/imgGioHang/payment-05.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-06.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__third">
                                <img src="assets/img/imgGioHang/payment-07.png" alt="" class="footer-container__img">
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

    <!-- Jquery -->
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

    </form>
</body>
</html>
