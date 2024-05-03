﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QuanLiShopQuanAo.Views.Admin.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Đảm bảo các ô có cùng chiều cao */
    .col-3 {
        height: auto; /* Thay đổi chiều cao tự động */
    }

    /* Căn giữa nội dung trong mỗi cột */
    .col-3-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        min-height: 250px; /* Kích thước tối thiểu cho cột */
    }

    /* Kích thước hình ảnh sản phẩm */
    .product-image {
        width: 200px;
        height: 200px;
        transition: transform 0.3s ease;
        margin-left: 120px;
        
    }

    /* Hiệu ứng khi di chuột qua hình ảnh */
    .product-image:hover {
        transform: scale(1.1);
    }

    /* Hiển thị các thông tin sản phẩm khi di chuột qua */
    .col-3:hover .product-info {
        display: block;
    }

    /* Áp dụng cho các asp:Label */
     .product-info label {
        margin-top: 10px; /* Khoảng cách từ nhãn đến hình ảnh */
        display: inline-block; /* Hiển thị trên cùng một dòng */
        
    }
     .row {
        margin-bottom: 22px; /* Khoảng cách giữa các hàng */
    }
     h4.text-center {
    margin-left: 30px; /* Điều chỉnh giá trị này để lùi về phía bên phải theo ý của bạn */
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
       <div class="container-fluid">
        <div class="col-12">
            <!-- Phần tiêu đề danh sách sản phẩm -->
            <h3 class="text-center">Danh sách quần áo</h3>
        </div>
       
        <div class="row">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 mb-3">
                        <div class="col-4-content">
                            <h4 class="text-center"><%# Eval("Tenhang") %></h4>
                            <a class="text-center" href='<%# "ChiTietSanPham.aspx?ID=" + Eval("Mahang") %>'>
                             <img class="product-image" src='<%# ResolveUrl("~/Assets/Images/" + Eval("Anh")) %>' />
                            </a>
                            <asp:Label style="margin-left:175px;" Text='<%# "Giá: " + Eval("Dongiaban") + "đ" %>' runat="server" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
