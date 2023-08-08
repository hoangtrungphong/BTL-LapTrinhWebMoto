using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace BTL_WebMotor
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Xử lí nút đăng xuất
                if (Request.Form["logout"] == "Đăng xuất")
                {
                    Session["TaiKhoan"] = "";
                    Response.Redirect("DangNhap.aspx");
                }
            }

            //Kiểm tra xem Session có rỗng hay k
            //Nếu rỗng thì chưa có tài khoản nào được đăng nhập
            if (Session["TaiKhoan"] == "")
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
                chuoi += "<div class='info__notify -account'>";
                chuoi += "<a href = 'DangKy.aspx' class='info__notify-register'>Đăng ký</a> ";
                chuoi += "<a href = 'DangNhap.aspx' class='info__notify-login'>Đăng nhập</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Dịch vụ khách hàng</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Hỗ trợ khách hàng </a></div></div>";
                info.InnerHtml = chuoi;
            }
            //Nếu khác rỗng thì đã có tài khoản đăng nhập vào, chạy code phía dưới
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
                chuoi += "<div class='info__notify -account'>";
                chuoi += "<a href = 'DangKy.aspx' class='info__notify-register'>Đăng ký</a> ";
                chuoi += "<a href = 'DangNhap.aspx' class='info__notify-login'>Đăng nhập</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Dịch vụ khách hàng</a>";
                chuoi += "<a href = '' class='info__notify-text'>";
                chuoi += "<i class='fas fa-chevron-right'></i>Hỗ trợ khách hàng </a></div></div>";
                info.InnerHtml = chuoi;
            }

            //Đổ danh sách sản phẩm trong application ra TrangChu
            if (Request.Form["btn_search_moto"] == "Tìm kiếm") RenderProductByFilter();
            else RenderProduct();

                if (Request.Form["search_name"] == "Tìm kiếm")
                {
                    string name = Request.Form["input_name"].ToString();
                    List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];
                    bool check;
                    string chuoi = "";
                    foreach (SanPham n in listSanPham)
                    {
                        check = n.Name.ToLower().Trim().Contains(name.ToLower().Trim());
                        if (check)
                        {
                            chuoi += "<div class=\"grid__column-2\">";
                            chuoi += "<div class=\"home-product-item\">";
                            chuoi += $"<a href = \"ChiTietSanPham.aspx?masp={n.Id}\" class=\"home-product-item--link\">";
                            chuoi += "<div class=\"home-product-item__img\">";
                            chuoi += $"<img src = \"assets/img/imgTrangChu/item_product/{n.Image}\" alt=\"Ảnh lỗi\" ></div>";
                            chuoi += "<div class=\"home-product-item-body\">";
                            chuoi += $"<h4 class=\"home-product-item__name\">{n.Name}</h4>";
                            chuoi += $"<span class=\"home-product-item__price\">{n.Price} đ</span>";
                            chuoi += "<div class=\"flex\">";
                            chuoi += $"<div class=\"home-product-item__status\"><span class=\"home-product-item__status--title\">{n.LoaiXe}</span></div>";
                            chuoi += $"<i class=\"home-product-item__time\">1 ngày trước</i>";
                            chuoi += "</div></div>";
                            chuoi += "<div class=\"home-product-item__address\">";
                            chuoi += $"<span class=\"home-product-item__address--title\">{n.DiaChi}</span>";
                            chuoi += "</div></a></div></div>";
                        }
                    }
                    listproduct.InnerHtml = chuoi;
                }
                
               //Tìm kiếm
               List<SanPham> listTimKiem = (List<SanPham>)Session["TimKiem"];
               
               if (listTimKiem.Count != 0)
               {
                   string htmls = "";
                   foreach (SanPham n in listTimKiem)
                   {
                       htmls += "<div class=\"grid__column-2\">";
                       htmls += "<div class=\"home-product-item\">";
                       htmls += $"<a href = \"ChiTietSanPham.aspx?masp={n.Id}\" class=\"home-product-item--link\">";
                       htmls += "<div class=\"home-product-item__img\">";
                       htmls += $"<img src = \"assets/img/imgTrangChu/item_product/{n.Image}\" alt=\"Ảnh lỗi\" ></div>";
                       htmls += "<div class=\"home-product-item-body\">";
                       htmls += $"<h4 class=\"home-product-item__name\">{n.Name}</h4>";
                       htmls += $"<span class=\"home-product-item__price\">{n.Price} đ</span>";
                       htmls += "<div class=\"flex\">";
                       htmls += $"<div class=\"home-product-item__status\"><span class=\"home-product-item__status--title\">{n.LoaiXe}</span></div>";
                       htmls += $"<i class=\"home-product-item__time\">1 ngày trước</i>";
                       htmls += "</div></div>";
                       htmls += "<div class=\"home-product-item__address\">";
                       htmls += $"<span class=\"home-product-item__address--title\">{n.DiaChi}</span>";
                       htmls += "</div></a></div></div>";
                   }
                   listproduct.InnerHtml = htmls;
                   Session["TimKiem"] = new List<SanPham>();
               }
        }

        protected void RenderProduct()
        {
            List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];

            string htmls = "";

            foreach (SanPham n in listSanPham)
            {
                htmls += "<div class=\"grid__column-2\">";
                htmls += "<div class=\"home-product-item\">";
                htmls += $"<a href = \"ChiTietSanPham.aspx?masp={n.Id}\" class=\"home-product-item--link\">";
                htmls += "<div class=\"home-product-item__img\">";
                htmls += $"<img src = \"assets/img/imgTrangChu/item_product/{n.Image}\" alt=\"Ảnh lỗi\" ></div>";
                htmls += "<div class=\"home-product-item-body\">";
                htmls += $"<h4 class=\"home-product-item__name\">{n.Name}</h4>";
                htmls += $"<span class=\"home-product-item__price\">{n.Price} đ</span>";
                htmls += "<div class=\"flex\">";
                htmls += $"<div class=\"home-product-item__status\"><span class=\"home-product-item__status--title\">{n.LoaiXe}</span></div>";
                htmls += $"<i class=\"home-product-item__time\">1 ngày trước</i>";
                htmls += "</div></div>";
                htmls += "<div class=\"home-product-item__address\">";
                htmls += $"<span class=\"home-product-item__address--title\">{n.DiaChi}</span>";
                htmls += "</div></a></div></div>";
            }

            listproduct.InnerHtml = htmls;
        }

        protected void RenderProductByFilter()
        {
            string color = Request.Form["search_color"];
            string phankhoi = Request.Form["search_phankhoi"];
            string tinhtrang = Request.Form["search_tinhtrang"];
            double price = double.Parse(Request.Form["search_price"]);
            int date = int.Parse(Request.Form["search_date"]);
            List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];

            List<SanPham> listFilter = new List<SanPham>();
            List<SanPham> listFilter1 = new List<SanPham>();
            List<SanPham> listFilter2 = new List<SanPham>();
            List<SanPham> listFilter3 = new List<SanPham>();
            List<SanPham> listFilter4 = new List<SanPham>();

            //Lọc màu
            if (color != "none")
            {
                foreach (SanPham n in listSanPham)
                {
                    if (n.Color.ToLower().Trim() == color.ToLower().Trim())
                    {
                        listFilter.Add(n);
                    }
                }
            }
            else
            {
                foreach (SanPham n in listSanPham)
                {

                    listFilter.Add(n);
                }
            }

            //Lọc phân khối
            if (phankhoi != "1")
            {
                foreach (SanPham n in listFilter)
                {
                    string[] arr = phankhoi.Trim().Split('-');
                    int soDau = int.Parse(arr[0]);
                    int soCuoi = int.Parse(arr[1]);
                    if (soDau <= int.Parse(n.PhanKhoi) && int.Parse(n.PhanKhoi) <= soCuoi)
                    {
                        listFilter1.Add(n);
                    }
                }
            }
            else
            {
                foreach (SanPham n in listFilter)
                {

                    listFilter1.Add(n);

                }
            }

            //Lọc tình trạng
            if (tinhtrang != "none")
            {
                foreach (SanPham n in listFilter1)
                {
                    if (n.LoaiXe.ToLower().Trim() == tinhtrang.ToLower().Trim())
                    {
                        listFilter2.Add(n);
                    }
                }
            }
            else
            {
                foreach (SanPham n in listFilter1)
                {

                    listFilter2.Add(n);

                }
            }

            //Lọc giá
            if (price != 1)
            {
                foreach (SanPham n in listFilter2)
                {
                    if (n.Price <= price)
                    {
                        listFilter3.Add(n);
                    }
                }
            }
            else
            {
                foreach (SanPham n in listFilter2)
                {

                    listFilter3.Add(n);

                }
            }

            //Lọc năm
            if (date != 1)
            {
                foreach (SanPham n in listFilter3)
                {
                    if (n.DoiXe.Trim() == Convert.ToString(date).Trim())
                    {
                        listFilter4.Add(n);
                    }
                }
            }
            else
            {
                foreach (SanPham n in listFilter3)
                {
                    listFilter4.Add(n);
                }
            }

            string htmls = "";

            foreach (SanPham n in listFilter4)
            {
                htmls += "<div class=\"grid__column-2\">";
                htmls += "<div class=\"home-product-item\">";
                htmls += $"<a href = \"ChiTietSanPham.aspx?masp={n.Id}\" class=\"home-product-item--link\">";
                htmls += "<div class=\"home-product-item__img\">";
                htmls += $"<img src = \"assets/img/imgTrangChu/item_product/{n.Image}\" alt=\"Ảnh lỗi\" ></div>";
                htmls += "<div class=\"home-product-item-body\">";
                htmls += $"<h4 class=\"home-product-item__name\">{n.Name}</h4>";
                htmls += $"<span class=\"home-product-item__price\">{n.Price} đ</span>";
                htmls += "<div class=\"flex\">";
                htmls += $"<div class=\"home-product-item__status\"><span class=\"home-product-item__status--title\">{n.LoaiXe}</span></div>";
                htmls += $"<i class=\"home-product-item__time\">1 ngày trước</i>";
                htmls += "</div></div>";
                htmls += "<div class=\"home-product-item__address\">";
                htmls += $"<span class=\"home-product-item__address--title\">{n.DiaChi}</span>";
                htmls += "</div></a></div></div>";
            }

            listproduct.InnerHtml = htmls;
        }
    }
}