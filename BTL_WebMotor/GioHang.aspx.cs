using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaiKhoan"].ToString() != "")
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
                List<Cart> listCart1 = (List<Cart>)Application["listCart"];
                if (listCart1.Count !=0)
                {
                    string ma = Request.QueryString.Get("masp");
                    DeleteItemProduct(ma);
                }

                RenderUser();

                

                string chuoi = "";
                List<Cart> listCart = (List<Cart>)Application["listCart"];
                List<SanPham> listProduct = (List<SanPham>)Application["listSanPham"];
                if (listCart.Count == 0)
                {
                    chuoi += "<p style=\"font-size:2rem;\">Không có sản phẩm</p>";
                }
                else
                {
                    foreach (Cart n in listCart)
                    {
                        foreach (SanPham m in listProduct)
                        {
                            if (n.IdProduct == m.Id && n.Username == Session["TaiKhoan"].ToString())
                            {
                                chuoi += "<div class=\"shopping__cast-container\">";
                                chuoi += "<div class=\"shopping__cast-discription\">";
                                chuoi += $"<p class=\"discription-text\">{m.Name}</p>";
                                chuoi += $"<img src = \"assets/img/imgTrangChu/item_product/{m.Image}\" alt=\"\" class=\"discription-img\" >  ";
                                chuoi += "</div><div class=\"shopping__cast-amount\">";
                                chuoi += "<p class=\"amount-text\">Số lượng</p>";
                                chuoi += "<div class=\"amount-items\">";
                                chuoi += "<button class=\"minus\"><i class=\"ti-minus\"></i></button>";
                                chuoi += "<span class=\"amount-number\">1</span>";
                                chuoi += "<button class=\"add\"><i class=\"ti-plus\"></i></button>";
                                chuoi += "</div></div>";
                                chuoi += "<div class=\"shopping__cast-price\">";
                                chuoi += "<p class=\"price-text\">Đơn giá</p>";
                                chuoi += $"<p class=\"price-number\">{m.Price} VND</p>";
                                chuoi += "</div><div class=\"shopping__cast-act\">";
                                chuoi += "<p class=\"act-text\">Xóa</p>";
                                chuoi += $"<a href=\"GioHang.aspx?masp={m.Id}\" class=\"act-delete\" style=\"margin-top:48px;display:block;\"><i class=\"far fa-times-circle\"></i></a></div></div>";
                            }
                        }
                    }
                }
                list_item_product.InnerHtml = chuoi;

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
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }

        public void RenderUser()
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
            chuoi += "<a href = 'DangKy.aspx' class='info__notify-register'>Đăng ký</a> ";
            chuoi += "<a href = 'DangNhap.aspx' class='info__notify-login'>Đăng nhập</a>";
            chuoi += "<a href = '' class='info__notify-text'>";
            chuoi += "<i class='fas fa-chevron-right'></i>Dịch vụ khách hàng</a>";
            chuoi += "<a href = '' class='info__notify-text'>";
            chuoi += "<i class='fas fa-chevron-right'></i>Hỗ trợ khách hàng </a></div></div>";
            info.InnerHtml = chuoi;
        }

        public void DeleteItemProduct(string ma)
        {
            List<Cart> listCart = (List<Cart>)Application["listCart"];
            if(listCart.Count == 0)
            {
                Response.Redirect("GioHang.aspx");
            }
            else
            {
                foreach (Cart n in listCart.ToList())
                {
                    if (n.IdProduct == Convert.ToInt32(ma) && n.Username == Session["TaiKhoan"].ToString())
                    {
                        listCart.Remove(n);
                        Application["listCart"] = listCart;
                        break;
                    }
                }
            }
        }
    }
}