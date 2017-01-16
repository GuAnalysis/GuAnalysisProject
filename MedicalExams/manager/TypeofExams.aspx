<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TypeofExams.aspx.cs" Inherits="TypeofExams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <center>
<<<<<<< HEAD
            <header id="hTypeOfExams" class="alt">
                <h2><%: Title %>Exams</h2>
            </header>
=======
        <header id="hExam" class="alt">
            <h2><%: Title %>Exam Panel</h2>
        </header>
>>>>>>> origin/master
        </center>

        <br />

        <asp:Panel ID="panelInfo" runat="server" Visible="false">
            <div style="margin: 1em; margin-left:65ex">
                <asp:Label ID="LabelInfo" runat="server"></asp:Label>
            </div>

            <div style="margin-bottom: 1ex; margin-left:70ex">
                <asp:Button ID="btClose" runat="server" Text="OK" BackColor="#5D7B9D" Font-Size="Small" OnClick="btClose_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="left: -2px; top: 0px" Font-Names="Arial" />
            </div>
        </asp:Panel>

    <div style="margin-left: 30ex; width: 1000px">
        <asp:Panel ID="PanelGridExam" runat="server">

            <div>
                <asp:Panel ID="PanelSearchExam" runat="server" Visible="false" HorizontalAlign="Justify">

                    <table>
                        <tr>
                            <td style="width:100px; height: 35px;"><b>Exam type:</b></td>
                            <td style="width: 200px; height: 35px;">
                                <asp:DropDownList ID="ddlSearchTypeOfExam" runat="server"
                                    DataSourceID="SqlDataSourceType"
                                    DataTextField="Exam_type"
                                    DataValueField="Exam_type"
                                    AppendDataBoundItems="true" Height="35px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                                    <asp:ListItem Value="%">Show all</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceType" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT * FROM [ExamType]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100px; height:35px"><b>Exam:</b></td>
                            <td style="width: 200px;">
                                <asp:TextBox ID="tbSearchExam" runat="server" Height="35px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    <table>
                        <tr>
                            <td><asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Small" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" style="left: -1px; top: -1px"/></td>
                            <td><asp:Button ID="btCloseSearch" runat="server" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Small" OnClick="btCloseSearch_Click" Text="Search and close" Width="170px" style="left: -70px;"/></td>
                            <td><asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" Font-Size="Small" OnClick="btClearSearch_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" style="left: -171px;"/></td>
                        </tr>
                    </table>

                </asp:Panel>
            </div>

            <br />

            <asp:GridView ID="GridViewExam" runat="server" AutoGenerateColumns="False"
                DataKeyNames="Exam_ID" DataSourceID="SqlDataSourceTypeOfExam"
                EmptyDataText="There are no exams to display."
                CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True"
                AllowSorting="True" BorderColor="#003366" OnSelectedIndexChanged="GridViewExam_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" BorderColor="#003366" BorderStyle="Solid" />

                <Columns>
                    <asp:CommandField SelectText="&gt;" ShowSelectButton="True" ButtonType="Button">
                        <ControlStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" Height="35px" Width="40px" />
                        <ItemStyle ForeColor="#003366" HorizontalAlign="Center" Width="5%" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="Exam_Name" HeaderText="Exam Name" SortExpression="Exam_Name">
                        <ItemStyle HorizontalAlign="Justify" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Exam_type" HeaderText="Type" SortExpression="Exam_type" />
                    <asp:BoundField DataField="Price" HeaderText="Price(€)" SortExpression="Price" />
                </Columns>
                <EditRowStyle BackColor="#6666FF" BorderColor="#003366" BorderStyle="Solid" />
                <EmptyDataRowStyle ForeColor="#003366" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Solid" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Solid" />
                <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Solid" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="#003366" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

            <center>
            <asp:Button ID="btNew" runat="server" Text="New" BackColor="#5D7B9D" Font-Size="Small" OnClick="btNew_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="left: -1px; top: 5px" Height="50px" Width="100px"/>
            <asp:Button ID="btEdit" runat="server" Text="Edit" Enabled="False" BackColor="#5D7B9D" Font-Size="Small" OnClick="btEdit_Click1" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="left: 3px; top: 4px" Height="50px" Width="100px"/>
            <asp:Button ID="btDelete" runat="server" Text="Delete" Enabled="False" BackColor="#5D7B9D" Font-Size="Small" OnClick="btDelete_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="left: 6px; top: 5px" Height="50px" Width="100px"/>
            <asp:Button ID="btSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Small" OnClick="btSearch_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="left: 8px; top: 6px" Height="50px" Width="100px"/>
            </center>

            <br />
            <br />

        </asp:Panel>
        </div>

        <asp:SqlDataSource ID="SqlDataSourceTypeOfExam" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
            SelectCommand="SELECT Exam.Exam_ID, Exam.ExamType_ID, Exam.Exam_Name, Exam.Price, Exam.Fasting, Exam.Smoke, Exam.Alcoholic_Drinks, ExamType.Exam_type AS Exam_Type FROM Exam INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID WHERE (Exam.Exam_Name LIKE '%' + @Exam_Name + '%') AND (ExamType.Exam_type LIKE @Exam_Type)">

            <SelectParameters>
                <asp:ControlParameter ControlID="tbSearchExam" DefaultValue="%" Name="Exam_Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlSearchTypeOfExam" DefaultValue="%" Name="Exam_Type" PropertyName="SelectedValue" />
            </SelectParameters>

        </asp:SqlDataSource>

        <asp:Panel ID="PanelDeleteExam" runat="server" BackColor="#FFCC99" Visible="false">
            <center>
                <b>Are you sure you want to delete the exam?</b>
            </center>
            <div style="margin: 1em; margin-left:67ex;">
                <asp:Button ID="btConfirmDelete" runat="server" Text="Yes, remove." BackColor="#5D7B9D" Font-Size="Small" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" OnClick="btConfirmDelete_Click" style="left: -1px; top: -1px" />
                <asp:Button ID="btCanceldelete" runat="server" Text="No, cancel." BackColor="#5D7B9D" Font-Size="Small" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" OnClick="btCanceldelete_Click" style="left: 1px; top: -2px" />
            </div>

        </asp:Panel>

        <div style="margin-left:50ex">
        <asp:FormView ID="FormViewExam" runat="server" DataKeyNames="Exam_ID"
            DataSourceID="SqlDataSourceExamDetails" OnItemDeleted="FormViewExam_ItemDeleted"
            OnItemInserted="FormViewExam_ItemInserted" OnItemUpdated="FormViewExam_ItemUpdated"
            OnModeChanged="FormViewExam_ModeChanged">
            <EditItemTemplate>
                <asp:ValidationSummary ID="ValidationSummaryExam" runat="server" />
                <table>

                    <tr>
                        <td><b>Exam name:</b></td>
                        <td>
                            <asp:TextBox ID="ExamNameTextBox" runat="server" Text='<%# Bind("Exam_Name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Exam name is required." ControlToValidate="ExamNameTextBox" Display="Dynamic" ToolTip="." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Exam type:</b></td>
                        <td>

                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSourceType" DataTextField="Exam_Type" DataValueField="ExamType_ID" SelectedValue='<%# Bind("ExamType_ID") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorExamType" runat="server" ErrorMessage="Price is required." ToolTip="Exam type is required." Text="*" Display="Dynamic" ControlToValidate="DropDownList1" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>

                        <td>&nbsp;</td>
                    </tr>
                    <caption>
                        <br />
                        </tr>
                        <tr>
                            <td><b>Price:</b></td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="PriceTextBox" Display="Dynamic" ErrorMessage="Price is required." SetFocusOnError="True" Text="*" ToolTip="Price is required.">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="priceTextBox" Display="Dynamic" ErrorMessage="Price must be greater than 0." Operator="GreaterThan" SetFocusOnError="True" ToolTip="Price must be greater than 0." Type="Double" ValueToCompare="0">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Fasting:</b></td>
                            <td> 
                                <asp:TextBox ID="FastingTextBox" runat="server" Text='<%# Bind("Fasting") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                                

                        </tr>
                        <tr>
                            <td><b>Can smoke?</b></td>
                            <td>
                                <asp:CheckBox ID="SmokeCheckBox" runat="server" Checked='<%# Bind("Smoke") %>' AutoPostBack="True" />
                                <%--<asp:TextBox ID="SmokeTextBox" runat="server" Text='<%# Bind("Smoke") %>' />--%>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Can Drink?</b></td>
                            <td>
                                <asp:CheckBox ID="DrinkCheckBox" runat="server" Checked='<%# Bind("Alcoholic_Drinks") %>' AutoPostBack="True" />
                                <%--<asp:TextBox ID="AlcoholicDrinksTextBox" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' />--%>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Urgent?</b></td>
                            <td>
                                <asp:CheckBox ID="UrgentCheckBox" runat="server" Checked='<%# Bind("Urgent") %>' AutoPostBack="True"  />
                              
                            </td>
                        </tr>
                        <tr>
                            <td><b>Duration:</b></td>
                            <td>
                                <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                        </tr>
                    </caption>
                </table>

                <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Update" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Size="Smaller" />
                <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Size="Smaller" />
            </EditItemTemplate>
            <InsertItemTemplate>

                <asp:ValidationSummary ID="ValidationSummaryExam" runat="server" />


                <table>

                    <tr>
                        <td><b>Exam name:</b></td>
                        <td>
                            <asp:TextBox ID="ExamNameTextBox" runat="server" Text='<%# Bind("Exam_Name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Exam name is required." ControlToValidate="ExamNameTextBox" Display="Dynamic" ToolTip="." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Exam type:</b></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceType" DataTextField="Exam_type" DataValueField="ExamType_ID" SelectedValue='<%# Bind("ExamType_ID") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorExamType" runat="server" ErrorMessage="Price is required." ToolTip="Exam type is required." Text="*" Display="Dynamic" ControlToValidate="DropDownList1" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>

                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td><b>Price:</b></td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="PriceTextBox" Display="Dynamic" ErrorMessage="Price is required." SetFocusOnError="True" Text="*" ToolTip="Price is required.">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="priceTextBox" Display="Dynamic" ErrorMessage="Price must be greater than 0." Operator="GreaterThan" SetFocusOnError="True" ToolTip="Price must be greater than 0." Type="Double" ValueToCompare="0">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Fasting:</b></td>
                            <td>
                                <asp:TextBox ID="FastingTextBox" runat="server" Text='<%# Bind("Fasting") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Can smoke?</b></td>
                            <td>
                                 <asp:CheckBox ID="SmokeCheckBox" runat="server" Checked='<%# Bind("Smoke") %>' AutoPostBack="True" />
                                <%--<asp:TextBox ID="SmokeTextBox" runat="server" Text='<%# Bind("Smoke") %>' />--%>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Can Drink?</b></td>
                            <td>
                                <asp:CheckBox ID="DrinkCheckBox" runat="server" Checked='<%# Bind("Alcoholic_Drinks") %>' AutoPostBack="True"  />
                                <%--<asp:TextBox ID="AlcoholicDrinksTextBox" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' />--%>
                            </td>
                        </tr>
                         <tr>
                            <td><b>Urgent?</b></td>
                            <td>
                                <asp:CheckBox ID="UrgentCheckBox" runat="server" Checked='<%# Bind("Urgent") %>' AutoPostBack="True"  />
                                <%--<asp:TextBox ID="AlcoholicDrinksTextBox" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' />--%>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Duration:</b></td>
                            <td>
                                <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                            </td>
                        </tr>
                    </caption>

                </table>

                <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Insert" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Size="Smaller" />
                <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Font-Size="Smaller" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>

                    <tr>
                        <td><b>Exam name:</b></td>
                        <td>
                            <asp:Label ID="ExamNameLabel" runat="server" Text='<%# Bind("Exam_Name") %>' /></td>
                    </tr>
                    <tr>
                        <td><b>Exam type:</b></td>
                        <td>
                            <asp:Label ID="ExamTypeIDLabel" runat="server" Text='<%# Bind("Exam_type") %>' /></td>
                    </tr>
                    <tr>
                        <td><b>Price:</b></td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>'/>€</td>
                    </tr>
                    <tr>
                        <td><b>Fasting:</b></td>
                        <td>
                             <asp:Label ID="FastingLabel" runat="server" Text='<%# Bind("Fasting") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td><b>Can smoke?</b></td>
                        <td>
                             <asp:CheckBox ID="SmokeCheckBox" runat="server" Checked='<%# Bind("Smoke") %>' Enabled="False"/>
                            <%--<asp:Label ID="SmokeLabel" runat="server" Text='<%# Bind("Smoke") %>' />--%></td>
                    </tr>
                    <tr>
                        <td><b>Can Drink?</b></td>
                        <td>
                           <asp:CheckBox ID="DrinkCheckBox" runat="server"  Enabled="False" Checked='<%# Bind("Alcoholic_Drinks") %>'/>
                           <%-- <asp:Label ID="AlcoholicDrinksLabel" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' /></td>--%>
                    </tr>
                    <tr>
                        <td><b>Urgent?</b></td>
                        <td>
                           <asp:CheckBox ID="UrgentCheckBox" runat="server"  Enabled="False" Checked='<%# Bind("Urgent") %>'/>
                           <%-- <asp:Label ID="AlcoholicDrinksLabel" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' /></td>--%>
                    </tr>
                    <tr>
                        <td><b>Duration:</b></td>
                        <td>
                        
                           <asp:Label ID="DurationLabel" runat="server" Text='<%# Bind("Duration") %>' /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    

    <asp:SqlDataSource ID="SqlDataSourceExamDetails" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>"
        SelectCommand="SELECT Exam.Exam_ID, Exam.ExamType_ID, Exam.Exam_Name, Exam.Price, Exam.Fasting, Exam.Smoke, Exam.Alcoholic_Drinks, ExamType.Exam_type, Exam.Urgent, Exam.Duration FROM Exam INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID WHERE (Exam.Exam_ID = @Exam_ID)" 
        DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" 
        InsertCommand="INSERT INTO Exam(Exam_Name, ExamType_ID, Price, Fasting, Smoke, Alcoholic_Drinks, Urgent, Duration) VALUES (@Exam_Name, @ExamType_ID, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Duration)" 
        UpdateCommand="UPDATE Exam SET Exam_Name = @Exam_Name, ExamType_ID = @ExamType_ID, Price = @Price, Fasting = @Fasting, Smoke = @Smoke, Alcoholic_Drinks = @Alcoholic_Drinks, Urgent =@Urgent, Duration = @Duration WHERE (Exam_ID = @Exam_ID)">
        <DeleteParameters>
            <asp:Parameter Name="Exam_ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Exam_Name" />
            <asp:Parameter Name="ExamType_ID" />
            <asp:Parameter Name="Price" />
            <asp:Parameter Name="Fasting" />
            <asp:Parameter Name="Smoke" />
            <asp:Parameter Name="Alcoholic_Drinks" />
            <asp:Parameter Name="Urgent" />
            <asp:Parameter Name="Duration" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewExam" Name="Exam_ID" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Exam_Name" />
            <asp:Parameter Name="ExamType_ID" />
            <asp:Parameter Name="Price" />
            <asp:Parameter Name="Fasting" />
            <asp:Parameter Name="Smoke" />
            <asp:Parameter Name="Alcoholic_Drinks" />
            <asp:Parameter Name="Urgent" />
            <asp:Parameter Name="Duration" />
            <asp:Parameter Name="Exam_ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>

</asp:Content>

