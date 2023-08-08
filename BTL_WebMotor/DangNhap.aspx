<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTL_WebMotor.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link href="Style/CssLogin/styleLogin.css" rel="stylesheet" />
    <link href="Style/CssLogin/responsiveLogin.css" rel="stylesheet" />
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/all.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" method="post" runat="server">
        <div id="main">
        <!-- HEADER -->
        <div id="header__user">
            <div class="grid">
                <div class="header__user-container">
                    <div class="header__user-content">
                        <img src="assets/img/imgLogin/HGTP__2_-removebg-preview copy.png" alt="logo" class="header__user-logo">
                        <a href="TrangChu.aspx" class="header__user-text">Trang chủ</a>
                    </div>
                    <a href="" class="header__user-help">Bạn cần giúp đỡ?</a>
                </div>
            </div>
        </div>

        <!-- BODY -->
        <div id="body__user">
            <div class="grid">
                <div class="body__user-container">
                    <div class="body__user-content">
                        <img src="assets/img/imgLogin/HGTP__2_-removebg-preview.png" alt="logo" class="body__user-logo">
                        <span class="body__user-text">"HGTP - Simply Beautiful"</span>
                    </div>
                    <!-- FORM ĐĂNG NHẬP -->
                        <div class="modal modal-login">
                        <div class="modal__body modal_body-login">
                            <div class="auth__form auth__form-login">
                                <div class="auth__form-header"> 
                                    Đăng Nhập
                                    <span class="modal-close modal__close-login">
                                        <i class="ti-close"></i>
                                    </span>
                                </div>
                                <div class="auth__form-body">
                                    <div class="auth__form-groups">
                                        <input type="text" id="usernameL" name="usernameL" class="auth__form-input" placeholder="Nhập tên đăng nhập"/>
                                    </div>
                                    <div class="auth__form-groups">
                                        <input type="password" id="passwordL" name="passwordL" class="auth__form-input" placeholder="Nhập mật khẩu"/>
                                    </div>
                                     <p runat="server" id="errorL" style="font-size:1.4rem; margin:0 0 8px 0; color:red;"></p>
                                    <input type="submit" id="btnLogin" runat="server" class="btn primary-btn pointer" value="ĐĂNG NHẬP" />
                                    <div class="auth__form-support">
                                        <a href="" class="auth__form-support-forgot">Quên mật khẩu</a>
                                        <a href="" class="auth__form-support-help">Cần trợ giúp?</a>
                                    </div>
                                    <div class="auth__form-options">
                                        <span class="auth__form-options-text">HOẶC</span>
                                        <div class="auth__form-container">
                                            <div class="auth__form-app">
                                                <a href="" class="auth__form-app-link pointer">
                                                    <i class="fab fa-facebook"></i>
                                                    <span class="auth__form-app-name">Facebook</span>
                                                </a>
                                            </div>
                                            <div class="auth__form-app">
                                                <a href="" class="auth__form-app-link pointer">
                                                    <i class="fab fa-google"></i>
                                                    <span class="auth__form-app-name">Google</span>
                                                </a>
                                            </div>
                                            <div class="auth__form-app">
                                                <a href="" class="auth__form-app-link pointer">
                                                    <i class="fab fa-apple"></i>
                                                    <span class="auth__form-app-name">Apple</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <footer class="auth__form-footer">
                                    <span class="auth__form-footer-text">Bạn mới biết đến HGTP?</span>
                                    <a href="DangKy.aspx" class="auth__form-footer-log-in js-auth__form-footer-login">Đăng ký</a>
                                </footer>
                            </div>
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
                                <img src="https://webikevn-8743.kxcdn.com/frontend/img/bo_cong_thuong.svg" alt=""/>
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
                            <img src="assets/img/imgLogin/payment-01.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgLogin/payment-02.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgLogin/payment-03.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgLogin/payment-04.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__second">
                            <img src="assets/img/imgLogin/payment-05.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgLogin/payment-06.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__third">
                            <img src="assets/img/imgLogin/payment-07.png" alt="" class="footer-container__img">
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
            <!-- <div class="scrollTop">
                <i class="fas fa-chevron-up"></i>
            </div> -->
        </div>

    </div>
    </form>
    <script>

        btnLogin.onclick = function (e) {
            var valid = true;
            if (!(usernameL.value.trim() && passwordL.value.trim())) {
                valid = false;
            }
            if (!valid) {
                e.preventDefault();
                btn_error = document.getElementById("errorL");
                btn_error.innerHTML = "Vui lòng điền đầy đủ tài khoản và mật khẩu";
            }
        }
    </script>
</body>
</html>
