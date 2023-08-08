using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            //
            List<TaiKhoan> TK = (List<TaiKhoan>)Application["TaiKhoan"];

            if (IsPostBack)
            {
                if (Request.Form["btnLogin"] == "ĐĂNG NHẬP")
                {   //Lấy dữ liệu gửi lên sever từ ô input
                    string username = Request.Form["usernameL"];
                    string pass = Request.Form["passwordL"];

                    //Vòng lặp duyệt qua danh sách tài khoản
                    foreach (TaiKhoan q in TK)
                    {   //Thực hiện kiểm tra xem tài khoản & mật khẩu đã đúng chưa
                        if (q.Username == username && q.Password == pass)
                        {
                            //Nếu đúng thì gán cho Session["TaiKhoan"] biến username(tên tài khoản)
                            Session["TaiKhoan"] = username;
                            
                            //Chuyển hướng đến Trang Chủ
                            Response.Redirect("TrangChu.aspx");
                        }else
                        {   
                            //Thông báo lôi
                            errorL.InnerHtml = "Tên tài khoản hoặc mật khẩu không chính xách !";
                        }
                    }
                }
            }
        }
    }
}