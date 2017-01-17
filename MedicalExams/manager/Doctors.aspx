<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="Doctors" %>

<asp:Content ID="ContentDoctors" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />

    <center>
        <header id="hDoctors" class="alt">
        <h2><%: Title %>Doctor Panel</h2>
        </header>
     </center>

    <asp:Panel ID="panelInfo" runat="server" Visible="False">
        <div style="margin:1em; margin-left:65ex">
            <asp:Label ID="labelInfo" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        </div>
        <div style="margin:1em; margin-left:70ex">
            <asp:Button ID="btClose" runat="server" Text="OK" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" Font-Underline="False" OnClick="btClose_Click" style="left: -3px; top: 2px" />
        </div>
    </asp:Panel>

    <asp:Panel ID="panelGridDoctors" runat="server">

        <div style="margin-left:21ex">
            <asp:Panel ID="panelSearch" runat="server" Height="150px" Width="300px" Visible="False">
                <table>
                    <tr>
                        <td style="width: 70px;"><b>Name:</b></td>
                        <td style="width: 100px;">
                            <asp:TextBox ID="tbDoctorName" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 70px"><b>Speciality:</b></td>
                            <td style="width: 100px;">
                                <asp:DropDownList ID="ddlSpeciality" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Names="Arial" Font-Size="Medium" >
                                    <asp:ListItem Value="%">Show All</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceSpeciality" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT [Speciality] FROM [Doctor]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px"/></td>
                        <td><asp:Button ID="btCloseSearch" runat="server" Text="Search and close" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" Width="170px" BorderWidth="1px" OnClick="btCloseSearch_Click"/></td>
                        <td><asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" OnClick="btClearSearch_Click"/></td>
                    </tr>
                </table>
                
            </asp:Panel>
        </div>

        <br />
        <br />

        <div style="margin-left:40ex; margin-right:auto; width:900px">
        <asp:GridView ID="gridviewDoctors" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Doctor_ID" DataSourceID="SqlDataSourceGridDoctors" ForeColor="#333333" GridLines="None" AllowSorting="True" OnSelectedIndexChanged="gridviewDoctors_SelectedIndexChanged" style="margin-right: 0">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="&gt;" ShowSelectButton="True">
                <ControlStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="X-Small" Height="35px" Width="40px" />
                <HeaderStyle Width="50px" />
                </asp:CommandField>
                <asp:BoundField DataField="Doctor_name" HeaderText="Name" SortExpression="Doctor_name" />
                <asp:BoundField DataField="Speciality" HeaderText="Speciality" SortExpression="Speciality" />
                <asp:BoundField DataField="Doctor_phone" HeaderText="Phone" SortExpression="Doctor_phone" />
                <asp:BoundField DataField="Doctor_mail" HeaderText="E-mail" SortExpression="Doctor_mail" />
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
        <asp:Button ID="btEdit" runat="server" Text="Edit" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btEdit_Click" Enabled ="false"/>
        <asp:Button ID="btDelete" runat="server" Text="Delete" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btDelete_Click" Enabled ="false"/>
        <asp:Button ID="btSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Names="Arial" Font-Size="Small" Height="50px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btSearch_Click"/>
        </center>

    </asp:Panel>
 
    <asp:SqlDataSource ID="SqlDataSourceGridDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
            SelectCommand="SELECT Doctor_ID, Doctor_name, Speciality, Patient_ID, Doctor_phone, Doctor_mail FROM Doctor WHERE (Doctor_name LIKE '%' + @Doctor_name + '%') AND (Speciality LIKE @Speciality)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tbDoctorName" DefaultValue="%" Name="Doctor_name" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddlSpeciality" DefaultValue="%" Name="Speciality" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

  
    <asp:Panel ID="panelRemoveDoctor" runat="server" BackColor="#FFCC99" Visible="False">
            <center>
            <b>Are you sure you want to remove this Doctor?</b>
            </center>
        <div style="margin: 1em; margin-left:67ex;">
            <asp:Button ID="btConfirmRemove" runat="server" Text="Yes, remove." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btConfirmRemove_Click" style="left: -2px; top: 0px" />
            <asp:Button ID="btCancelRemove" runat="server" Text="No, cancel." BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btCancelRemove_Click" style="left: 2px; top: -1px" />
        </div>
    </asp:Panel>

    <br />
    <br />
    <div style="margin-left:50ex">
    <asp:FormView ID="fvDoctor" runat="server" DataSourceID="SqlDataSourceDetailsDoctors" Width="500px" OnItemDeleted="fvDoctor_ItemDeleted" OnItemInserted="fvDoctor_ItemInserted" OnItemUpdated="fvDoctor_ItemUpdated" OnModeChanged="fvDoctor_ModeChanged" DataKeyNames="Doctor_ID">
        <EditItemTemplate>
            <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server" BackColor="#FF9999"/>

            <table>
                <tr>
                    <td><b>Name:</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Text='<%# Bind("Doctor_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Speciality:</b></td>
                    <td>
                        <asp:DropDownList ID="ddlSpeciality" runat="server" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" SelectedValue='<%# Bind("Speciality") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:DropDownList> 
                    </td>
                </tr>
                <tr>
                    <td><b>Phone:</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Text='<%# Bind("Doctor_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td><b>E-mail:</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Text='<%# Bind("Doctor_mail") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                           <%-- <tr>
                                <td><b>Username:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>

                                </td>
                            </tr>--%>
            </table>

            <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Update"/>
            <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel"/>
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server" BackColor="#FF9999"/>

            <table>
                <tr>
                    <td><b>Name:</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Text='<%# Bind("Doctor_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Speciality:</b></td>
                    <td>
                        <asp:DropDownList ID="ddlSpeciality" runat="server" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" SelectedValue='<%# Bind("Speciality") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:DropDownList> 
                    </td>
                </tr>
                <tr>
                    <td><b>Phone:</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Text='<%# Bind("Doctor_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone number is required" Display="Dynamic" ControlToValidate="tbPhone">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>E-mail:</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Text='<%# Bind("Doctor_mail") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="E-mail is required" Display="Dynamic" ControlToValidate="tbEmail">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                                <td><b>Username:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>--%>

                                </td>
                            </tr>
            </table>

            <asp:Button ID="btSave" runat="server" Text="Save" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Insert"/>
            <asp:Button ID="btCancel" runat="server" Text="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" CommandName="Cancel" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server" BackColor="#FF9999"/>

            <table>
                <tr>
                    <td><b>Name:</b></td>
                    <td>
                        <asp:Label ID="LabelName" runat="server" Text='<%# Bind("Doctor_name") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><b>Speciality:</b></td>
                    <td>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Speciality") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Phone:</b></td>
                    <td>
                        <asp:Label ID="LabelPhone" runat="server" Text='<%# Bind("Doctor_phone") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><b>E-mail:</b></td>
                    <td>
                        <asp:Label ID="LabelEmail" runat="server" Text='<%# Bind("Doctor_mail") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                                <td><b>Username:</b></td>
                                <td>
                                    <asp:Label ID="doctortUserNameLabel" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
            </table>

        </ItemTemplate>
    </asp:FormView>


          
        <asp:SqlDataSource ID="SqlDataSourceDetailsDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
     
            DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = @Doctor_ID"
            InsertCommand="INSERT INTO [Doctor] ( [Doctor_name], [Speciality], [Doctor_phone], [Doctor_mail], [username]) VALUES ( @Doctor_name, @Speciality, @Doctor_phone, @Doctor_mail, @username)"
            SelectCommand="SELECT Doctor_ID, Doctor_name, Speciality, Patient_ID, Doctor_phone, username, Doctor_mail FROM Doctor WHERE (Doctor_ID = @Doctor_ID)"
            UpdateCommand="UPDATE [Doctor] SET [Doctor_name] = @Doctor_name, [Speciality] = @Speciality, [Doctor_phone] = @Doctor_phone, [Doctor_mail] = @Doctor_mail WHERE [Doctor_ID] = @Doctor_ID">
            <DeleteParameters>
                <asp:Parameter Name="Doctor_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Doctor_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Speciality" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="username" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="gridviewDoctors" Name="Doctor_ID" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Doctor_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Speciality" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
            </asp:SqlDataSource>
        <br />


          
    </div>

    

</asp:Content>

