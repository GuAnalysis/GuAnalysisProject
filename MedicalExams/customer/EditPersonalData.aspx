<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditPersonalData.aspx.cs" Inherits="customer_EditPersonalData" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="margin-left:60ex">
        <h2><%: Title %>Personal Data</h2>
        <br />
        <br />
        <br />
     
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Patient_ID" DataSourceID="SqlDataSourcePatient">
            <EditItemTemplate>
          <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                 <table>
                    <tr>
                        <td><b>Name:</b></td>
                        <td><asp:TextBox ID="Patient_nameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" /></td>
                   </tr>
                    <tr>
                         <td><b>Address:</b></td>
                        <td><asp:TextBox ID="Patient_addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><b>Phone:</b></td>
                        <td><asp:TextBox ID="Patient_phoneTextBox" runat="server" Text='<%# Bind("Patient_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><b>Postal code:</b></td>
                        <td><asp:TextBox ID="Postal_codeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   <td><asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="Postal_codeTextBox" Display="Dynamic">*</asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>

                        <td><b>Birth date:</b></td>
                        <td><asp:TextBox ID="Birth_dateTextBox" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                
                    </tr>
                     <tr>
                     <td><b>Gender:</b></td>
                                <td>
                                    <asp:DropDownList ID="DropDownListGender" runat="server" DataTextField="Gender" DataValueField="Gender" SelectedValue='<%# Bind("Gender") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px">
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            
                            </tr>
                     <tr>
                        <td><b>Email:</b></td>
                        <td><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                     <tr>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                        <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                    </tr>
                 </table>

            </EditItemTemplate>
            <InsertItemTemplate>
                
                <table>
                    <tr>
                        <td><b>Name:</b></td>
                        <td><asp:TextBox ID="Patient_nameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   </tr>
                    <tr>
                         <td><b>Address:</b></td>
                        <td><asp:TextBox ID="Patient_addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><b>Phone:</b></td>
                        <td><asp:TextBox ID="Patient_phoneTextBox" runat="server" Text='<%# Bind("Patient_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><b>Postal code:</b></td>
                        <td><asp:TextBox ID="Postal_codeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   <td>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="Postal_codeTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>
                   </td>
                    </tr>
                    <tr>

                        <td><b>Birth date:</b></td>
                        <td><asp:TextBox ID="Birth_dateTextBox" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                
                    </tr>
                    <tr>
                        <td><b>Gender:</b></td>
                        <td><asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><b>Health number:</b></td>
                        <td><asp:TextBox ID="Health_numberTextBox" runat="server" Text='<%# Bind("Health_number") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                  
                    </tr>
                    <tr>
                        <td><b>Username:</b></td>
                        <td><asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("Patient_username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                  
                    </tr>
                    <tr>
                        <td><b>Email:</b></td>
                        <td><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/></td>
                   
                    </tr>
                    <tr>
                        <td><asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px"/></td>
                        <td><asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px"/></td>
                    </tr>
                 </table>
                
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td><b>Name:</b></td>
                        <td>
                            <asp:Label ID="Patient_nameLabel" runat="server" Text='<%# Bind("Patient_name") %>' /></td>
                    </tr>

                    <tr>
                        <td><b>Address:</b></td>
                        <td>
                            <asp:Label ID="Patient_addressLabel" runat="server" Text='<%# Bind("Patient_address") %>' /></td>

                    </tr>

                    <tr>
                        <td><b>Phone:</b></td>
                        <td>
                            <asp:Label ID="Patient_phoneLabel" runat="server" Text='<%# Bind("Patient_phone") %>' /></td>

                    </tr>

                    <tr>
                        <td><b>Postal code:</b></td>
                        <td>
                            <asp:Label ID="Postal_codeLabel" runat="server" Text='<%# Bind("Postal_code") %>' /></td>
                        <td>

                        </td>
                    </tr>

                    <tr>
                        <td><b>Birth date:</b></td>
                        <td>
                            <asp:Label ID="Birth_dateLabel" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' /></td>

                    </tr>

                     <tr>
                                <td><b>Gender:</b></td>
                                <td>
                                   <asp:Label ID="LabelGender" runat="server" Text='<%# Bind("Gender") %>' /></td>

                            </tr>
                    <tr>
                        <td><b>Health number:</b></td>
                        <td>
                            <asp:Label ID="Health_numberLabel" runat="server" Text='<%# Bind("Health_number") %>' /></td>

                    </tr>

                    <tr>
                        <td><b>Username:</b></td>
                        <td>
                            <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("Patient_username") %>' /></td>
                    </tr>

                    <tr>
                        <td><b>Email:</b></td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></td>

                    </tr>

                    <tr>
                        <td>
                               <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" /></td>
                     <td>     <asp:Button ID="MyExams" runat="server" Text="My Exams" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" OnClick="MyExams_Click"/>     </td>

                    </tr>

                </table>

            </ItemTemplate>
        </asp:FormView>

    </div>
        
        <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID" 
                InsertCommand="INSERT INTO [Patient] ([Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email]) VALUES (@Patient_name, @Patient_address, @Patient_phone, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_username, @email)" 
                SelectCommand="SELECT Patient_ID, Patient_name, Patient_address, Patient_phone, Postal_code, Birth_date, Gender, Health_number, Patient_username, email FROM Patient WHERE (Patient_username = @Patient_username)" 
                UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_address] = @Patient_address, [Patient_phone] = @Patient_phone, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [email] = @email WHERE [Patient_ID] = @Patient_ID">
            <deleteparameters>
               <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>
            </deleteparameters>
            <insertparameters>
                <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="Health_number" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
            </insertparameters>
            <SelectParameters>
                <asp:Parameter Name="Patient_username"  Type="String" />
            </SelectParameters>
            <updateparameters>
                <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>
            </updateparameters>
        </asp:SqlDataSource>
</asp:Content>

