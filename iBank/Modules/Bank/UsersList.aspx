<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="iBank.Modules.Bank.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .myGridClass {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #a11246;
            font-family: cursive;
        }

            .myGridClass td {
                padding: 2px;
                font-size: 11px;
                text-align: center;
                line-height: 22px;
                border: solid 1px #a11246;
                color: #000;
            }

            .myGridClass th {
                padding: 4px 2px;
                color: #fff;
                text-align: center;
                line-height: 25px;
                font-weight: 600;
                font-size: 10px;
                background: #b31f55;
                border-left: solid 1px #a11246;
            }
    </style>
    <asp:GridView ID="GridView1" CssClass="myGridClass" runat="server" >
    </asp:GridView>

</asp:Content>
