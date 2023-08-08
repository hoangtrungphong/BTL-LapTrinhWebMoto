using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaiKhoan"].ToString() != "")
            {
                string ma = Request.QueryString.Get("masp");

                RenderInfoProduct(ma);

                if (IsPostBack)
                {
                    if (Request.Form["logout"] == "Đăng xuất")
                    {
                        Session["TaiKhoan"] = "";
                        Response.Redirect("DangNhap.aspx");
                    }

                    if (Request.Form["addcart"] == "Thêm hàng")
                    {
                        List<Cart> listCart = (List<Cart>)Application["listCart"];
                        bool i = true;
                        foreach (Cart n in listCart)
                        {
                            if (n.IdProduct == Convert.ToInt32(ma))
                            {
                                i = false;
                                Response.Redirect("GioHang.aspx");
                            }
                        }

                        if (i)
                        {
                            AddCart(ma);
                            Response.Redirect("GioHang.aspx");
                        }
                    }
                }
            }else
            {
                Response.Redirect("DangNhap.aspx");
            }

            if (Session["TaiKhoan"].ToString() == "")
            {
                string chuoi = "";
                chuoi += "<a href = '#' class='info-contact_icon'>";
                chuoi += "<i class='fas fa-user'>";
                chuoi += "</i>";
                chuoi += "</a>";
                chuoi += "<span class='info-login'>Đăng Nhập";
                chuoi += "</span>";
                chuoi += "<span class='info-register'>Đăng ký</span>";
                chuoi += "<div class='info__notify'>";
                chuoi += "<div class='info__notify-account'>";
                chuoi += "<a href = 'DangKy.aspx' class='info__notify-register'>Đăng ký</a> ";
                chuoi += "<a href = 'DangNhap.aspx' class='info__notify-login'>Đăng nhập</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Dịch vụ khách hàng</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Hỗ trợ khách hàng </a></div></div>";
                info.InnerHtml = chuoi;
            }
            else
            {
                //string chuoi = "";
                //chuoi += "<a href = \"#\" class=\"info-contact_icon\">";
                //chuoi += "<i class=\"fas fa-user\"></i>";
                //chuoi += "</a>";
                //chuoi += $"<span class=\"\">{Session["TaiKhoan"].ToString()}</span> ";
                //chuoi += "<div class=\"info__notify\" style='width:100px;'>";
                //chuoi += "<div class=\"info__notify-account\">";
                //chuoi += "<input type = \"submit\"  class=\"info__notify-register\" id=\"logout\" name=\"logout\" value=\"Đăng xuất\">";
                //chuoi += "</div>";
                //chuoi += "</div>";

                //info.InnerHtml = chuoi;
                string chuoi = "";
                chuoi += "<a href = '#' class='info-contact_icon'>";
                chuoi += "<i class='fas fa-user'>";
                chuoi += "</i>";
                chuoi += "</a>";
                chuoi += "<span class='info-login'>Đăng Nhập";
                chuoi += "</span>";
                chuoi += "<span class='info-register'>Đăng ký</span>";
                chuoi += "<div class='info__notify'>";
                chuoi += "<div class='info__notify-account'>";
                chuoi += "<a href = 'DangKy.aspx' class='info__notify-register'>Đăng ký</a>";
                chuoi += "<a href = 'DangNhap.aspx' class='info__notify-login'>Đăng nhập</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Dịch vụ khách hàng</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Hỗ trợ khách hàng </a></div></div>";
                info.InnerHtml = chuoi;
            }

            if (Request.Form["search_name"] == "Tìm kiếm")
            {
                string name = Request.Form["input_name"].ToString();
                List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];
                List<SanPham> listTimKiem = (List<SanPham>)Session["TimKiem"];
                bool check;
                foreach (SanPham n in listSanPham)
                {
                    check = n.Name.ToLower().Trim().Contains(name.ToLower().Trim());
                    if (check)
                    {
                        listTimKiem.Add(n);
                        Session["TimKiem"] = listTimKiem;
                    }
                }
                Response.Redirect("TrangChu.aspx");
            }
        }

        public void RenderInfoProduct(string ma)
        {
            string chuoi = "";

            List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];

            foreach (SanPham n in listSanPham)
            {
                if (n.Id == Convert.ToInt32(ma))
                {
                    chuoi += $"<div class=\"module_title\">";
                    chuoi += $"<div class=\"letter\">";
                    chuoi += $"<div class=\"letter_title\">";
                    chuoi += $"<span>{n.Name}</span>";
                    chuoi += $"<label class=\"p-old\">{n.LoaiXe}</label></div>";
                    chuoi += $"<div class=\"social\">";
                    chuoi += $"<div class=\"share-1\">";
                    chuoi += $"<a href = \"\" ><button type=\"submit\" class=\"btn-share\"><i class=\"fab fa-facebook\"></i>Chia sẻ 0</button></a></div>";
                    chuoi += $"<div class=\"share-2\">";
                    chuoi += $"<a href = \"\" ><button type=\"submit\" class=\"btn-share\"><i class=\"ti-thumb-up\"></i>Thích 0</button></a>";
                    chuoi += $"</div></div></div></div>";
                    chuoi += $"<div class=\"grid_header\">";
                    chuoi += $"<div class=\"grid__row\">";
                    chuoi += $"<div class=\"grid_column-4\">";
                    chuoi += $"<div class=\"view_img\">";
                    chuoi += $"<div class=\"detail\">";
                    chuoi += $"<a href = \"\" target=\"_blank\" ><div class=\"img_moto\" style=\"background-image: url(assets/img/imgTrangChu/item_product/{n.Image});\">";
                    chuoi += $"</div></a></div></div></div>";
                    chuoi += $"<div class=\"grid_column-8\">";
                    chuoi += $"<div class=\"parameter\"><strong>";
                    chuoi += $"<span class=\"price\">{n.Price} đ</span>";
                    chuoi += $"<a href = \"\" class=\"report\"><i class=\"ti-announcement\"></i>Báo cáo</a>";
                    chuoi += $"<a href = \"\" class=\"follow heart\"><i class=\"follow-icon ti-heart\"></i>Theo dõi</a></strong> ";
                    chuoi += $"<table class=\"share\">";
                    chuoi += $"<body><tr>";
                    chuoi += $"<td width = \"19 %\" ><label  title=\"Dòng xe\">Dòng xe</label></td><td width = \"33%\" >{n.Name}</td>";
                    chuoi += $"<td width = \"18 %\" ><label title= \"Đã đi\" > Đã đi</label></td><td width = \"40%\" >{n.Odo} km</td>";
                    chuoi += $"</tr><tr>";
                    chuoi += $"<td><label title = \"Xuất xứ\" > Xuất xứ</label></td><td>{n.XuatXu}</td>";
                    chuoi += $"<td><label title = \"Đời xe\" > Đời xe</label></td><td>{n.DoiXe}</td></tr><tr>";
                    chuoi += $"<td><label title = \"Phân khối\" > Phân khối</label></td><td>{n.PhanKhoi} cc </td>";
                    chuoi += $"<td><label title = \"Loại xe\" > Loại xe</label></td><td>{n.LoaiXe}</td></tr><tr>";
                    chuoi += $"<td><label title = \"Màu\" aria-placeholder= \"\" > Màu </ label ></ td ><td >{n.Color}</td>";
                    chuoi += $"<td><label title = \"Địa chỉ\" > Địa điểm</label></td><td>{n.DiaChi}</td>";
                    chuoi += $"</tr><tr>";
                    chuoi += $"<td><label title = \"Ngày đăng\" > Ngày đăng</label></td><td>12 giờ trước </td>";
                    chuoi += $"<td colspan = \"2\" class=\"statistical\"></td></tr>";
                    chuoi += $"</body></table> <div class=\"Contact_Details\">";
                    chuoi += $"<p class=\"name\">Liên hệ mua xe<a target= \"_blank\" href= \"\" class=\"name-link\"><b> 0886103494</b></a></p>";
                    chuoi += $"<div class=\"action\">";
                    chuoi += $"<table><tbody><tr>";
                    chuoi += $"<td><input type = \"submit\" id=\"addcart\" runat=\"server\" name=\"addcart\"  class=\"btn-show\" value=\"Thêm hàng\"/></td>";
                    chuoi += $"<td><p class=\"note_title\">* Vui lòng cho người bán biết bạn đã tìm thấy xe của họ tại HGTP</p></td>";
                    chuoi += $"</tr></tbody></table></div></div>";
                    chuoi += $"<div class=\"buy_safe\">";
                    chuoi += $"<h3 class=\"buy_safe-item\">";
                    chuoi += $"<span class=\" buy_safe title\">Mua xe an toàn</span></h3>";
                    chuoi += $"<ul class=\"buy_safe-list\">";
                    chuoi += $"<li><span style = \"color: var(--primary-color);\" > KHÔNG ĐẶT CỌC, CHUYỂN KHOẢN trước khi nhận xe.</span></li>";
                    chuoi += $"<li>Nhờ người có chuyên môn kiểm tra xe, tránh mua xe bị thay thế phụ tùng kém chất lượng, không rõ nguồn gốc, xe gian...</li>";
                    chuoi += $"<li>Kiểm tra kỹ giấy tờ xe và các giấy tờ mua bán liên quan.</li>";
                    chuoi += $"<li>Hẹn gặp, giao dịch ở nơi an toàn.</li></ul>";
                    chuoi += $"</div></div></div></div></div>";
                }
            }
            infoSanpham.InnerHtml = chuoi;
        }

        public void AddCart(string ma)
        {
            Cart a = new Cart();
            a.Username = Session["TaiKhoan"].ToString();
            a.IdProduct = Convert.ToInt32(ma);
            List<Cart> ds;
            ds = (List<Cart>)Application["listCart"];
            ds.Add(a);
            Application["listCart"] = ds;
        }
    }
}