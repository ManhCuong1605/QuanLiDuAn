<%@ Page Title="" Language="C#" MasterPageFile="~/Views/BanHang/Nguoiban.Master" AutoEventWireup="true" CodeBehind="QuanAo.aspx.cs" Inherits="QuanLiShopQuanAo.Views.BanHang.QuanAo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Đảm bảo các ô có cùng chiều cao */
        .col-3 {
            height: 250px; /* Sử dụng pixels thay vì phần trăm để đảm bảo chiều cao cố định */
        }

        /* Ẩn hình ảnh và giá sản phẩm */
        .product-info {
            display: none;
        }

        /* Căn giữa nội dung trong col-3 */
        .col-3-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        /* Kích thước hình ảnh */
        .product-image {
            width: 150px; /* Điều chỉnh kích thước hình ảnh theo nhu cầu */
            height: 150px; /* Điều chỉnh kích thước hình ảnh theo nhu cầu */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Phần tiêu đề danh sách sản phẩm -->
                <h3 class="text-center">Danh sách quần áo</h3>
            </div>
        </div>
        <div class="row">
            <div class="col"> 
                   <div class="d-flex align-items-center"> 
                  <div class="col">
                            <a href="GioHang.aspx" class="d-flex align-items-center" style="text-decoration:none;">
                                <img src="../../Assets/Images/icons8-line-64.png" />
                          
 <asp:LinkButton ID="lbGiohang" runat="server" Font-Size="12px" OnClick="lbGiohang_Click" Text="Giỏ hàng"> </asp:LinkButton>
                            </a>
                        </div>

                    </div>
            </div>
            <div class="col-3">
                <!-- Sản phẩm 1 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 1</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=1">
                        <img class="product-image" src="../../Assets/Images/chup-hinh-sang-tao-2.jpg" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-3">
                <!-- Sản phẩm 2 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 2</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=2">
                        <img class="product-image" src="../../Assets/Images/sm00300-800x800.jpg" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-3">
                <!-- Sản phẩm 3 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 3</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=3">
                        <img class="product-image" src="../../Assets/Images/istockphoto-915923400-612x612.jpg" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
        </div>
        <!-- Dòng mới -->
        <div class="row">
            <div class="col-12"></div> <!-- Cột rỗng -->
        </div>
        <div class="row">
            <div class="col"> <!-- Cột trống -->
            </div>
            <div class="col-3">
                <!-- Sản phẩm 4 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 4</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=4">
                        <img class="product-image" src="../../Assets/Images/in-ao-hoat-hinh-lay-ngay-tanbinh%20(2).jpg" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-3">
                <!-- Sản phẩm 5 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 5</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=5">
                        <img class="product-image" src="../../Assets/Images/istockphoto-1354020635-612x612.jpg" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-3">
                <!-- Sản phẩm 6 -->
                <div class="col-3-content">
                    <h3 class="text-center">Sản phẩm 6</h3>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=6">
                        <img class="product-image" src="../../Assets/Images/quan-dui-nam-sooc-cap-chun-trang-1.png" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
