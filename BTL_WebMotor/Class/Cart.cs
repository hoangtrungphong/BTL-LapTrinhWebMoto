using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WebMotor.Class
{
    public class Cart
    {
        string username;
        int idProduct;

        public Cart()
        {
        }

        public Cart(string username, int idProduct)
        {
            this.Username = username;
            this.IdProduct = idProduct;
        }

        public string Username { get => username; set => username = value; }
        public int IdProduct { get => idProduct; set => idProduct = value; }
    }
}