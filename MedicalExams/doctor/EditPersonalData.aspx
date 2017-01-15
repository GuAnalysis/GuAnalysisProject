<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditPersonalData.aspx.cs" Inherits="doctor_EditPersonalData" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="margin-left:60ex" >
        <h2><%: Title %>Personal Data</h2>
        <br />
        <br />
        <br />
     
        <asp:FormView ID="FormView1" runat="server" style="margin-left:0ex" DataKeyNames="Doctor_ID" DataSourceID="SqlDataSourceDoctors">
            <EditItemTemplate>
                 <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server"/>

            <table>
                <tr>
                    <td><b>Name</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Text='<%# Bind("Doctor_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Speciality</b></td>
                    <td>
                        <asp:DropDownList ID="ddlSpeciality" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" SelectedValue='<%# Bind("Speciality") %>'></asp:DropDownList> 
                                                        <asp:SqlDataSource ID="SqlDataSourceSpeciality" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT [Speciality] FROM [Doctor]"></asp:SqlDataSource>

                    </td>
                </tr>
                <tr>
                    <td><b>Phone</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Text='<%# Bind("Doctor_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Text='<%# Bind("Doctor_mail") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                           
                 <tr>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                        <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                    </tr>
            </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                
                <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server"/>

            <table>
                <tr>
                    <td><b>Name</b></td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Text='<%# Bind("Doctor_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="tbName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Speciality</b></td>
                    <td>
                        <asp:DropDownList ID="ddlSpeciality" runat="server" DataSourceID="SqlDataSourceSpeciality" DataTextField="Speciality" DataValueField="Speciality" SelectedValue='<%# Bind("Speciality") %>' Height="35px"></asp:DropDownList> 
                    </td>
                </tr>
                <tr>
                    <td><b>Phone</b></td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Text='<%# Bind("Doctor_phone") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone number is required" Display="Dynamic" ControlToValidate="tbPhone">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Phone number cannot be consisted of letters!" Operator="DataTypeCheck" SetFocusOnError="True" ToolTip="Phone number cannot be consisted of letters!" Type="Double" ControlToValidate="tbPhone" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Text='<%# Bind("Doctor_mail") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="E-mail is required" Display="Dynamic" ControlToValidate="tbEmail">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid e-mail" ClientIDMode="Inherit" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:TextBox ID="TextBoxuserName" runat="server" Text='<%# Bind("username") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" />
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="TextBoxuserName" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid name must be string" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$" ControlToValidate="TextBoxuserName" Display="Dynamic">*</asp:RegularExpressionValidator>

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
                    <td><b>Name</b></td>
                    <td>
                        <asp:Label ID="LabelName" runat="server" Text='<%# Bind("Doctor_name") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><b>Speciality</b></td>
                    <td>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Speciality") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Phone</b></td>
                    <td>
                        <asp:Label ID="LabelPhone" runat="server" Text='<%# Bind("Doctor_phone") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><b>E-mail</b></td>
                    <td>
                        <asp:Label ID="LabelEmail" runat="server" Text='<%# Bind("Doctor_mail") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                                <td><b>User Name:</b></td>
                                <td>
                                    <asp:Label ID="doctortUserNameLabel" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
  
                    <tr>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton></td>
                    </tr>

                </table>
                <asp:Button ID="ButtonExam" runat="server" Text="Schedule Exam" BackColor="#5D7B9D" Font-Size="Smaller" Font-Underline="False" Visible="True" Width="10em" OnClick="ButtonExam_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" />
            </ItemTemplate>
        </asp:FormView>
    </div>
        
       <asp:SqlDataSource ID="SqlDataSourceDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
     
            DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = @Doctor_ID"
            InsertCommand="INSERT INTO [Doctor] ( [Doctor_name], [Speciality], [Doctor_phone], [Doctor_mail], [username]) VALUES ( @Doctor_name, @Speciality, @Doctor_phone, @Doctor_mail, @username)"
            SelectCommand="SELECT Doctor_ID, Doctor_name, Speciality, Patient_ID, Doctor_phone, username, Doctor_mail FROM Doctor WHERE (username = @username)"
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
                <asp:Parameter Name="username" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Doctor_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Speciality" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="Doctor_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
            </asp:SqlDataSource>
</asp:Content>

