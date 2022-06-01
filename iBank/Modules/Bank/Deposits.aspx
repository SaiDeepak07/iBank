<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deposits.aspx.cs" Inherits="iBank.Modules.Bank.Deposits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 100px">

        <asp:Image ID="Image1" src="https://cdn.icon-icons.com/icons2/2699/PNG/512/infor_logo_icon_167926.png" runat="server" Height="92px" Width="202px" />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Welcome to Infor Bank

    </div>
    <div>
        <asp:Label ID="DepositMessage" Text="" style="text-align:center; color:green; font-size:larger;" runat="server" >


        </asp:Label></div>


    <table background="https://www.bankofbaroda.in/-/media/project/bob/countrywebsites/india/blogs/investment/images/how-does-fixed-deposit-work.jpg" style="width:85%; margin-top:48px; height: 500px; margin-right: 2px;"; margin-style="width:100%; margin-top:50px">
        <tr>
            <td style="width: 321px">
                <asp:Label ID="firstname" runat="server" Text="Account Number" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtAccountNumber" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="Account Number must not be empty" 
                    ControlToValidate="txtAccountNumber"  ></asp:RequiredFieldValidator>
                 <asp:Button ID="Button1" runat="server" Text="Get Details" CssClass="btn-primary" OnClick="Button1_Click"  />
               
            </td>
        </tr>
       <tr>
            <td style="width: 321px">
                <asp:Label ID="Label1" runat="server" Text="Account Name" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtAccountName" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                <asp:Label ID="Label2" runat="server" Text="Bank Name" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtBankName" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                <asp:Label ID="Label3" runat="server" Text="Branch" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtBranch" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                <asp:Label ID="Label4" runat="server" Text="IFSC Code" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtIFSCCode" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                <asp:Label ID="Label5" runat="server" Text="Deposit Amount" style="font-size:20px" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="txtDepositAmount" runat="server" ForeColor="Black" Height="18px" Width="147px" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnDeposit" runat="server" Text="Deposit" CssClass="btn-primary" OnClick="btnDeposit_Click" />
                <asp:Button ID="btncancel" runat="server" CssClass="btn-danger" Text="Cancel" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />

    <br />

</asp:Content>

