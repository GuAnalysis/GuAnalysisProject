<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditPersonalData.aspx.cs" Inherits="nurse_EditPersonalData" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="margin-left:60ex" >
        <h2><%: Title %>Personal Data</h2>
        <br />
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Nurse_ID" DataSourceID="SqlDataSourceNurses">
            <EditItemTemplate>
                <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                        <table>

                            <tr>
                                <td><b>Nurse Name:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="nurseNameTextBox" runat="server" Text='<%# Bind("Nurse_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"  />

                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required." ControlToValidate="nurseNameTextBox" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="nurseNameTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
<<<<<<< HEAD
                             <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
=======
                            
>>>>>>> origin/master
                              <tr>
                                <td><b>Email:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("email") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required." ControlToValidate="TextBoxEmail" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>

                         
                            <tr>
                                <td><b>Address:</b></td>
                                <td>
                                  
                                    <asp:TextBox ID="TextBoxAddress" runat="server" Text='<%# Bind("Nurse_address") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                       
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdress" runat="server" ErrorMessage="Address is required." ControlToValidate="TextBoxAddress" Display="Dynamic" ToolTip="Address is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                            </tr>
                             <tr>
                                <td><b>Phone:</b></td>
                                <td>
                                    
                                    <asp:TextBox ID="TextBoxPhone" runat="server" Text='<%# Bind("Nurse_phone") %>'  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                       
                              <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone number is required." ControlToValidate="TextBoxPhone" Display="Dynamic" ToolTip="Phone number is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ErrorMessage="Invalid Phone Number " ValidationExpression="(9[1236]\d) ?(\d{3}) ?(\d{3})" ControlToValidate="TextBoxPhone" Display="Dynamic">*</asp:RegularExpressionValidator>

                                   </td>
                            </tr>
                             <tr>
                                <td><b>Birthdate:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="TextBoxBirthDate" runat="server" Text='<%# Bind("Nurse_Bithdate") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                                 <td>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatorBirthdate" runat="server" ErrorMessage="Invalid date must be (eg:aa.bb.cccc)" ValidationExpression="(\d{1,2}\.\d{1,2}\.\d{4})" ControlToValidate="TextBoxBirthDate" Display="Dynamic" Text='*'></asp:RegularExpressionValidator>

                                 </td>
                       
                            </tr>
                             <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="TextBoxPostal_code" runat="server" Text='<%# Bind("Postal_Code") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                                 <td>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="TextBoxPostal_code" Display="Dynamic">*</asp:RegularExpressionValidator>

                                 </td>
                       
                            </tr>
                 <tr>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                        <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                    </tr>
            </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                
                 <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                        <table>


                            <tr>
                                <td><b>Nurse Name:</b></td>
                                <td>
                                    <asp:TextBox ID="nurseNameTextBox" runat="server" Text='<%# Bind("Nurse_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                               <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required." ControlToValidate="nurseNameTextBox" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="nurseNameTextBox" Display="Dynamic">*</asp:RegularExpressionValidator>

                               </td>
                            </tr>
                               <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>
                              <tr>
                                <td><b>Email:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("email") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required." ControlToValidate="TextBoxEmail" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>

                            <tr>
                                <td><b>Nurse Address:</b></td>
                                <td>
                                  
                                    <asp:TextBox ID="TextBoxAddress" runat="server" Text='<%# Bind("Nurse_address") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                       <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdress" runat="server" ErrorMessage="Address is required." ControlToValidate="TextBoxAddress" Display="Dynamic" ToolTip="Address is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                            </tr>
                             <tr>
                                <td><b>Nurse Phone:</b></td>
                                <td>
                               
                                    <asp:TextBox ID="TextBoxPhone" runat="server" Text='<%# Bind("Nurse_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                       <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone number is required." ControlToValidate="TextBoxPhone" Display="Dynamic" ToolTip="Phone number is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="(9[1236]\d) ?(\d{3}) ?(\d{3})" ControlToValidate="TextBoxPhone" Display="Dynamic">*</asp:RegularExpressionValidator>

                       </td>
                            </tr>
                             <tr>
                                <td><b>Nurse Birthdate:</b></td>
                                <td>
                               
                                    <asp:TextBox ID="TextBoxBirthDate" runat="server" Text='<%# Bind("Nurse_Bithdate", "{0:d}") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                                 <td>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidatorBirthdate" runat="server" ErrorMessage="Invalid date must be (eg:aa.bb.cccc)" ValidationExpression="(\d{1,2}\.\d{1,2}\.\d{4})" ControlToValidate="TextBoxBirthDate" Display="Dynamic">*</asp:RegularExpressionValidator>

                                 </td>
                            </tr>
                            <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="TextBoxPostal_code" runat="server" Text='<%# Bind("Postal_Code") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

                                </td>
                                <td>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ErrorMessage="Invalid postal code must be (eg:1234-546)" ValidationExpression="[0-9]{4}-[0-9]{3}" ControlToValidate="TextBoxPostal_code" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                       
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
                            <td><b>Nurse Name:</b></td>
                            <td>
                           <asp:Label ID="nurseNameLabel" runat="server" Text='<%# Bind("Nurse_name") %>' />
                            </td>
                            
                        </tr>
                         <tr>
                                <td><b> User Name:</b></td>
                                <td>
                                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
                                 <tr>
                                <td><b>Nurse Email:</b></td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                            </tr>
                        <tr>
                            <td><b>Nurse Address:</b></td>
                            <td>
                           <asp:Label ID="nurseadresLabel" runat="server" Text='<%# Bind("Nurse_address") %>' />
                            </td>
                             
                        </tr>
                        <tr>
                            <td><b>Nurse Phone:</b></td>
                            <td>
                           <asp:Label ID="LabelPhone" runat="server" Text='<%# Bind("Nurse_phone") %>' />
                            </td>
                              
                        </tr>
                        <tr>
                            <td><b>Nurse Birthdate:</b></td>
                            <td>
                           <asp:Label ID="LabelDate" runat="server" Text='<%# Bind("Nurse_Bithdate", "{0:d}") %>' />
                            </td>
                        </tr>
                       <tr>
                                <td><b>Postal Code:</b></td>
                                <td>
                                    <asp:Label ID="LabelCode" runat="server" Text='<%# Bind("Postal_Code") %>' />
                                </td>
                            </tr> 
                    
                    <tr>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton></td>
                    </tr>
                    
                    <table>
            </ItemTemplate>  
        </asp:FormView>
    </div>
        
       <asp:SqlDataSource ID="SqlDataSourceNurses" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
                   DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID"
                    InsertCommand="INSERT INTO [Nurse] ([Nurse_name],[Nurse_address],[Nurse_phone],[Nurse_Bithdate],[Postal_Code],[username], [email]) VALUES (@Nurse_name,@Nurse_address,@Nurse_phone,@Nurse_Bithdate,@Postal_Code,@username,@email)"
                    SelectCommand="SELECT Nurse_ID, Nurse_name, Nurse_address, Nurse_phone, Nurse_Bithdate, Postal_Code, username, email FROM Nurse WHERE (username = @username)" 
                    UpdateCommand="UPDATE [Nurse] SET [Nurse_name] = @Nurse_name,[Nurse_address] = @Nurse_address,[Nurse_phone] = @Nurse_phone,[Nurse_Bithdate] = @Nurse_Bithdate,[Postal_Code]=@Postal_Code ,[username]=@username, [email]=@email WHERE [Nurse_ID] = @Nurse_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Nurse_ID" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nurse_name" Type="String" />
                        <asp:Parameter Name="Nurse_address" Type="String" />
                        <asp:Parameter Name="Nurse_phone" Type="String" />
                        <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                        <asp:Parameter Name="Postal_Code" Type="String" />
                         <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="username" />
                    </SelectParameters>
                      <UpdateParameters>
                        <asp:Parameter Name="Nurse_name" Type="String" />
                         <asp:Parameter Name="Nurse_address"  Type="String" />
                         <asp:Parameter Name="Nurse_phone" Type="String" />
                        <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                          <asp:Parameter Name="Postal_Code" Type="String" />
                           <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Nurse_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>

