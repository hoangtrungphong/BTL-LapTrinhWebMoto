using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WebMotor.Class
{
    public class TaiKhoan
    {
        string username;
        string password;
        string fullname;
        string email;
        public string Username 
        {
            get { return username; }
            set { username = value; } 
        }
        public string Password
        { 
            get { return password; }
            set { password = value; }
        } 
        public string Fullname
        {
            get { return fullname; }
            set { fullname = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
    }
}