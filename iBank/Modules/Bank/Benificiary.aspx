<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Benificiary.aspx.cs" Inherits="iBank.Modules.Bank.Benificiary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>User Details</h3>
    <table >
        
    </table>

   
    <table background="https://img.myloview.com/stickers/bag-full-of-money-on-light-background-400-155364408.jpg" style="width:88%; margin-top:50px; height: 356px; margin-right: 0px; margin-bottom: 4px;"; margin-style="width:100%; margin-top:50px"">

        
    <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="User Account Number" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserAccountNumber" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <h3>Benificiary Details</h3>
            </td>
        </tr>
         

        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label4" runat="server" Text="Benificiary Account Number" ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtBenificiaryAccountNumber" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm Account Number" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmAccountNumber" runat="server" ></asp:TextBox>
                <asp:CompareValidator ID="compPassword" runat="server"  ForeColor="Red" ErrorMessage="Account Number must be same" 
                    ControlToValidate="txtBenificiaryAccountNumber" ControlToCompare="txtConfirmAccountNumber" ></asp:CompareValidator>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Benificiary Name" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBenificiaryName" runat="server" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Bank Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBankName" runat="server" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Branch" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBranch" runat="server" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="IFSC Code" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIFSCCode" runat="server" ></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn-primary" Height="26px" Width="87px" OnClick="btnSave_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-danger" Height="26px" Width="87px" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <center><asp:Label ID="benificiaryDetails" runat="server" Text="" style="text-align:center; color:green; font-size:large">
            </asp:Label></center>

</asp:Content>
