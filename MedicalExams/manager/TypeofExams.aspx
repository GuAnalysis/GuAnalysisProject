<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TypeofExams.aspx.cs" Inherits="TypeofExams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
        <header id="hExam" class="alt">
        <h2><%: Title %>Type of Exams</h2>
        </header>
     </center>

    <div style="margin-left:auto; margin-right:auto; width: 1000px">
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="panelInfo" runat="server" Visible="false">
                <div style="margin:1em">     
                    <asp:Label ID="LabelInfo" runat="server" ></asp:Label>
                </div>
                <div style="margin-bottom: 1ex; ">
        
                    <asp:Button ID="btClose" runat="server" Text="Close" BackColor="#6D8AAA" Font-Size="Smaller" OnClick="btClose_Click"/>
                </div>
            </asp:Panel>
    </div>
    <div style="margin-left:auto; margin-right:auto; width: 1000px">
        <asp:Panel ID="PanelGridExam" runat="server">
            <div style="margin-bottom: 1ex; ">
                <asp:Panel ID="PanelSearchExam" runat="server" GroupingText="Search" BackColor="#F7FAFE" Visible="false" HorizontalAlign="Justify">
                
                    <table>
                        <tr>
                            <td style="text-align:center">ExamType:</td>
                            <td style="width: 100%;">
                                <asp:DropDownList ID="ddlSearchTypeOfExam" runat="server" 
                                    DataSourceID="SqlDataSourceType" 
                                    DataTextField="Exam_type" 
                                    DataValueField="Exam_type" 
                                    AppendDataBoundItems="true">
                                   <asp:ListItem Value="%">Show all</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceType" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT * FROM [ExamType]"></asp:SqlDataSource>
                            </td>

                        </tr>
                   
                        <tr>
                        
                            <td>Exam:</td>
                            <td style="width: 100%;">
                                <asp:TextBox ID="tbSearchExam" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Smaller"/>
                    <asp:Button ID="btCloseSearch" runat="server" Text="Search and close" BackColor="#5D7B9D" BorderColor="#003366" Font-Size="Smaller" Width="139px" OnClick="btCloseSearch_Click"/>
                    <asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" BorderColor="#003366" Font-Size="Smaller" OnClick="btClearSearch_Click"/>

                 </asp:Panel>
            </div>
  
            <asp:GridView ID="GridViewExam"  runat="server" AutoGenerateColumns="False"  
                DataKeyNames="Exam_ID" DataSourceID="SqlDataSourceTypeOfExam" 
                EmptyDataText="There are no exams to display." 
                CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
                AllowSorting="True" BorderColor="#003366" OnSelectedIndexChanged="GridViewExam_SelectedIndexChanged" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" BorderColor="#003366" BorderStyle="Solid" />
                
                <Columns>
                    <asp:CommandField SelectText="&gt;" ShowSelectButton="True" ButtonType="Button">
                    <ControlStyle BackColor="#5D7B9D" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" Height="30px" Width="35px" />
                    <ItemStyle ForeColor="#003366" HorizontalAlign="Center" Width="5%" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="Exam_Name" HeaderText="Exam_Name" SortExpression="Exam_Name" >
                    <ItemStyle HorizontalAlign="Justify" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Exam_type" HeaderText="Type" SortExpression="Exam_type" />
                    <asp:BoundField DataField="Price" HeaderText="Price(€)" SortExpression="Price" />
                </Columns>
                    <EditRowStyle BackColor="#6666FF" BorderColor="#003366" BorderStyle="Solid" />
                    <EmptyDataRowStyle ForeColor="#003366" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Solid" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Solid" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Solid" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="#003366" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        
         
            <asp:Button ID="btNew" runat="server" Text="New" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btNew_Click" />
            <asp:Button ID="btEdit" runat="server" Text="Edit" Enabled="False" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btEdit_Click1" />
            <asp:Button ID="btDelete" runat="server" Text="Delete" Enabled="False" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btDelete_Click" />
            <asp:Button ID="btSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btSearch_Click"/>
            <br />
            <br />
     
        </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSourceTypeOfExam" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
         
            SelectCommand="SELECT Exam.Exam_ID, Exam.ExamType_ID, Exam.Exam_Name, Exam.Price, Exam.Fasting, Exam.Smoke, Exam.Alcoholic_Drinks, ExamType.Exam_type AS Exam_Type FROM Exam INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID WHERE (Exam.Exam_Name LIKE '%' + @Exam_Name + '%') AND (ExamType.Exam_type LIKE @Exam_Type)"> 

                <SelectParameters>
                    <asp:ControlParameter ControlID="tbSearchExam" DefaultValue="%" Name="Exam_Name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="ddlSearchTypeOfExam" DefaultValue="%" Name="Exam_Type" PropertyName="SelectedValue" />
                </SelectParameters>
             
           </asp:SqlDataSource>

        <asp:Panel ID="PanelDeleteExam" runat="server" BackColor="#F7FAFE" Visible="false">
            <div style="margin:1em">
                <b> Are you sure you want to delete the exam?</b>
            </div>
            <div>

                <asp:Button ID="btConfirmDelete" runat="server" Text="Yes, delete" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btConfirmDelete_Click"/>
                <asp:Button ID="btCanceldelete" runat="server" Text="No, cancel!" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btCanceldelete_Click"/>
            </div>
        
        </asp:Panel>

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
                            <asp:TextBox ID="ExamNameTextBox" runat="server" Text='<%# Bind("Exam_Name") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Exam name is required." ControlToValidate="ExamNameTextBox" Display="Dynamic" ToolTip="." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Exam type:</b></td>
                        <td>

                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSourceType" DataTextField="Exam_Type" DataValueField="ExamType_ID" SelectedValue='<%# Bind("ExamType_ID") %>'>
                            </asp:DropDownList>
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorExamType" runat="server" ErrorMessage="Price is required." ToolTip="Exam type is required." Text="*" Display="Dynamic" ControlToValidate="DropDownList1" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                         
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <br />
                    </tr>
                    <tr>
                        <td><b>Price:</b></td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ErrorMessage="Price is required." ToolTip="Price is required." Text="*" Display="Dynamic" ControlToValidate="PriceTextBox" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="priceTextBox" Display="Dynamic" ErrorMessage="Price must be greater than 0." Operator="GreaterThan" ToolTip="Price must be greater than 0." Type="Double" ValueToCompare="0" SetFocusOnError="True">*</asp:CompareValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        <td><b>Fasting:</b></td>
                        <td>
                            <asp:TextBox ID="FastingTextBox" runat="server" Text='<%# Bind("Fasting") %>' />
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Smoke:</b></td>
                        <td>
                            <asp:TextBox ID="SmokeTextBox" runat="server" Text='<%# Bind("Smoke") %>' />
                        </td>
                      
                    </tr>
                    <tr>
                        <td><b>Alcoholic Drinks:</b></td>
                        <td>
                            <asp:TextBox ID="AlcoholicDrinksTextBox" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' />
                        </td>
                       
                    </tr>
                </table>

            <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Update"  BackColor="#6D8AAA" Font-Size="Smaller" />
            <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel"  BackColor="#6D8AAA" Font-Size="Smaller"/>
        </EditItemTemplate>
             <InsertItemTemplate>
                
                <asp:ValidationSummary ID="ValidationSummaryExam" runat="server" />
                   
                 
                <table>
          
                    <tr>
                        <td><b>Exam name:</b></td>
                        <td>
                            <asp:TextBox ID="ExamNameTextBox" runat="server" Text='<%# Bind("Exam_Name") %>' />
                        </td>
                        <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Exam name is required." ControlToValidate="ExamNameTextBox" Display="Dynamic" ToolTip="." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Exam type:</b></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server"  DataSourceID="SqlDataSourceType" DataTextField="Exam_type" DataValueField="ExamType_ID" SelectedValue='<%# Bind("ExamType_ID") %>'>
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
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="PriceTextBox" Display="Dynamic" ErrorMessage="Price is required." SetFocusOnError="True" Text="*" ToolTip="Price is required.">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="priceTextBox" Display="Dynamic" ErrorMessage="Price must be greater than 0." Operator="GreaterThan" SetFocusOnError="True" ToolTip="Price must be greater than 0." Type="Double" ValueToCompare="0">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Fasting:</b></td>
                            <td>
                                <asp:TextBox ID="FastingTextBox" runat="server" Text='<%# Bind("Fasting") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td><b>Smoke:</b></td>
                            <td>
                                <asp:TextBox ID="SmokeTextBox" runat="server" Text='<%# Bind("Smoke") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td><b>Alcoholic Drinks:</b></td>
                            <td>
                                <asp:TextBox ID="AlcoholicDrinksTextBox" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' />
                            </td>
                        </tr>
                    </caption>
               
                </table>

                <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Insert"  BackColor="#6D8AAA" Font-Size="Smaller" />
                <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel"  BackColor="#6D8AAA" Font-Size="Smaller" CausesValidation="False"/>
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
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' /></td>
                    </tr>
                    <tr>
                        <td><b>Fasting:</b></td>
                        <td>
                            <asp:Label ID="FastingLabel" runat="server" Text='<%# Bind("Fasting") %>' /></td>
                    </tr>
                    <tr>
                        <td><b>Smoke:</b></td>
                        <td>
                            <asp:Label ID="SmokeLabel" runat="server" Text='<%# Bind("Smoke") %>' /></td>
                    </tr>
                    <tr>
                        <td><b>Alcoholic Drinks:</b></td>
                        <td>
                            <asp:Label ID="AlcoholicDrinksLabel" runat="server" Text='<%# Bind("Alcoholic_Drinks") %>' /></td>
                    </tr>
                </table>
        </ItemTemplate>
        </asp:FormView>
        
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
   
    <asp:SqlDataSource ID="SqlDataSourceExamDetails" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
          DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID"
          InsertCommand="INSERT INTO [Exam] ([Exam_Name], [ExamType_ID], [Price], [Fasting], [Smoke], [Alcoholic_Drinks]) VALUES (@Exam_Name, @ExamType_ID, @Price, @Fasting, @Smoke, @Alcoholic_Drinks)" 
          SelectCommand="SELECT Exam.Exam_ID, Exam.ExamType_ID, Exam.Exam_Name, Exam.Price, Exam.Fasting, Exam.Smoke, Exam.Alcoholic_Drinks, ExamType.Exam_type FROM Exam INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID WHERE (Exam.Exam_ID = @Exam_ID)" 
          UpdateCommand="UPDATE Exam SET Exam_Name = @Exam_Name, ExamType_ID = @ExamType_ID, Price = @Price, Fasting = @Fasting, Smoke = @Smoke, Alcoholic_Drinks = @Alcoholic_Drinks WHERE (Exam_ID = @Exam_ID)">
          <deleteparameters>
            <asp:Parameter Name="Exam_ID" Type="Int32"></asp:Parameter>
          </deleteparameters>
          <insertparameters>
            <asp:Parameter Name="Exam_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Fasting" Type="String"></asp:Parameter>
            <asp:Parameter Name="Smoke" Type="String"></asp:Parameter>
            <asp:Parameter Name="Alcoholic_Drinks" Type="String"></asp:Parameter>
            </insertparameters>
          <SelectParameters>
              <asp:ControlParameter ControlID="GridViewExam" Name="Exam_ID" PropertyName="SelectedValue" />
          </SelectParameters>
          <updateparameters>
            <asp:Parameter Name="Exam_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="ExamType_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Fasting" Type="String"></asp:Parameter>
            <asp:Parameter Name="Smoke" Type="String"></asp:Parameter>
            <asp:Parameter Name="Alcoholic_Drinks" Type="String"></asp:Parameter>    
          </updateparameters>
    </asp:SqlDataSource>

</asp:Content>

