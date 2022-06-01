<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="iBank.Modules.Users.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table  background="https://www.athletadesk.com/wp-content/uploads/2016/08/join-background.jpg" style="width:100%; margin-top:50px"; margin-style="width:100%; margin-top:50px">
        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label1" runat="server" Text="First Name" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtFirstName" runat="server" ></asp:TextBox>  
                <asp:RequiredFieldValidator ID="rvFirstName" runat="server" ErrorMessage="First Name is Required" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="height: 35px">
                <asp:Label ID="Label2" runat="server" Text="Last Name" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last Name is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="height: 35px">
                <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter a Valid Email address" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td style="height: 35px">
                <asp:Label ID="Label4" runat="server" Text="Phone Number" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Enter a Valid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label11" runat="server" Text="UserName" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>  
            </td>
        </tr>

        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label13" runat="server" Text="Password" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>  
            </td>
        </tr>

        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label14" runat="server" Text="Confirm Password" ForeColor="White" > </asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>  
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ErrorMessage="Password Not matching" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>

         <tr>
            <td style="height: 35px">
                <asp:Label ID="Label9" runat="server" Text="Address" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
       <tr>
        <td style="height: 35px">
            <asp:Label ID="Label12" runat="server" Text="Upload Photo" ForeColor="White" ></asp:Label>
        </td>
        <td style="height: 35px">
            <asp:FileUpload ID="fuPhoto" runat="server" />
        </td>
       </tr>
         <tr>
            <td style="height: 57px">
                <asp:Label ID="Label5" runat="server" Text="Gender" ForeColor="White" ></asp:Label>
            </td>
             <td style="height: 57px">
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="White">
                     <asp:ListItem Text="Male" Value="Male" />
                     <asp:ListItem Text="Female" Value="Female" />
                 </asp:RadioButtonList>

             </td>
        </tr>
        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label6" runat="server" Text="DOB" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox> 
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDOB" ErrorMessage="Age should be 18+" ForeColor="Red" MaximumValue="70" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label7" runat="server" Text="Country" ForeColor="White" > </asp:Label>
            </td>
            <td style="height: 35px">
                <asp:DropDownList ID="ddlCountry" runat="server" Width="180px" >
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td style="height: 35px">
                <asp:Label ID="Label8" runat="server" Text="State" ForeColor="White" ></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:DropDownList ID="ddlState" runat="server" Width="180px">
                    <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                    <asp:ListItem>Chattisgarh</asp:ListItem>
                    <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                    <asp:ListItem>Daman and Diu</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Lakshadweep</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Orissa</asp:ListItem>
                    <asp:ListItem>Pondicherry</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>Uttaranchal</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Terms and Conditions" ForeColor="White" ></asp:Label>              

 ---       
               
                </td>
            <td>
                 <asp:CheckBox ID="cbTermsandConditions" runat="server" />
            </td>
        </tr>

         <tr>
            <td style="text-align:center; height: 39px;" colspan="2" >
                <asp:Button ID="btnSave" runat="server" CssClass="btn-primary" Text="Save"  CausesValidation="true" OnClick="btnSave_Click" Height="30px" style="margin-left: 0" Width="120px"  />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn-danger" Text="Cancel" Height="30px" Width="120px" />
            </td>
        </tr>

        <center>

            <asp:Label ID="creationMessage" runat="server" Text="" style="text-align:center; color:green; font-size:larger;" ></asp:Label>

        </center>

    </table>

</asp:Content>
