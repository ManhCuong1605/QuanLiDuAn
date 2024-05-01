using QuanLiShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiShopQuanAo.Views.BanHang
{
    public partial class QuanAo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GioHang"] != null)
                {
                    DBClass.tbGioHang = Session["GioHang"] as DataTable;
                }
                else
                {
                    DBClass.tbGioHang.Rows.Clear();
                    DBClass.tbGioHang.Columns.Clear();
                    DBClass.tbGioHang.Columns.Add("Mahang", typeof(int));
                    DBClass.tbGioHang.Columns.Add("Tenhang", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Machatlieu", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Dongia", typeof(decimal));
                    DBClass.tbGioHang.Columns.Add("SoLuong", typeof(int));
                    DBClass.tbGioHang.Columns.Add("Ghichu", typeof(string));
                    DBClass.tbGioHang.Columns.Add("TongTien", typeof(decimal), "SoLuong * Dongia");
                }
                lbGiohang.Text = "Giỏ hàng (" + DBClass.tbGioHang.Rows.Count + ")";

            }
        }
        protected void lbGiohang_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giohang.aspx");
        }

    }
}
