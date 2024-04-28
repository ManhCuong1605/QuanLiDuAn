﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiShopQuanAo.Views.BanHang
{
    public partial class Banhang : System.Web.UI.Page
    {
        private Models.DBClass myCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            myCon = new Models.DBClass();
            if (!IsPostBack)
            {
                ShowClothes();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                {
                    new DataColumn("ID"),
                    new DataColumn("Clothes"),
                    new DataColumn("Chat Lieu"),
                    new DataColumn("So Luong"),
                    new DataColumn("Gia")
                }
                );
                ViewState["HoaDon"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            HoadonList.DataSource = ViewState["HoaDon"];
            HoadonList.DataBind();
        }
        private void ShowClothes()
        {
            string Query = "SELECT * FROM dbo.Hang";
            ClothesList.DataSource = myCon.GetData(Query);
            ClothesList.DataBind();
        }
        protected void ClothesList_SelectedIndexChanged1(object sender, EventArgs e)
        {
               
        }
    }
}