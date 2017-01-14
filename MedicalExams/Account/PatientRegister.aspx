<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PatientRegister.aspx.cs" Inherits="Account_PatientRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" style="margin-left: 15ex">
        <h2><%: Title %>Register</h2>
    </div>
    <div style="margin-left: 15ex">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Salmon" />

        <asp:Label ID="labelErrors" runat="server" BackColor="Salmon" Width="100%"></asp:Label>
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="tbName" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name required" ControlToValidate="tbName" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address required" ControlToValidate="tbAddress" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Birth Date</td>
                <td>
                    <asp:TextBox ID="tbBirthDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Birth Date required" ControlToValidate="tbBirthdate" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Postal code</td>
                <td>
                    <asp:TextBox ID="tbPostalCode" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Postal code required" ControlToValidate="tbAddress" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email required" ControlToValidate="tbEmail" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="tbPhone" runat="server" MaxLength="9"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone required" ControlToValidate="tbPhone" Text="*"></asp:RequiredFieldValidator>
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
                <td>Gender</td>
                <td>
                    <asp:TextBox ID="tbGender" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Gender required" ControlToValidate="tbGender" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><b>Health Number:</b></td>
                <td>
                    <asp:TextBox ID="healthNumberTextBox" runat="server" ></asp:TextBox>

                </td>
       
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorHealthNumber" runat="server" ErrorMessage="Health Number is required." ControlToValidate="healthNumberTextBox" Display="Dynamic" ToolTip="Health Number is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorHealthNumber" runat="server" ErrorMessage="Invalid Health Number" ValidationExpression="[0-9]{9}" ControlToValidate="healthNumberTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password required" ControlToValidate="tbPassword" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPassword" ErrorMessage="Invalid password" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,})">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Confirm password</td>
                <td>
                    <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
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

