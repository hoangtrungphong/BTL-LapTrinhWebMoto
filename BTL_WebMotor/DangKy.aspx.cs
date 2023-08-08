using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            //Khai báo danh sách DSTK và gán dữ liệu từ application đang có cho nó
            List<TaiKhoan> DSTK = (List<TaiKhoan>)Application["TaiKhoan"];
            bool check = true;
            //Nếu có dữ liệu gửi lên thì chạy vào if
            if (IsPostBack)
            {
                //Kiểm tra xem nút đăng kí có dữ liệu từ btnRegister gửi lên ko,nếu có nghĩa là người dùng click vào nút đăng kí
                if (Request.Form["btnRegister"] == "ĐĂNG KÝ")
                {   
                    //Lấy dữ liệu từ form gửi lên sever
                    string username = Request.Form["username"];
                    string pass = Request.Form["password"];
                    string name = Request.Form["name"];
                    string email = Request.Form["email"];

                    //Khai báo biến x có kiểu dữ liệu của đối tượng TaiKhoan
                    TaiKhoan x = new TaiKhoan();

                    //Dùng vòng lặp kiểm tra tài khoản đã tồn tại chưa
                    foreach (TaiKhoan n in DSTK)
                    {
                        if (username == n.Username)
                        {   
                            //gán check = false
                            check = false;
                        }
                    }

                    //Kiểm tra nếu check = true => không có tài khoản nào trùng tên với tài khoản vừa tạo
                    if (check == true)
                    {
                        //Thực hiện thêm tài khoản vào List TaiKhoan
                        x.Username = username;
                        x.Password = pass;
                        x.Fullname = name;
                        x.Email = email;
                        DSTK.Add(x);

                        //sau đó gán dữ lại dữ liệu vào Application["TaiKhoan"]
                        Application["TaiKhoan"] = DSTK;

                        //Chuyển hướng đến trang đăng nhập
                        Response.Redirect("DangNhap.aspx");
                    }else
                    {
                        //inner thông báo tài khoản tồn tại
                        repassword_error.InnerHtml = "Tài khoản đã tồn tại ";
                    }
                }
            }
        }
    }
}