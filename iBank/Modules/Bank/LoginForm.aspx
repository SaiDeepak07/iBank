<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="iBank.Modules.Bank.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table>
        <tr>
            <th style="padding: 20px; text-align: center">
                <asp:Label ID="Label1" CssClass="Head" runat="server" Text="ENTER YOUR DETAILS"></asp:Label>
            </th>
        </tr>



        <tr>
            <td style="padding: 10px">
                <asp:Label ID="Label2" CssClass="DesLabel" runat="server" Text="User Name"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" runat="server" ErrorMessage="User Name is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>



        <tr>
            <td style="padding: 10px">
                <asp:Label CssClass="DesLabel" ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password Required" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="color: red">
                <asp:Label ID="Label4" runat="server" Text="Forget Password?"></asp:Label>
            </td>
        </tr>



        <tr>
            <td style="text-align: center; padding: 20px">
                <asp:Button CssClass="btn" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
            </td>

        </tr>

        <tr>
            <td style="text-align: center">
                <asp:Button CssClass="btn2" ID="Button2" runat="server" Text="SIGN UP" OnClick="Button2_Click" />
            </td>
        </tr>

        <tr>
            <td>
               <asp:Label ID="DisplayMessage" runat="server" Text="" style="text-align:center; color:green; font-size:larger;" ></asp:Label>
            </td>
        </tr>



    </table>

</asp:Content>
