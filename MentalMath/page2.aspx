<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="page2.aspx.cs" Inherits="MentalMath.page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headMain" runat="server">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        .left {
            width: 50px;
            height: 100%;
            background: #2f2f2f;
            white-space: nowrap;
            transition: width 0.5s;
            position: fixed;
            z-index: 9999;
        }

            .left ul {
                padding: 0;
                list-style-type: none;
                text-align: left;
            }

            .left li {
                width: auto;
                height: 60px;
                line-height: 50px;
                padding-left: 18px;
            }

                .left li:hover {
                    background: black;
                }

            .left:hover {
                width: 250px;
            }

            .left .item-menu {
                height: 50px;
                overflow: hidden;
                color: #fff;
            }

            .left a {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

        span.menu {
            padding-left: 17px;
        }

        .t_search {
            color: black;
            height: 35px;
            margin-left: 15px;
            width: 190px;
        }
    </style>

    <title>Document</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
            <div class="left ">
                <ul>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-home"></span>
                            <span class="menu">Trang Chủ</span>
                        </li>
                    </a>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-book"></span>
                            <span class="menu">Manga</span>
                        </li>
                    </a>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-pencil"></span>
                            <span class="menu">Light Novel</span>
                        </li>
                    </a>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-list"></span>
                            <span class="menu">Danh Sách</span>
                        </li>
                    </a>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-envelope"></span>
                            <span class="menu"> Liên Hệ</span>
                        </li>
                    </a>
                    <a href="#">
                        <li class="item-menu">
                            <span class="glyphicon glyphicon-credit-card"></span>
                            <span class="menu">Ủng Hộ</span>
                        </li>
                    </a>
                    <li class="item-menu">
                        <span class="glyphicon glyphicon-search"></span>
                        <input class="t_search" type="text" placeholder="Tìm Kiếm">
                    </li>
                </ul>
            </div> <!-- end left -->
            <div class="right">
                content
            </div>
        </div>
    </div>


</asp:Content>
