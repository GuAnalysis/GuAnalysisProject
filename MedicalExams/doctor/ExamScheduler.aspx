<%@ Page Title="Scheduler" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExamScheduler.aspx.cs" Inherits="Scheduler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: auto; margin-right: auto; width: 1000px">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="ButtonScheduler" runat="server" Text="Exam Scheduler" BackColor="#5D7B9D" Font-Size="Smaller" Font-Underline="False" OnClick="ButtonScheduler_Click" Width="10em" />
                <asp:Button ID="ButtonExams" runat="server" Text="View Scheduled Exams" BackColor="#5D7B9D" Font-Size="Smaller" Font-Underline="False" OnClick="ButtonExams_Click" Visible="True" Width="20em" />
                <asp:Panel ID="SchedulerPanel" runat="server" BorderColor="#5D7B9D" BorderStyle="Solid" Visible="False">
              
                <br />            
                <br />
                <table>

                    <tr><td><strong>Exam Scheduler</strong></td></tr>
                    <tr>
                       <td>
                                
                            <asp:DropDownList ID="ddlAddExam" runat="server" 
                                DataSourceID="SqlDataSourceExams"
                                DataTextField="Exam_Name" 
                                DataValueField="Exam_ID"
                                AppendDataBoundItems="True"> 
             
                                <asp:ListItem Value="%">Choose the Exam</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceExams" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" InsertCommand="INSERT INTO [Exam] ([ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration]) VALUES (@ExamType_ID, @Exam_Name, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Scheduler_ID, @Duration)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Exam_ID], [ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration] FROM [Exam]" UpdateCommand="UPDATE [Exam] SET [ExamType_ID] = @ExamType_ID, [Exam_Name] = @Exam_Name, [Price] = @Price, [Fasting] = @Fasting, [Smoke] = @Smoke, [Alcoholic_Drinks] = @Alcoholic_Drinks, [Urgent] = @Urgent, [Scheduler_ID] = @Scheduler_ID, [Duration] = @Duration WHERE [Exam_ID] = @Exam_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                       
                       </td>
                        <td>
                            <asp:DropDownList ID="ddlAddPatient" runat="server" 
                                DataSourceID="SqlDataSourcePatient" 
                                DataTextField="Health_number" 
                                DataValueField="Patient_ID"
                                AppendDataBoundItems="True"> 
                                <asp:ListItem Value="%">Choose the Patient</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                                DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID" 
                                InsertCommand="INSERT INTO [Patient] ([Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID]) VALUES (@Patient_name, @Patient_address, @Patient_phone, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_username, @email, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" 
                                SelectCommand="SELECT [Patient_ID], [Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID] FROM [Patient]" 
                                UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_address] = @Patient_address, [Patient_phone] = @Patient_phone, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [Gender] = @Gender, [Health_number] = @Health_number, [Patient_username] = @Patient_username, [email] = @email, [Exam_ID] = @Exam_ID WHERE [Patient_ID] = @Patient_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="DateLabel" runat="server"></asp:Label> 
                      
                       
                            <asp:Calendar ID="CalendarExamDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003366" Height="200px" Width="220px" CellPadding="1" Visible ="true" OnSelectionChanged="CalendarExamDate_SelectionChanged">
                                    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#003366" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="10pt" ForeColor="#FFFFCC" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        
                        
                           <%-- <asp:Button ID="ExamDate" runat="server" Text="Date" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="ExamDate_Click" />--%>
                        </td>
                        <td>

                             <asp:DropDownList ID="ddlAddNurse" runat="server" 
                                DataSourceID="SqlDataSourceNurse" 
                                DataTextField="Nurse_ID" 
                                DataValueField="Nurse_ID"
                                AppendDataBoundItems="True"> 
                                <asp:ListItem Value="%">Choose the Nurse</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceNurse" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID" InsertCommand="INSERT INTO [Nurse] ([Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID]) VALUES (@Nurse_name, @Nurse_address, @Nurse_phone, @Nurse_Bithdate, @Postal_Code, @username, @email, @Patient_ID, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Nurse_ID], [Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID] FROM [Nurse]" UpdateCommand="UPDATE [Nurse] SET [Nurse_name] = @Nurse_name, [Nurse_address] = @Nurse_address, [Nurse_phone] = @Nurse_phone, [Nurse_Bithdate] = @Nurse_Bithdate, [Postal_Code] = @Postal_Code, [username] = @username, [email] = @email, [Patient_ID] = @Patient_ID, [Exam_ID] = @Exam_ID WHERE [Nurse_ID] = @Nurse_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            
                             <asp:DropDownList ID="ddlAddDoctor" runat="server" 
                                DataSourceID="SqlDataSourceDoctor" 
                                DataTextField="Doctor_ID" 
                                DataValueField="Doctor_ID"
                                AppendDataBoundItems="True"> 
                                <asp:ListItem Value="%">Choose the Doctor</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = @Doctor_ID" InsertCommand="INSERT INTO [Doctor] ([Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID]) VALUES (@Doctor_name, @Speciality, @Patient_ID, @Doctor_phone, @username, @Doctor_mail, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Doctor_ID], [Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Doctor_name] = @Doctor_name, [Speciality] = @Speciality, [Patient_ID] = @Patient_ID, [Doctor_phone] = @Doctor_phone, [username] = @username, [Doctor_mail] = @Doctor_mail, [Exam_ID] = @Exam_ID WHERE [Doctor_ID] = @Doctor_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </td>
             
                    </tr>                  
                    <tr>
                     
                        <td>
                            <asp:DropDownList ID="ddExamHour" runat="server">
                                <asp:ListItem Value="%">Exam hour</asp:ListItem>
                                <asp:ListItem>8:00</asp:ListItem>
                                <asp:ListItem>9:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                        <td>
                             <%--Checked='<%# Bind("Performed") %>'--%> 
                            <asp:CheckBox ID="PerformedCheckBox" runat="server" Text="Performed?"/>
                        </td>
                    </tr>
         
                 </table>
                </asp:Panel>
                <asp:Panel ID="ScheduledExamsPanel" runat="server" Visible="false">
                    <strong>Scheduled Exams</strong>
                    <%-- <asp:Panel ID="PanelSearchExam" runat="server" GroupingText="Search" BackColor="#F7FAFE" Visible="false" HorizontalAlign="Justify">

                        <table>
                        <tr>

                            <td>Exam:</td>
                            <td style="width: 100%;">
                                <asp:TextBox ID="tbSearchSchedule" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                        <asp:Button ID="btPerformSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Smaller" />
                        <asp:Button ID="btCloseSearch" runat="server" Text="Search and close" BackColor="#5D7B9D" BorderColor="#003366" Font-Size="Smaller" Width="139px" />
                        <asp:Button ID="btClearSearch" runat="server" Text="Clear search" BackColor="#5D7B9D" BorderColor="#003366" Font-Size="Smaller"/>

                </asp:Panel>--%>
                    <%--<asp:Panel ID="PanelDeleteExam" runat="server" BackColor="#F7FAFE" Visible="false">
                        <div style="margin: 1em">
                            <b>Are you sure you want to delete the exam?</b>
                        </div>
                        <div>

                            <asp:Button ID="btConfirmDelete" runat="server" Text="Yes, delete" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btConfirmDelete_Click" />
                            <asp:Button ID="btCanceldelete" runat="server" Text="No, cancel!" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btCanceldelete_Click" />
                        </div>

                   </asp:Panel>--%>
                    <asp:GridView ID="GridViewScheduler" runat="server" 
                        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Scheduler_ID" DataSourceID="SqlDataSourceSchedulerTable" 
                        EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="&gt;" >
                            <ControlStyle BackColor="#6D8AAA" Font-Size="Smaller" />
                            </asp:CommandField>
                            <asp:BoundField DataField="Scheduler_ID" HeaderText="Scheduler ID" ReadOnly="True" SortExpression="Scheduler_ID" />
                            <asp:BoundField DataField="Patient_ID" HeaderText="Patient ID" SortExpression="Patient_ID" />
                            <asp:BoundField DataField="Doctor_ID" HeaderText="Doctor ID" SortExpression="Doctor_ID" />
                            <asp:BoundField DataField="Nurse_ID" HeaderText="Nurse ID" SortExpression="Nurse_ID" />
                            <asp:BoundField DataField="Exam_ID" HeaderText="Exam ID" SortExpression="Exam_ID" />
                            <asp:BoundField DataField="Exam_date" HeaderText="Exam date" SortExpression="Exam_date" />
                            <asp:CheckBoxField DataField="Performed" HeaderText="Performed" SortExpression="Performed" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceSchedulerTable" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [Scheduler] WHERE [Scheduler_ID] = @Scheduler_ID" 
                        InsertCommand="INSERT INTO [Scheduler] ([Scheduler_ID], [Patient_ID], [Doctor_ID], [Nurse_ID], [Exam_ID], [Exam_date], [Performed]) VALUES (@Scheduler_ID, @Patient_ID, @Doctor_ID, @Nurse_ID, @Exam_ID, @Exam_date, @Performed)" 
                        SelectCommand="SELECT [Scheduler_ID], [Patient_ID], [Doctor_ID], [Nurse_ID], [Exam_ID], [Exam_date], [Performed] FROM [Scheduler]" 
                        UpdateCommand="UPDATE [Scheduler] SET [Patient_ID] = @Patient_ID, [Doctor_ID] = @Doctor_ID, [Nurse_ID] = @Nurse_ID, [Exam_ID] = @Exam_ID, [Exam_date] = @Exam_date, [Performed] = @Performed WHERE [Scheduler_ID] = @Scheduler_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="Exam_date" />
                            <asp:Parameter Name="Performed" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="Exam_date" />
                            <asp:Parameter Name="Performed" Type="Boolean" />
                            <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                     <asp:Button ID="btNew" runat="server" Text="New" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btNew_Click" />
                     <asp:Button ID="btEdit" runat="server" Text="Edit" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btEdit_Click" />
                     <asp:Button ID="btDelete" runat="server" Text="Delete" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="btDelete_Click"/>
                     <asp:Button ID="btSearch" runat="server" Text="Search" BackColor="#5D7B9D" Font-Size="Smaller"/>
                     <asp:FormView ID="FormViewScheduler" runat="server"
                        DataKeyNames="Scheduler_ID" DataSourceID="SqlDataSourceScheduler" OnItemDeleted="FormViewScheduler_ItemDeleted" OnItemInserted="FormViewScheduler_ItemInserted" OnItemUpdated="FormViewScheduler_ItemUpdated">
                        
                        <ItemTemplate>
                          
                            <table>
                                <tr>
                                    <td>Patient ID:</td>
                                    <td>
                                        <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Bind("Patient_ID") %>' />

                                    </td>
                                </tr>
                                 <tr>
                                    <td>Nurse ID:</td>
                                    <td>
                                        <asp:Label ID="NurseIDLabel" runat="server" Text='<%# Bind("Nurse_ID") %>' />

                                    </td>
                                </tr>
                                 <tr>
                                    <td>Doctor ID:</td>
                                    <td>
                                        <asp:Label ID="DoctorIDLabel" runat="server" Text='<%# Bind("Doctor_ID") %>' />

                                    </td>
                                </tr>
                                <tr>
                                    <td>Exam ID:</td>
                                    <td>
                                        <asp:Label ID="ExamIDLabel" runat="server" Text='<%# Bind("Exam_ID") %>' />

                                    </td>
                                </tr>
                          
                                 <tr>
                                    <td>Exam date:</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Exam_date") %>' />

                                    </td>
                                </tr>
                                <tr>
                                    <td>Performed?</td>
                                    <td>
                                       <asp:CheckBox ID="UrgentCheckBox" runat="server"  Enabled="False" Checked='<%# Bind("Performed") %>'/>

                                    </td>
                                </tr>
                         
                            </table>
                        </ItemTemplate>
                        <EditItemTemplate>
                          <table>

                    <tr><td><strong>Exam Scheduler</strong></td></tr>
                    <tr>
                       <td>
                                
                            <asp:DropDownList ID="ddlAddExam" runat="server" 
                                DataSourceID="SqlDataSourceExams"
                                DataTextField="Exam_Name" 
                                DataValueField="Exam_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddExam_SelectedIndexChanged"> 
             
                                <asp:ListItem Value="%">Choose the Exam</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceExams" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" InsertCommand="INSERT INTO [Exam] ([ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration]) VALUES (@ExamType_ID, @Exam_Name, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Scheduler_ID, @Duration)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Exam_ID], [ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration] FROM [Exam]" UpdateCommand="UPDATE [Exam] SET [ExamType_ID] = @ExamType_ID, [Exam_Name] = @Exam_Name, [Price] = @Price, [Fasting] = @Fasting, [Smoke] = @Smoke, [Alcoholic_Drinks] = @Alcoholic_Drinks, [Urgent] = @Urgent, [Scheduler_ID] = @Scheduler_ID, [Duration] = @Duration WHERE [Exam_ID] = @Exam_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                       
                       </td>
                        <td>
                            <asp:DropDownList ID="ddlAddPatient" runat="server" 
                                DataSourceID="SqlDataSourcePatient" 
                                DataTextField="Health_number" 
                                DataValueField="Patient_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddPatient_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Patient</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                                DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID" 
                                InsertCommand="INSERT INTO [Patient] ([Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID]) VALUES (@Patient_name, @Patient_address, @Patient_phone, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_username, @email, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" 
                                SelectCommand="SELECT [Patient_ID], [Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID] FROM [Patient]" 
                                UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_address] = @Patient_address, [Patient_phone] = @Patient_phone, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [Gender] = @Gender, [Health_number] = @Health_number, [Patient_username] = @Patient_username, [email] = @email, [Exam_ID] = @Exam_ID WHERE [Patient_ID] = @Patient_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="DateLabel" runat="server"></asp:Label> 
                      
                       
                            <asp:Calendar ID="CalendarExamDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003366" Height="200px" Width="220px" CellPadding="1" Visible ="true" OnSelectionChanged="CalendarExamDate_SelectionChanged">
                                    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#003366" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="10pt" ForeColor="#FFFFCC" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        
                        
                           <%-- <asp:Button ID="ExamDate" runat="server" Text="Date" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="ExamDate_Click" />--%>
                        </td>
                        <td>

                             <asp:DropDownList ID="ddlAddNurse" runat="server" 
                                DataSourceID="SqlDataSourceNurse" 
                                DataTextField="Nurse_ID" 
                                DataValueField="Nurse_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddNurse_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Nurse</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceNurse" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID" InsertCommand="INSERT INTO [Nurse] ([Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID]) VALUES (@Nurse_name, @Nurse_address, @Nurse_phone, @Nurse_Bithdate, @Postal_Code, @username, @email, @Patient_ID, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Nurse_ID], [Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID] FROM [Nurse]" UpdateCommand="UPDATE [Nurse] SET [Nurse_name] = @Nurse_name, [Nurse_address] = @Nurse_address, [Nurse_phone] = @Nurse_phone, [Nurse_Bithdate] = @Nurse_Bithdate, [Postal_Code] = @Postal_Code, [username] = @username, [email] = @email, [Patient_ID] = @Patient_ID, [Exam_ID] = @Exam_ID WHERE [Nurse_ID] = @Nurse_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            
                             <asp:DropDownList ID="ddlAddDoctor" runat="server" 
                                DataSourceID="SqlDataSourceDoctor" 
                                DataTextField="Doctor_ID" 
                                DataValueField="Doctor_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddDoctor_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Doctor</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = @Doctor_ID" InsertCommand="INSERT INTO [Doctor] ([Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID]) VALUES (@Doctor_name, @Speciality, @Patient_ID, @Doctor_phone, @username, @Doctor_mail, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Doctor_ID], [Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Doctor_name] = @Doctor_name, [Speciality] = @Speciality, [Patient_ID] = @Patient_ID, [Doctor_phone] = @Doctor_phone, [username] = @username, [Doctor_mail] = @Doctor_mail, [Exam_ID] = @Exam_ID WHERE [Doctor_ID] = @Doctor_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </td>
             
                    </tr>                  
                    <tr>
                     
                        <td>
                            <asp:DropDownList ID="ddExamHour" runat="server" OnSelectedIndexChanged="ddExamHour_SelectedIndexChanged">
                                <asp:ListItem Value="%">Exam hour</asp:ListItem>
                                <asp:ListItem>8:00</asp:ListItem>
                                <asp:ListItem>9:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                        <td>
                             <%--Checked='<%# Bind("Performed") %>'--%> 
                            <asp:CheckBox ID="PerformedCheckBox" runat="server" Text="Performed?" Checked='<%# Bind("Performed") %>'/>
                        </td>
                    </tr>
         
                 </table>
                          <%-- <table>
                                <tr>
                                    <td>Patient ID:</td>
                                    <td>
                                        <asp:TextBox ID="PatientTextBox" runat="server" Text='<%# Bind("Patient_ID") %>' ></asp:TextBox>
                    
                                    </td>
                                </tr>
                                 <tr>
                                    <td>Nurse ID:</td>
                                    <td>
                                       <asp:TextBox ID="NurseIDTextBox" runat="server" Text='<%# Bind("Nurse_ID") %>' ></asp:TextBox>

                                    </td>
                                </tr>
                                 <tr>
                                    <td>Doctor ID:</td>
                                    <td>
                                        <asp:TextBox ID="DoctorIDTextBox" runat="server" Text='<%# Bind("Doctor_ID") %>' ></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Exam ID:</td>
                                    <td>
                                        <asp:TextBox ID="ExamIDTextBox" runat="server" Text='<%# Bind("Exam_ID") %>' ></asp:TextBox>

                                    </td>
                                </tr>
                               
                             
                                 <tr>
                                    <td>Exam date:</td>
                                    <td>
                                        <asp:TextBox ID="ExamDateTextBox" runat="server" Text='<%# Bind("Exam_date") %>' ></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Performed?</td>
                                    <td>
                                       <asp:CheckBox ID="PerformedCheckBox" runat="server" Checked='<%# Bind("Performed") %>' AutoPostBack="True" />

                                    </td>
                                </tr>
                         
                            </table>--%>
                          <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Update" BackColor="#6D8AAA" Font-Size="Smaller" />
                          <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel" BackColor="#6D8AAA" Font-Size="Smaller" />
                        </EditItemTemplate>
                        <InsertItemTemplate>

                            <table>

                    <tr><td><strong>Exam Scheduler</strong></td></tr>
                    <tr>
                       <td>
                                
                            <asp:DropDownList ID="ddlAddExam" runat="server" 
                                DataSourceID="SqlDataSourceExams"
                                DataTextField="Exam_Name" 
                                DataValueField="Exam_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddExam_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Exam</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceExams" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" InsertCommand="INSERT INTO [Exam] ([ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration]) VALUES (@ExamType_ID, @Exam_Name, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Scheduler_ID, @Duration)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Exam_ID], [ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration] FROM [Exam]" UpdateCommand="UPDATE [Exam] SET [ExamType_ID] = @ExamType_ID, [Exam_Name] = @Exam_Name, [Price] = @Price, [Fasting] = @Fasting, [Smoke] = @Smoke, [Alcoholic_Drinks] = @Alcoholic_Drinks, [Urgent] = @Urgent, [Scheduler_ID] = @Scheduler_ID, [Duration] = @Duration WHERE [Exam_ID] = @Exam_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ExamType_ID" Type="Int32" />
                                    <asp:Parameter Name="Exam_Name" Type="String" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="Fasting" Type="String" />
                                    <asp:Parameter Name="Smoke" Type="Boolean" />
                                    <asp:Parameter Name="Alcoholic_Drinks" Type="Boolean" />
                                    <asp:Parameter Name="Urgent" Type="Boolean" />
                                    <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                                    <asp:Parameter DbType="Time" Name="Duration" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                       
                       </td>
                        <td>
                            <asp:DropDownList ID="ddlAddPatient" runat="server" 
                                DataSourceID="SqlDataSourcePatient" 
                                DataTextField="Health_number" 
                                DataValueField="Patient_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddPatient_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Patient</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                                DeleteCommand="DELETE FROM [Patient] WHERE [Patient_ID] = @Patient_ID" 
                                InsertCommand="INSERT INTO [Patient] ([Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID]) VALUES (@Patient_name, @Patient_address, @Patient_phone, @Postal_code, @Birth_date, @Gender, @Health_number, @Patient_username, @email, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" 
                                SelectCommand="SELECT [Patient_ID], [Patient_name], [Patient_address], [Patient_phone], [Postal_code], [Birth_date], [Gender], [Health_number], [Patient_username], [email], [Exam_ID] FROM [Patient]" 
                                UpdateCommand="UPDATE [Patient] SET [Patient_name] = @Patient_name, [Patient_address] = @Patient_address, [Patient_phone] = @Patient_phone, [Postal_code] = @Postal_code, [Birth_date] = @Birth_date, [Gender] = @Gender, [Health_number] = @Health_number, [Patient_username] = @Patient_username, [email] = @email, [Exam_ID] = @Exam_ID WHERE [Patient_ID] = @Patient_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Patient_name" Type="String" />
                                    <asp:Parameter Name="Patient_address" Type="String" />
                                    <asp:Parameter Name="Patient_phone" Type="String" />
                                    <asp:Parameter Name="Postal_code" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Birth_date" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Health_number" Type="String" />
                                    <asp:Parameter Name="Patient_username" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="Exam_ID" Type="Int32" />
                                    <asp:Parameter Name="Patient_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="DateLabel" runat="server"></asp:Label> 
                      
                       
                            <asp:Calendar ID="CalendarExamDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003366" Height="200px" Width="220px" CellPadding="1" Visible ="true" OnSelectionChanged="CalendarExamDate_SelectionChanged">
                                    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#003366" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="10pt" ForeColor="#FFFFCC" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        
                        
                           <%--<asp:Button ID="ExamDate" runat="server" Text="Date" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="ExamDate_Click" />--%>
                        </td>
                        <td>

                             <asp:DropDownList ID="ddlAddNurse" runat="server" 
                                DataSourceID="SqlDataSourceNurse" 
                                DataTextField="Nurse_ID" 
                                DataValueField="Nurse_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddNurse_SelectedIndexChanged" > 
                                <asp:ListItem Value="%">Choose the Nurse</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceNurse" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = @Nurse_ID" InsertCommand="INSERT INTO [Nurse] ([Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID]) VALUES (@Nurse_name, @Nurse_address, @Nurse_phone, @Nurse_Bithdate, @Postal_Code, @username, @email, @Patient_ID, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Nurse_ID], [Nurse_name], [Nurse_address], [Nurse_phone], [Nurse_Bithdate], [Postal_Code], [username], [email], [Patient_ID], [Exam_ID] FROM [Nurse]" UpdateCommand="UPDATE [Nurse] SET [Nurse_name] = @Nurse_name, [Nurse_address] = @Nurse_address, [Nurse_phone] = @Nurse_phone, [Nurse_Bithdate] = @Nurse_Bithdate, [Postal_Code] = @Postal_Code, [username] = @username, [email] = @email, [Patient_ID] = @Patient_ID, [Exam_ID] = @Exam_ID WHERE [Nurse_ID] = @Nurse_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nurse_name" Type="String" />
                            <asp:Parameter Name="Nurse_address" Type="String" />
                            <asp:Parameter Name="Nurse_phone" Type="String" />
                            <asp:Parameter DbType="Date" Name="Nurse_Bithdate" />
                            <asp:Parameter Name="Postal_Code" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            
                             <asp:DropDownList ID="ddlAddDoctor" runat="server" 
                                DataSourceID="SqlDataSourceDoctor" 
                                DataTextField="Doctor_ID" 
                                DataValueField="Doctor_ID"
                                AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAddDoctor_SelectedIndexChanged"> 
                                <asp:ListItem Value="%">Choose the Doctor</asp:ListItem>
                            </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = @Doctor_ID" InsertCommand="INSERT INTO [Doctor] ([Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID]) VALUES (@Doctor_name, @Speciality, @Patient_ID, @Doctor_phone, @username, @Doctor_mail, @Exam_ID)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Doctor_ID], [Doctor_name], [Speciality], [Patient_ID], [Doctor_phone], [username], [Doctor_mail], [Exam_ID] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Doctor_name] = @Doctor_name, [Speciality] = @Speciality, [Patient_ID] = @Patient_ID, [Doctor_phone] = @Doctor_phone, [username] = @username, [Doctor_mail] = @Doctor_mail, [Exam_ID] = @Exam_ID WHERE [Doctor_ID] = @Doctor_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Doctor_name" Type="String" />
                            <asp:Parameter Name="Speciality" Type="String" />
                            <asp:Parameter Name="Patient_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_phone" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="Doctor_mail" Type="String" />
                            <asp:Parameter Name="Exam_ID" Type="Int32" />
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </td>
             
                    </tr>                  
                    <tr>
                     
                        <td>
                            <asp:DropDownList ID="ddExamHour" runat="server" OnSelectedIndexChanged="ddExamHour_SelectedIndexChanged">
                                <asp:ListItem Value="%">Exam hour</asp:ListItem>
                                <asp:ListItem>8:00</asp:ListItem>
                                <asp:ListItem>9:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                        <td>
                            
                            <asp:CheckBox ID="PerformedCheckBox" runat="server" Text="Performed?"/>
                        </td>
                    </tr>
         
                 </table>
                           <asp:Button ID="btSave" runat="server" Text="Save" CommandName="Insert" BackColor="#6D8AAA" Font-Size="Smaller" />
                           <asp:Button ID="btCancel" runat="server" Text="Cancel" CommandName="Cancel" BackColor="#6D8AAA" Font-Size="Smaller" CausesValidation="False" />
                        </InsertItemTemplate>
                </asp:FormView>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSourceScheduler" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                    SelectCommand="SELECT Scheduler_ID, Patient_ID, Doctor_ID, Nurse_ID, Exam_ID, Exam_date, Performed FROM Scheduler WHERE (Scheduler_ID = @Scheduler_ID)" 
                    DeleteCommand="DELETE FROM Scheduler WHERE (Exam_ID = @Exam_ID)" 
                    InsertCommand="INSERT INTO Scheduler(Patient_ID, Doctor_ID, Nurse_ID, Exam_ID, Exam_date, Performed) VALUES (@Patient_ID, @Doctor_ID, @Nurse_ID, @Exam_ID, @Exam_date, @Performed)" 
                    UpdateCommand="UPDATE Scheduler SET Patient_ID = @Patient_ID, Doctor_ID = @Doctor_ID, Nurse_ID = @Nurse_ID, Exam_ID = @Exam_ID, Exam_date = @Exam_date, Performed = @Performed">
                    <DeleteParameters>
                        <asp:Parameter Name="Exam_ID" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Patient_ID" />
                        <asp:Parameter Name="Doctor_ID" />
                        <asp:Parameter Name="Nurse_ID" />
                        <asp:Parameter Name="Exam_ID" />
                        <asp:Parameter Name="Exam_date" />
                        <asp:Parameter Name="Performed" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewScheduler" Name="Scheduler_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Patient_ID" />
                        <asp:Parameter Name="Doctor_ID" />
                        <asp:Parameter Name="Nurse_ID" />
                        <asp:Parameter Name="Exam_ID" />
                        <asp:Parameter Name="Exam_date" />
                        <asp:Parameter Name="Performed" />
                    </UpdateParameters>
            </asp:SqlDataSource>  
      
    </div>
          
</asp:Content>

