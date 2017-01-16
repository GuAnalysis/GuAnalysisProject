<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nurse.aspx.cs" Inherits="Nurse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


      <br>  
    
    <center>
        <header id="hNurses" class="alt">
        <h2><%: Title %>Nurse Panel</h2>
        </header>
     </center>
    
            <asp:Panel ID="panelInfo" runat="server" Visible="false">
                    <div style="margin:1em; margin-left:65ex">
            <asp:Label ID="labelInfo" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        </div>
                    <div style="margin:1em;margin-left:70ex">
            <asp:Button ID="btClose" runat="server" Text="OK" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" Font-Underline="False" OnClick="btClose_Click" style="left: -2px; top: 1px" />
        </div>
                </asp:Panel>

                <asp:Panel ID="panelGridNurses" runat="server">
                    <div style="margin-left:21ex">
                        <asp:Panel ID="panelSearch" runat="server" Height="150px" Width="300px" Visible="False">
                            <table>
                                <tr>
                                   <td style="width: 150px;"><b>Nurse Name:</b></td>
                                      <td style="width: 100px;">
                                   
                                        <asp:TextBox ID="tbSearchNurses" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                              <table>
                    <tr>
                        <td><asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" style="left: -2px; top: -1px" /></td>
                        <td><asp:Button ID="btCloseSearch" runat="server" Text="Search and close" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" style="left: 2px; top: -1px; width: 155px;" OnClick="btCloseSearch_Click" /></td>
                        <td><asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" style="left: 5px; top: -2px; width: 122px; margin-top: 0;" BorderWidth="1px" OnClick="btClearSearch_Click" /></td>
                    </tr>
                </table>
                        </asp:Panel>
                    </div>
                    <br/>
                    <br/>
                    
        <div style="margin-left:40ex; margin-right:auto; width:900px">
                    <asp:GridView ID="gridViewNurses"  runat="server" DataKeyNames="Nurse_ID" DataSourceID="SqlDataSourceGridNurses" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" AllowSorting="True"   EmptyDataText="There are no nurse that meet your search criteria."  OnSelectedIndexChanged="gridViewNurses_SelectedIndexChanged" >

                        <AlternatingRowStyle BackColor="#F7F7F7" />

                        <Columns>

                            <asp:CommandField ButtonType="Button" SelectText="&gt;   " ShowSelectButton="True">
                <ControlStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="X-Small" Height="35px" Width="40px" />
                <ItemStyle VerticalAlign="Middle" />
                </asp:CommandField>
                            <asp:BoundField DataField="Nurse_name" HeaderText="Name" SortExpression="Nurse_name" />
                            <asp:BoundField DataField="Nurse_phone" HeaderText="Phone Number" SortExpression="Nurse_phone" />
                            <asp:BoundField DataField="Nurse_address" HeaderText="Address" SortExpression="Nurse_address" />

                        </Columns>

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

                <asp:SqlDataSource ID="SqlDataSourceGridNurses" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
                    DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID"
                    InsertCommand="INSERT INTO [Nurse] ([Nurse_ID],[Nurse_name],[Nurse_address],[Nurse_phone],[Nurse_Bithdate],[Postal_Code], [username], [email]) VALUES (@Nurse_name,@Nurse_address,@Nurse_phone,@Nurse_Bithdate,@Postal_Code,@username,@email)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>"
                    SelectCommand="SELECT [Nurse_ID], [Nurse_name],  [username], [email],[Nurse_address], [Nurse_phone],[Nurse_Bithdate],[Postal_Code] FROM Nurse WHERE (Nurse_name LIKE '%' + @Nurse_name + '%')" 
                    UpdateCommand="UPDATE [Nurse] SET [Nurse_name] = @Nurse_name,[Nurse_address] = @Nurse_address,[Nurse_phone] = @Nurse_phone,[Nurse_Bithdate] = @Nurse_Bithdate,[Postal_Code]=@Postal_Code, [username]=@username, [email]=@email WHERE [Nurse_ID] = @Nurse_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Nurse_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Nurse_address" Type="String" />
                        <asp:Parameter Name="Nurse_phone"  Type="String" />
                        <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                        <asp:Parameter Name="Postal_Code" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbSearchNurses" DefaultValue="%" Name="Nurse_name" PropertyName="Text" />

                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nurse_name" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Nurse_ID" Type="Int32" />
                         <asp:Parameter Name="Nurse_address"  Type="String" />
                         <asp:Parameter Name="Nurse_phone"  Type="String" />
                        <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                         <asp:Parameter Name="Postal_Code" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:Panel ID="panelDeleteNurse" runat="server" BackColor="#FFCC99" Visible="False">
             <center>
            <b>Are you sure you want to remove this Nurse?</b>
            </center>
        <div style="margin: 1em; margin-left:67ex;">
            <asp:Button ID="btConfirmDelete" runat="server" Text="Yes, remove." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btConfirmDelete_Click" style="left: -1px; top: -2px" />
            <asp:Button ID="btCancelDelete" runat="server" Text="No, cancel." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btCancelDelete_Click" style="left: 1px; top: -2px" />
        </div>
                </asp:Panel>
        <div style="margin-left:50ex">

                <asp:FormView ID="fvNurses" runat="server" Width="500px" OnModeChanged="fvNurses_ModeChanged" OnItemDeleted="fvNurses_ItemDeleted" OnItemInserted="fvNurses_ItemInserted" OnItemUpdated="fvNurses_ItemUpdated" DataSourceID="SqlDataSourceDetailsNurses" DataKeyNames="Nurse_ID">
                    <EditItemTemplate>
                        <asp:ValidationSummary ID="ValidationSummaryPatients" runat="server" BackColor="#FF9999" ForeColor="Maroon" />

                        <table>

                            <tr>
                                <td><b>Nurse Name:</b></td>
                                <td>
                                 
                                    <asp:TextBox ID="nurseNameTextBox" runat="server" Text='<%# Bind("Nurse_name") %>'  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>

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
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("email") %>'  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
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
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatorBirthdate" runat="server" ErrorMessage="Invalid date must be (eg:aa.bb.cccc)" ValidationExpression="(\d{1,2}\.\d{1,2}\.\d{4})" ControlToValidate="TextBoxBirthDate" Display="Dynamic" Text='<%# Eval("Nurse_Bithdate", "{0:d}") %>'></asp:RegularExpressionValidator>

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
                          </table>
            <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Update"/>
            <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel" CausesValidation="False" />
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
                        </table>
                         <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Insert"/>
                      <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel" CausesValidation="False"/>
                    </InsertItemTemplate>
                    <ItemTemplate>
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

                    </ItemTemplate>

                </asp:FormView>
            </div>
                <asp:SqlDataSource ID="SqlDataSourceDetailsNurses" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
                   DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID"
                    InsertCommand="INSERT INTO [Nurse] ([Nurse_name],[Nurse_address],[Nurse_phone],[Nurse_Bithdate],[Postal_Code],[username], [email]) VALUES (@Nurse_name,@Nurse_address,@Nurse_phone,@Nurse_Bithdate,@Postal_Code,@username,@email)"
                    SelectCommand="SELECT [Nurse_ID], [Nurse_name], [Nurse_address], [Nurse_phone],[Nurse_Bithdate],[Postal_Code],[username], [email] FROM Nurse WHERE (Nurse_ID=@Nurse_ID)" 
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
                        <asp:ControlParameter ControlID="gridViewNurses" Name="Nurse_ID" PropertyName="SelectedValue" />
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

