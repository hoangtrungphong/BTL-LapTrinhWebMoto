<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhuTung.aspx.cs" Inherits="BTL_WebMotor.PhuTung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="Style/CssPhuTung/stylePhuTung.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/all.css" rel="stylesheet" />
    <link href="Style/CssPhuTung/responsivePhuTung.css" rel="stylesheet" />
    <title>Phụ tùng</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
        <!-- HEADER -->
        <div id="header">
                <div class="header-content">
                    <div class="logo">
                        <img src="assets/img/imgPhuTung/HGTP__2_-removebg-preview copy.png" alt="" class="logo-img">
                    </div>
                    <div class="header-item">
                        <div class="header-search">
                            <input type="text" class="input-search" placeholder="Nhập từ khóa tìm kiếm">
                            <div class="menu-search_icon">
                                <i class="fas fa-search"></i>
                            </div>
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
                                        <i class="fas fa-cart-plus"></i>
                                    </a>
                                    <div class="info__notify">
                                        <div class="info__notify-account">
                                            <a href="" class="info__notify-register-rpsMobile">Đăng ký</a> 
                                            <a href="" class="info__notify-login--rpsMobile">Đăng nhập</a>
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
                            <div class="info-contact">
                                <a href="#" class="info-contact_icon">
                                    <i class="fas fa-user"></i>
                                </a>
                                <span class="info-login">Đăng Nhập</span>
                                <span class="info-register">Đăng ký</span>   
                                <div class="info__notify">
                                    <div class="info__notify-account">
                                        <a href="./register.html" class="info__notify-register">Đăng ký</a> 
                                        <a href="./login.html" class="info__notify-login">Đăng nhập</a>
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
                        <div class="header-info_second">
                            <a href="" class="info-post_icon">
                           
                                <i class="fas fa-edit"></i>
                                <p>Đăng bán xe</p>
                            </a>
                            <a href="" class="info-open_icon">
                                <i class="fas fa-cart-plus"></i>
                                <p>Giỏ hàng</p>
                            </a>
                            <a href="" class="info-question_icon">
                                <i class="far fa-question-circle"></i>
                            </a>
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
                            <li class="nav-item"><a href="#">phụ tùng</a></li>
                            <li class="nav-item"><a href="TrangChu.aspx">chợ xe máy</a></li>
                            <li class="nav-item"><a href="">tin tức</a></li>
                        </ul>
                        <div class="nav-icon nav-icon__rpsMobile close">
                            <i class="fas fa-bars"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="Baner">
            <figure class="baner-load">
                <div class="body-content">
                
                </div>
            </figure> 
        </div>
        
        <div class="grid">
            <div class="table">
                <div class="table-body">
                    <b><i class="fas fa-cogs"></i>Hơn 2 triệu sản phẩm</b>
                </div>
                <div class="table-body">
                    <b><i class="fas fa-pager"></i>Thanh toán thuận lợi</b>
                </div>
                <div class="table-body">
                    <b><i class="fas fa-store-slash"></i>Nhiều lựa sự chọn</b>
                </div>
                <div class="table-body">
                    <b><i class="fas fa-box"></i>Bảo hiểm đổi trả</b>
                </div>
                <div class="table-body">
                    <b><i class="fas fa-user-tie"></i>Khách hàng đánh giá </b>
                </div>
                <div class="table-body">
                    <b><i class="fas fa-thumbs-up"></i>Lượt like đánh giá</b>
                </div>
            </div>
            <div class="block">
                    <div class="head-block">
                        <span>
                            <h2>PHỤ TÙNG / PHỤ KIỆN MỚI NHẤT</h2>
                        </span>
                    </div>
                    <hr class="line">
                    <div class="example-container__second">
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung7.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">Titanium Tumbler</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung8.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">Brake Wire</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung9.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">Caliper Support TYPE-R 320</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung10.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">Lowering Kit</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung11.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">530 Drive Kit Stock Sprocket and 120 Link Chain Set</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung12.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">V-SHAPE License Plate Holder</p>
                            </div>
                        </div>
                    </div>
                    <div class="example-container__second">
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung1.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">KN Planning Silentstreet Muffler</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung2.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">DAYTONA Rào cản (R) Bộ theo mô hình ô tô</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung3.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">YOSHIMURA Chế hòa khí YOSHIMURA dòng Mikuni</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung4.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">DAYTONA Ống bảo vệ động cơ</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung5.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">OVER RACING Swing Arm Loại OV</p>
                            </div>
                        </div>
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/phutung6.png" alt="" class="example-img">
                            <div class="example-discription">
                                <p class="example-discription__text">KIJIMA Nhà cung cấp phía sau</p>
                            </div>
                        </div>
                    </div> 
            </div>
            <div class="poster">
                
                    <div class="poster-first">
                        <img src="assets/img/imgPhuTung/poster1.png" alt="">
                    </div>
                    <div class="dou-poster">
                        <div class="poster-sec">
                            <img src="assets/img/imgPhuTung/poster2.png" alt="">
                        </div>
                        <div class="poster-sec">
                            <img src="assets/img/imgPhuTung/poster3.png" alt="">
                        </div>
                    </div>
            </div>
            <div class="block">
                    <div class="head-block">
                        <span>
                            <h2>DANH MỤC SẢN PHẨM</h2>
                        </span>
                    </div>
                    <hr class="line">
                    <div class="example-container__second">
                        <div class="example-items__second">
                            <img src="assets/img/imgPhuTung/sanpham1.png" alt="" class="example-img">
                            <div class="example-discription">
                            <p class="example-discription__text">Titanium Tumbler</p>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <img src="assets/img/imgPhuTung/sanpham2.png" alt="" class="example-img">
                        <div class="example-discription">
                            <p class="example-discription__text">Brake Wire</p>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <img src="assets/img/imgPhuTung/sanpham3.png" alt="" class="example-img">
                        <div class="example-discription">
                            <p class="example-discription__text">Caliper Support TYPE-R 320</p>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <img src="assets/img/imgPhuTung/sanpham4.png" alt="" class="example-img">
                        <div class="example-discription">
                            <p class="example-discription__text">Lowering Kit</p>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <img src="assets/img/imgPhuTung/sanpham5.png" alt="" class="example-img">
                        <div class="example-discription">
                            <p class="example-discription__text">530 Drive Kit Stock Sprocket and 120 Link Chain Set</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block"> 
               
                    <div class="head-block">
                        <span>
                            <h2>THƯƠNG HIỆU</h2>
                        </span>
                    </div>
                    <hr class="line">
                    <div class="intro-container__second">
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang7.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang8.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang9.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang10.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang11.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang12.png" alt="" class="intro-img">
                        </div>
                    </div>
                    <div class="intro-container__second">
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang1.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang2.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang3.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang4.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang5.png" alt="" class="intro-img">
                        </div>
                        <div class="intro-items__second">
                            <img src="assets/img/imgPhuTung/hang6.png" alt="" class="intro-img">
                        </div>
                    </div> 
            </div>
            <div class="intro">
                <div class="block">
                    <div class="head-block">
                        <span>
                                <h2>CỬA HÀNG PHỤ TÙNG XE MÁY TRỰC TUYẾN HGTP</h2>
                        </span>
                    </div>
                </div>
                    <div class="intro-detail">
                        <span>
                            SHOP.WEBIKE.VN là phiên bản tiếng Việt của Cửa hàng phụ tùng xe máy Trực tuyến Webike - nhà cung cấp phụ tùng, phụ kiện và thiết bị bảo hộ môtô xe máy từ Nhật Bản đến khách hàng trên toàn thế giới. Hàng hóa được đóng gói và chuyển trực tiếp từ kho tại Nhật Bản đến tận tay khách hàng với nhiều hình thức vận chuyển: từ Tiết kiệm (10-21 ngày) đến Chuyển phát hỏa tốc (1-3 ngày).
                            Hơn 200,000 SKUs ~ 5 triệu USD hàng hóa sẵn kho mọi lúc.
                            Dễ dàng tìm kiếm phụ tùng xe máy zin (OEM) với chức năng đặt hàng OEM cực kỳ tiện dụng.
                            Văn phòng đại diện tại Việt Nam với đội ngũ CS hỗ trợ khách hàng Việt, không lo lắng vì sai lệch thông tin.
                    </span>
                    </div>
                    <div class="dou-poster">
                    <div class="poster-sec">
                        <img src="assets/img/imgPhuTung/intro1.png" alt="">
                    </div>
                    <div class="poster-sec">
                        <img src="assets/img/imgPhuTung/intro2.png" alt="">
                    </div>
                    <div class="poster-sec">
                        <img src="assets/img/imgPhuTung/intro3.png" alt="">
                    </div>
                </div>
            </div> 
            <div class="block">
                <div class="head-block">
                    <span>
                        <h2>PHỤ TÙNG XE MÁY XEM NHIỀU</h2>
                    </span>
                </div>
                <hr class="line">
                <div class="product">
                    <div class="search__moto">
                        <div class="search__moto-header">
                            <h4 class="title">Tìm kiếm Loại Phụ Tùng</h4>
                            <div class="search__moto-checkbox">
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Xe Honda</label>
                                </div>
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Xe Kawasaki</label>
                                </div>
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Xe Suzuki</label>
                                </div>
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Xe Kabuto</label>
                                </div>
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Phụ Tùng Mới</label>
                                </div>
                                <div class="checked">
                                    <input type="checkbox"> <label for="" class="checked__title">Phụ Tùng Cũ</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro-sec">
                        <div class="example-container__second">
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more1.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">HONDA CBR1000RR</p>
                                    <p class="example-discription__price">416.500.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more2.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">SUZUKI GSX R1000R</p>
                                    <p class="example-discription__price">56.300.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more3.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">Kawasaki Ninja 1000</p>
                                    <p class="example-discription__price">155.000.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more4.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">HONDA Winner 150</p>
                                    <p class="example-discription__price">71.500.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more5.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">Kawasaki Versys 1000</p>
                                    <p class="example-discription__price">318.000.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more6.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">HONDA XR 150</p>
                                    <p class="example-discription__price">62.000.000 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="example-container__second">
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more7.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">KN Planning Silentstreet Muffler</p>
                                    <p class="example-discription__price">3.270.016 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more8.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">DAYTONA Rào cản (R) Bộ theo mô hình ô tô</p>
                                    <p class="example-discription__price">3.834.311 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more9.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">YOSHIMURA Chế hòa khí YOSHIMURA dòng Mikuni</p>
                                    <p class="example-discription__price">4.955.460 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more10.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">DAYTONA Ống bảo vệ động cơ</p>
                                    <p class="example-discription__price">4.975.438 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more11.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">OVER RACING Swing Arm Loại OV</p>
                                    <p class="example-discription__price">13.358.197 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="example-items__second">
                                <img src="assets/img/imgPhuTung/more12.png" alt="" class="example-img">
                                <div class="example-discription-more">
                                    <p class="example-discription__text">KIJIMA Nhà cung cấp phía sau</p>
                                    <p class="example-discription__price">3.327.013 VND</p>
                                    <div class="example-discription__btn">
                                        <button class="example-discription__details">Chi tiết</button>
                                        <i class="fas fa-cart-plus"></i>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div> 
                
        </div>
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
                                    <i class="fas fa-globe"></i>
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
                                        <i class="fas fa-chevron-right"></i>
                                        Dòng xe    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Hãng xe    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Chính hãng    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Phụ tùng    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Đồ bảo hộ    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Mũ bảo hiểm    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Phụ kiện    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
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
                                        <i class="fas fa-chevron-right"></i>
                                        Phân khối lớn
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Hãng xe    
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Phân khối 
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Loại xe
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Tỉnh thành 
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Cửa hàng
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
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
                                        <i class="fas fa-chevron-right"></i>
                                        Quy chế hoạt động  
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Chính sách bảo mật 
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Bản quyền 
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Hỗ trợ khách hàng
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
                                        Sơ đồ trang 
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                        <i class="fas fa-chevron-right"></i>
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
                                        <i class="fas fa-chevron-right"></i>
                                        Trang chủ
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                       <i class="fas fa-chevron-right"></i>
                                        Tin tức - sự kiện   
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                       <i class="fas fa-chevron-right"></i>
                                        Thông tin xe máy  
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                       <i class="fas fa-chevron-right"></i>
                                        Kinh nghiệm
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                       <i class="fas fa-chevron-right"></i>
                                        Xe độ
                                    </a>
                                </li>
                                <li class="footer-content__text">
                                    <a href="#">
                                       <i class="fas fa-chevron-right"></i>
                                        Video giải trí
                                    </a>
                                </li>
                            </ul>
                        </div>
    
                        <div class="footer-payment">
                            <p class="footer-head">phương thức thanh toán</p>
                            <div class="footer-container__first">
                                <img src="assets/img/imgPhuTung/payment-01.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgPhuTung/payment-02.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgPhuTung/payment-03.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgPhuTung/payment-04.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__second">
                                <img src="assets/img/imgPhuTung/payment-05.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgPhuTung/payment-06.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__third">
                                <img src="assets/img/imgPhuTung/payment-07.png" alt="" class="footer-container__img">
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
    </div> 
    </div>
    <!-- Nút trở lên đầu -->
<div class="scrollTop">
    <i class="fas fa-chevron-up"></i>
</div>
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
$(window).scroll(function() {
if($(this).scrollTop()) {
    $('.scrollTop').fadeIn();
} else {
    $('.scrollTop').fadeOut();
}
});
$('.scrollTop').click(function() {
$('html, body').animate({scrollTop: 0}, 500)
});
}); 
</script>
    </form>
</body>
</html>
