using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Serialization;

namespace BTL_WebMotor
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["TaiKhoan"] = new List<TaiKhoan>();
            TaiKhoan a = new TaiKhoan();
            a.Username = "admin";
            a.Password = "123";
            List<TaiKhoan> ds;
            ds = (List<TaiKhoan>)Application["TaiKhoan"];
            ds.Add(a);
            Application["TaiKhoan"] = ds;

            Application["listCart"] = new List<Cart>();

            Application["listSanPham"] = getListProduct();
        }

        protected List<SanPham> getListProduct()
        {
            string path = "listProduct.xml";
            List<SanPham> listProduct = new List<SanPham>();
            if (File.Exists(Server.MapPath(path)))
            {
                XmlSerializer xml = new XmlSerializer(typeof(List<SanPham>));
                StreamReader file = new StreamReader(Server.MapPath(path));

                listProduct = (List<SanPham>)xml.Deserialize(file);
                file.Close();
            }
            return listProduct;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["TaiKhoan"] = "";
            Session["TimKiem"] = new List<SanPham>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}