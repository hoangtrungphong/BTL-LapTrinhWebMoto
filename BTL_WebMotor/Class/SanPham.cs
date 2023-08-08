using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WebMotor
{
    public class SanPham
    {
        private int id;
        private string name;
        private double price;
        private string image;
        private string xuatxu;
        private int odo;
        private string doixe;
        private string phankhoi;
        private string mau;
        private string loaixe;
        private string diachi;

        public SanPham()
        {
        }

        public SanPham(int id, string name, double price, string image, string xuatxu, int odo, string doixe, string phankhoi, string mau, string loaixe,string diachi)
        {
            this.Id = id;
            this.Name = name;
            this.Price = price;
            this.Image = image;
            this.XuatXu = xuatxu;
            this.Odo = odo;
            this.DoiXe = doixe;
            this.PhanKhoi = phankhoi;
            this.Color = mau;
            this.LoaiXe = loaixe;
            this.DiaChi = diachi;  
        }

        public int Id { get => id; set => id = value;}
        public string Name { get => name; set => name = value; }

        public double Price { get => price; set => price = value; }

        public string Image { get => image; set => image = value; }

        public string XuatXu { get => xuatxu; set => xuatxu = value; }

        public int Odo { get => odo; set => odo = value; }

        public string DoiXe { get => doixe; set => doixe = value; }

        public string PhanKhoi { get => phankhoi; set => phankhoi = value; }

        public string Color { get => mau; set => mau = value; }

        public string LoaiXe { get => loaixe; set => loaixe = value; }

        public string DiaChi { get => diachi; set => diachi = value; }
    }
}