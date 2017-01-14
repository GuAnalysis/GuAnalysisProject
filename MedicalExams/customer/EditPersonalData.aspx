﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditPersonalData.aspx.cs" Inherits="customer_EditPersonalData" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-left:21ex" >
        <h2><%: Title %>Personal Data</h2>
        <br />
        <br />
        <br />
     
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Patient_ID" DataSourceID="SqlDataSourcePatient">
            <EditItemTemplate>
          <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                 <table>
                    <tr>
                        <td>Name:</td>
                        <td><asp:TextBox ID="Patient_nameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' /></td>
                   </tr>
                    <tr>
                         <td>Address:</td>
                        <td><asp:TextBox ID="Patient_addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><asp:TextBox ID="Patient_phoneTextBox" runat="server" Text='<%# Bind("Patient_phone") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td>Postal code:</td>
                        <td><asp:TextBox ID="Postal_codeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' /></td>
                   <td><asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="Postal_codeTextBox" Display="Dynamic">*</asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>

                        <td>Birth date:</td>
                        <td><asp:TextBox ID="Birth_dateTextBox" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' /></td>
                
                    </tr>
                     <tr>
                     <td>Gender:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownListGender" runat="server" DataTextField="Gender" DataValueField="Gender" SelectedValue='<%# Bind("Gender") %>'>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            
                            </tr>
                     <tr>
                        <td>Email:</td>
                        <td><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></td>
                   
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
                        <td>Name:</td>
                        <td><asp:TextBox ID="Patient_nameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' /></td>
                   </tr>
                    <tr>
                         <td>Address:</td>
                        <td><asp:TextBox ID="Patient_addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><asp:TextBox ID="Patient_phoneTextBox" runat="server" Text='<%# Bind("Patient_phone") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td>Postal code:</td>
                        <td><asp:TextBox ID="Postal_codeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' /></td>
                   
                    </tr>
                    <tr>

                        <td>Birth date:</td>
                        <td><asp:TextBox ID="Birth_dateTextBox" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' /></td>
                
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td><asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td>Health number:</td>
                        <td><asp:TextBox ID="Health_numberTextBox" runat="server" Text='<%# Bind("Health_number") %>' /></td>
                  
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("Patient_username") %>' /></td>
                  
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></td>
                   
                    </tr>
                    <tr>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
                        <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                    </tr>
                 </table>
                
            </InsertItemTemplate>
            <ItemTemplate>
                <table>

                 
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Patient_nameLabel" runat="server" Text='<%# Bind("Patient_name") %>' /></td>

                    </tr>

                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:Label ID="Patient_addressLabel" runat="server" Text='<%# Bind("Patient_address") %>' /></td>

                    </tr>

                    <tr>
                        <td>Phone:</td>
                        <td>
                            <asp:Label ID="Patient_phoneLabel" runat="server" Text='<%# Bind("Patient_phone") %>' /></td>

                    </tr>

                    <tr>
                        <td>Postal code:</td>
                        <td>
                            <asp:Label ID="Postal_codeLabel" runat="server" Text='<%# Bind("Postal_code") %>' /></td>

                    </tr>

                    <tr>
                        <td>Birth date:</td>
                        <td>
                            <asp:Label ID="Birth_dateLabel" runat="server" Text='<%# Bind("Birth_date", "{0:d}") %>' /></td>

                    </tr>

                     <tr>
                                <td>Gender:</td>
                                <td>
                                   <asp:Label ID="LabelGender" runat="server" Text='<%# Bind("Gender") %>' /></td>

                            </tr>
                    <tr>
                        <td>Health number:</td>
                        <td>
                            <asp:Label ID="Health_numberLabel" runat="server" Text='<%# Bind("Health_number") %>' /></td>

                    </tr>

                    <tr>
                        <td>Username:</td>
                        <td>
                            <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("Patient_username") %>' /></td>
                    </tr>

                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></td>

                    </tr>

                    <tr>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton></td>
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

