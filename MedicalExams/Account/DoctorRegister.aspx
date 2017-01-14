<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DoctorRegister.aspx.cs" Inherits="Account_DoctorRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-left:15ex" >
            <h2><%: Title %>Register</h2>
    </div>
    <div style="margin-left:15ex">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Salmon" />

        <asp:Label ID="labelErrors" runat="server" BackColor="Salmon" Width="100%"></asp:Label>
      
        <table>
             <tr>
                    <td><b>Name</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                        <td><b>Speciality</b></td>
                            <td>
                                <asp:DropDownList ID="ddlSpeciality" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Names="Arial" Font-Size="Medium" >
                               <%--     <asp:ListItem Value="%"></asp:ListItem>--%>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceSpeciality" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT [Speciality] FROM [Doctor]"></asp:SqlDataSource>
                                
                            </td>
                    </tr>
                <tr>
                    <td><b>Phone</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username required" ControlToValidate="tbUsername" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid username." ControlToValidate="tbUsername" ValidationExpression="[a-zA-Z]\w{4,255}">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" ></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password required" ControlToValidate="tbPassword" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPassword" ErrorMessage="Invalid password" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,})">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Confirm password</td>
                <td>
                    <asp:TextBox ID="tbConfirmPassword" runat="server"  TextMode="Password" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirmation password required" ControlToValidate="tbConfirmPassword" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="Password (confirmation) does not macth the password">*</asp:CompareValidator>
                </td>
            </tr>
        </table>
         <asp:Button ID="btRegister" runat="server" Text="Register" OnClick="btRegister_Click" BackColor="#5D7B9D" Font-Size="Smaller" />
        <asp:Button ID="btCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btCancel_Click" Font-Size="Smaller" BackColor="#5D7B9D" />
    </div>
</asp:Content>

