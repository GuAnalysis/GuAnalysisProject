<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Patients" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <br>
       <center>
        <header id="hPatients" class="alt">
            <h1><b>Patient Panel</b></h1>
        </header>
     </center>        
    
    
      <asp:Panel ID="panelInfo" runat="server" Visible="false">
                    <div style="margin:1em; margin-left:65ex">
            <asp:Label ID="labelInfo" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        </div>
                    <div style="margin:1em;margin-left:70ex">
            <asp:Button ID="btClose" runat="server" Text="OK" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" Font-Underline="False" OnClick="btClose_Click" />
        </div>
                </asp:Panel>

         
                    <asp:Panel ID="panelGridPatients" runat="server">
                  <div style="margin-left:21ex">
                      <asp:Panel ID="panelSearch" runat="server" Height="150px" Width="300px" Visible="False">
                
                            <table>
                              
                             <tr>
                                  
                                     <td style="width: 70px;"><b>Patient Name:</b></td>
                                      <td style="width: 100px;">
                                 

                                        <asp:TextBox ID="tbSearchPatients" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                              <table>
                    <tr>
                        <td><asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" /></td><td>&nbsp;</td>
                        <td><asp:Button ID="btCloseSearch" runat="server" Text="Search and close" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" style="left: 20px; top: -1px; width: 155px;" OnClick="btCloseSearch_Click" /></td><td>&nbsp;</td>
                        <td><asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" style="left: 28px; top: 0px; width: 122px;" BorderWidth="1px" OnClick="btClearSearch_Click" /></td>
                        
                    </tr>
                </table>
                         
                        </asp:Panel>
                        </div>
                        <br/>
                    <br/> 
        <div style="margin-left:auto; margin-right:auto; width:800px">

                            <asp:GridView ID="gridViewPatients" runat="server"   DataKeyNames="Patient_ID"  AllowPaging="True" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" AllowSorting="True" DataSourceID="SqlDataSourceGridPatients" OnSelectedIndexChanged="gridViewPatients_SelectedIndexChanged">


                        <AlternatingRowStyle BackColor="#F7F7F7" />

                        <Columns>

                                <asp:CommandField ButtonType="Button" SelectText="&gt;   " ShowSelectButton="True">
                <ControlStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="X-Small" Height="30px" Width="35px" />
                                <HeaderStyle Width="50px" />
                <ItemStyle VerticalAlign="Middle" />
                </asp:CommandField>
                                <asp:BoundField DataField="Patient_name" HeaderText="Name" SortExpression="Patient_name">
                                <HeaderStyle Width="300px" />
                                </asp:BoundField>
                           <asp:BoundField DataField="Patient_address" HeaderText="Address" SortExpression="Patient_address">
                                <HeaderStyle Width="700px" />
                                </asp:BoundField>
                               <asp:BoundField DataField="Health_number" HeaderText="Health Number" SortExpression="Health_number">
                                <HeaderStyle Font-Size="Smaller" HorizontalAlign="Justify" Width="300px" />
                                <ItemStyle HorizontalAlign="Justify" />
                                </asp:BoundField>
                               <asp:BoundField DataField="Patient_phone" HeaderText="Phone" SortExpression="Patient_phone">
                                <HeaderStyle HorizontalAlign="Justify" Width="300px" />
                                </asp:BoundField>
                            </Columns>
                             <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


                        </asp:GridView>
                             </div>       
            <center>
        <asp:Button ID="btNew" runat="server" Text="New" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btNew_Click"/>
        <asp:Button ID="btEdit" runat="server" Text="Edit" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Enabled="False" OnClick="btEdit_Click"/>
        <asp:Button ID="btDelete" runat="server" Text="Delete" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Enabled="False" OnClick="btDelete_Click"/>
        <asp:Button ID="btSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btSearch_Click"/>
        </center>
                    </asp:Panel>

                


               <asp:SqlDataSource ID="SqlDataSourceGridPatients" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID" 
                    InsertCommand="INSERT INTO [Patient] ([Patient_ID], [Patient_name], [Patient_username], [email], [Patient_address], [Postal_code], [Birth_date], [Gender], [Health_number],[Patient_phone]) VALUES (@Patient_ID, @Patient_name, @Patient_username, @email, @Patient_address, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_phone)" 
                    SelectCommand="SELECT Patient_ID, Patient_phone,Patient_name, Patient_username, email, Patient_address, Postal_code, Birth_date, Gender, Health_number FROM Patient WHERE (Patient_name LIKE '%' + @Patient_name + '%')" 
                    UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_username] = @Patient_username, [email] = @email,  [Patient_address] = @Patient_address, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [Gender] = @Gender, [Health_number] = @Health_number ,[Patient_phone]= @Patient_phone WHERE [Patient_ID] = @Patient_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Patient_ID" />
                        <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Patient_username" Type="String"></asp:Parameter>
                       <asp:Parameter Name="email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                        <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Health_number" Type="String"></asp:Parameter>
                         <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>

                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbSearchPatients" DefaultValue="%" Name="Patient_Name" PropertyName="Text" />

                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                        <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Health_number" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_username" Type="String"></asp:Parameter>
                        <asp:Parameter Name="email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>

                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:Panel ID="panelDeletePatient" runat="server" BackColor="#FFCC99" Visible="False">
                   <div style="margin: 1em; margin-left:50ex;">
            <b>Are you sure you want to remove this Patient?</b>
        </div>
        <div style="margin: 1em; margin-left:50ex;">
            <asp:Button ID="btConfirmDelete" runat="server" Text="Yes, remove." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btConfirmDelete_Click" />
            <asp:Button ID="btCancelDelete" runat="server" Text="No, cancel." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btCancelDelete_Click" />
        </div>
                </asp:Panel>


    
    <br />
    <br />
    <div style="margin-left:50ex">
                <asp:FormView ID="fvPatients" runat="server"  Width="500px" OnModeChanged="fvPatients_ModeChanged" OnItemDeleted="fvPatients_ItemDeleted" OnItemInserted="fvPatients_ItemInserted" OnItemUpdated="fvPatients_ItemUpdated" DataSourceID="SqlDataSourceDetailsPatient" DataKeyNames="Patient_ID">
                    <EditItemTemplate>
                        <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                        <table>

                            <tr>
                                <td><b>Health Number:</b></td>
                                <td>
                                    <asp:TextBox ID="healthNumberTextBox" runat="server" Text='<%# Bind("Health_Number") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHealthNumber" runat="server" ErrorMessage="Health Number is required." ControlToValidate="healthNumberTextBox" Display="Dynamic" ToolTip="Health Number is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorHealthNumber" runat="server" ErrorMessage="Invalid Health Number" ValidationExpression="[0-9]{9}" ControlToValidate="healthNumberTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                    </td>
                            </tr>
                            <tr>
                                <td><b>Name:</b></td>
                                <td>
                                    <asp:TextBox ID="patientNameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required." ControlToValidate="patientNameTextBox" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPatientName" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="patientNameTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                               <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("Patient_username") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="patientNameTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                              <tr>
                                <td><b>Email:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required." ControlToValidate="TextBoxEmail" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>

                                </td>
                            </tr>

                            <tr>
                                <td><b>Gender:</b></td>
                                <td>
                                    <asp:DropDownList ID="DropDownListGender" runat="server" DataTextField="Gender" DataValueField="Gender" SelectedValue='<%# Bind("Gender") %>'>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><b>Address:</b></td>
                                <td>
                                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' OnTextChanged="addressTextBox_TextChanged" />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Address is required." ToolTip="Address is required." Text="*" Display="Dynamic" ControlToValidate="addressTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
          </td>
                            </tr>
                            <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                    <asp:TextBox ID="postalCodeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="postalCodeTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                                     </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><b>Birthdate:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="TextBoxBirthDate" runat="server" Text='<%# Bind("Birth_date") %>' />

                                </td>
                                 <td>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatorBirthdate" runat="server" ErrorMessage="Invalid date must be (eg:aa.bb.cccc)" ValidationExpression="(\d{1,2}\.\d{1,2}\.\d{4})" ControlToValidate="TextBoxBirthDate" Display="Dynamic">*</asp:RegularExpressionValidator>

                                 </td>
                       
                            </tr>
                            </tr>
                            <tr>
                            <td><b>Phone:</b></td>
                                <td>
                                    <asp:TextBox ID="phoneText" runat="server" Text='<%# Bind("Patient_Phone") %>' />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone is required." ToolTip="Phone is required." Text="*" Display="Dynamic" ControlToValidate="phoneText" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="(9[1236]\d) ?(\d{3}) ?(\d{3})" ControlToValidate="phoneText" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                        </table>
                        
            <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Update"/>
            <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel" CausesValidation="False"/>
                    </EditItemTemplate>

                    <InsertItemTemplate>
                        <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                        <table>

                            <tr>
                                <td><b>Health Number:</b></td>
                                <td>
                                    <asp:TextBox ID="healthNumberTextBox" runat="server" Text='<%# Bind("Health_Number") %>' />
                                </td>
                                <td>
                        
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorHealthNumber" runat="server" ErrorMessage="Health Number is required." ControlToValidate="healthNumberTextBox" Display="Dynamic" ToolTip="Health Number is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorHealthNumber" runat="server" ErrorMessage="Invalid Health Number" ValidationExpression="[0-9]{9}" ControlToValidate="healthNumberTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                    </td>
                            </tr>
                            <tr>
                                <td><b>Patient Name:</b></td>
                                <td>
                                    <asp:TextBox ID="patientNameTextBox" runat="server" Text='<%# Bind("Patient_name") %>' />
                       
                               
                                     </td>
                                 <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required." ControlToValidate="patientNameTextBox" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidatorPatientName" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="patientNameTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>
                                 </td>
                            
                            </tr>

                             <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("Patient_username") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                              <tr>
                                <td><b>Email:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required." ControlToValidate="TextBoxEmail" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td><b>Gender:</b></td>
                                <td>
                                    <asp:DropDownList ID="DropDownListGender" runat="server" DataTextField="Gender" DataValueField="Gender" SelectedValue='<%# Bind("Gender") %>'>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><b>Address:</b></td>
                                <td>
                                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("Patient_address") %>' />
                                </td>
                               <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Address is required." ToolTip="Address is required." Text="*" Display="Dynamic" ControlToValidate="addressTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                   </td>
                        
                            </tr>
                            <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                    <asp:TextBox ID="postalCodeTextBox" runat="server" Text='<%# Bind("Postal_code") %>' />
                                </td>
                                <td>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="postalCodeTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                           <tr>
                                <td><b>Birthdate:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="TextBoxBirthDate" runat="server" Text='<%# Bind("Birth_date") %>' />

                                </td>
                                 <td>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatorBirthdate" runat="server" ErrorMessage="Invalid date must be (eg:aa.bb.cccc)" ValidationExpression="(\d{1,2}\.\d{1,2}\.\d{4})" ControlToValidate="TextBoxBirthDate" Display="Dynamic">*</asp:RegularExpressionValidator>

                                 </td>
                       
                            </tr>
                            <tr>
                             <td><b>Phone:</b></td>
                                <td>
                                    <asp:TextBox ID="phoneText" runat="server" Text='<%# Bind("Patient_Phone") %>' />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone is required." ToolTip="Phone is required." Text="*" Display="Dynamic" ControlToValidate="phoneText" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="(9[1236]\d) ?(\d{3}) ?(\d{3})" ControlToValidate="phoneText" Display="Dynamic">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                       <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Insert"/>
                      <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel" CausesValidation="False"/>
                    </InsertItemTemplate>

                    <ItemTemplate>
                        <table>
                            <tr>
                                <td><b>Patient Name:</b></td>
                                <td>
                                    <asp:Label ID="patientNameLabel" runat="server" Text='<%# Bind("Patient_name") %>' />
                                </td>
                            </tr>
                              <tr>
                                <td><b>Patient User Name:</b></td>
                                <td>
                                    <asp:Label ID="patientUserNameLabel" runat="server" Text='<%# Bind("Patient_username") %>' />
                                </td>
                            </tr>
                                 <tr>
                                <td><b>Patient Email:</b></td>
                                <td>
                                    <asp:Label ID="patientEmailLabel" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Health Number:</b></td>
                                <td>
                                    <asp:Label ID="healthNumberLabel" runat="server" Text='<%# Bind("Health_Number") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Gender:</b></td>
                                <td>
                                    <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Address:</b></td>
                                <td>
                                    <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("Patient_address") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                    <asp:Label ID="postalCodeLabel" runat="server" Text='<%# Bind("Postal_code") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Birth Date:</b></td>
                                <td>
                                    <asp:Label ID="birthDateLabel" runat="server" Text='<%# Bind("Birth_date") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>

                </asp:FormView>

 <asp:SqlDataSource ID="SqlDataSourceDetailsPatient" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
                 DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID"
                    InsertCommand="INSERT INTO [Patient] ([Patient_name], [Patient_username], [Patient_address], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_phone], [email]) VALUES (@Patient_name, @Patient_username, @Patient_address, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_phone, @email)"
                    SelectCommand="SELECT Patient_ID, Patient_name, Patient_username, Patient_address, Postal_code, Birth_date, Gender, Health_number, Patient_phone, email FROM Patient WHERE (Patient_ID = @Patient_ID)" 
                    UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_username] = @Patient_username, [email] = @email, [Patient_address] = @Patient_address, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [Gender] = @Gender, [Health_number]=@Health_number,[Patient_phone]=@Patient_phone  WHERE [Patient_ID] = @Patient_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                          <asp:Parameter Name="Patient_username" Type="String"></asp:Parameter>
                       <asp:Parameter Name="email" Type="String"></asp:Parameter>
                         <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                        <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                        <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Health_number" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gridViewPatients" Name="Patient_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Patient_name" Type="String"></asp:Parameter>
                          <asp:Parameter Name="Patient_username" Type="String"></asp:Parameter>
                       <asp:Parameter Name="email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Postal_code" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_phone" Type="String"></asp:Parameter>

                        <asp:Parameter DbType="Date" Name="Birth_date"></asp:Parameter>
                        <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Health_number" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Patient_ID" Type="Int32"></asp:Parameter>

                    </UpdateParameters>
                </asp:SqlDataSource>
               
            </div>
 

</asp:Content>

