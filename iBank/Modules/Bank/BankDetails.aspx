<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BankDetails.aspx.cs" Inherits="iBank.Modules.Bank.BankDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="height: 100px">

        <asp:Image ID="Image1" src="https://www.kindpng.com/picc/m/404-4046912_infor-logo-transparent-hd-png-download.png" runat="server" Height="92px" Width="202px" />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Welcome to Infor Bank 

    </div>

    <table background="https://i.pinimg.com/736x/28/92/46/289246beb9c9962df7f5c864de1b6382.jpg" style="width:67%; margin-top:48px; height: 500px; margin-right: 2px;"; margin-style="width:100%; margin-top:50px">

        

        <tr>
            <th style="padding: 30px; text-align: center; font-weight: 1000; width: 354px;" class="modal-sm">
                <asp:Label ID="Label8" runat="server" Text="Enter your account details" ForeColor="White" ></asp:Label>
            </th>
           
        </tr>

         <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label7" runat="server" Text="User Id" ForeColor="White"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtUserId" runat="server" Height="20px" Width="172px"></asp:TextBox>
               
            </td>
        </tr>

        <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label2" runat="server" Text="Account Name" ForeColor="White" ></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtAccountName" runat="server" Height="20px" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label3" runat="server" Text="Bank Name" ForeColor="White" ></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtBankName" runat="server" Height="20px" Width="173px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label4" runat="server" Text="Branch" ForeColor="White" ></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtBranch" runat="server" Height="20px" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label5" runat="server" Text="IFSCCode" ForeColor="White" ></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtIFSCCode" runat="server" Height="20px" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 354px;" class="modal-sm">
                <asp:Label ID="Label6" runat="server" Text="Bank Balance" ForeColor="White" ></asp:Label>
            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:TextBox ID="txtBankBalance" runat="server" Height="20px" Width="172px"></asp:TextBox>
            </td>
        </tr>

        <tr>

            <td style="width: 354px" class="modal-sm">

            </td>
            <td class="modal-sm" style="width: 446px">
                <asp:Button ID="btnSave" runat="server" CssClass="btn-primary" Text="Save"  CausesValidation="true" Height="30px" style="margin-left: 0" Width="120px" OnClick="btnSave_Click"  />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn-danger" Text="Cancel" Height="30px" Width="120px" />

             </td>
        </tr>
    </table>

     <center>
            <asp:Label ID="creationMessage" runat="server" Text="" style="text-align:center; color:green; font-size:larger;" ></asp:Label>

        </center>

</asp:Content>

