<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NurseRegister.aspx.cs" Inherits="Account_NurseRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="margin-left:65ex" >
            <h2><%: Title %>Register</h2>
    </div>

    <div style="margin-left:50ex">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Salmon" />

        <asp:Label ID="labelErrors" runat="server" BackColor="Salmon" Width="100%"></asp:Label>
      
        <table>
             <tr>
                    <td><b>Name</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                  
                <tr>
                    <td><b>Phone</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic">*</asp:CompareValidator>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbPhone">*</asp:RequiredFieldValidator>
</td>
                    </td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail">*</asp:RegularExpressionValidator>
                    </td>
                    <td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbEmail">*</asp:RequiredFieldValidator>
</td>
                </tr>
             <tr>
                <td><b>Postal code</b></td>
                <td>
                    <asp:TextBox ID="tbPostalCode" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Postal code required" ControlToValidate="tbAddress" Text="*"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="tbPostalCode" Display="Dynamic">*</asp:RegularExpressionValidator>

          </td>
            </tr>
             <tr>
                <td><b>Address</b></td>
                <td>
                    <asp:TextBox ID="tbAddress" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address required" ControlToValidate="tbAddress" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td><b>Birth Date</b></td>
                <td>
                    <asp:TextBox ID="tbBirthDate" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Birth Date required" ControlToValidate="tbBirthdate" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td><b>Username</b></td>
                <td>
                    <asp:TextBox ID="tbUsername" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username required" ControlToValidate="tbUsername" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid username." ControlToValidate="tbUsername" ValidationExpression="[a-zA-Z]\w{4,255}">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td><b>Password</b></td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password required" ControlToValidate="tbPassword" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPassword" ErrorMessage="Invalid password" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,})">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td style="width:170px"><b>Confirm password</b></td>
                <td>
                    <asp:TextBox ID="tbConfirmPassword" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" TextMode="Password" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirmation password required" ControlToValidate="tbConfirmPassword" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="Password (confirmation) does not macth the password">*</asp:CompareValidator>
                </td>
            </tr>
        </table>

        <div style="margin-left:15ex">
         <asp:Button ID="btRegister" runat="server" Text="Register" OnClick="btRegister_Click" BackColor="#5D7B9D" Font-Size="Smaller" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"/>
        <asp:Button ID="btCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btCancel_Click" Font-Size="Smaller" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"/>
        </div>
    </div>
</asp:Content>

