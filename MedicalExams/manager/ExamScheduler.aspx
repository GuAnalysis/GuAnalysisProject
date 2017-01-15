<%@ Page Title="Scheduler" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExamScheduler.aspx.cs" Inherits="Scheduler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: auto; margin-right: auto; width: 1000px">
        
            <asp:Panel ID="SchedulerPanel" runat="server">
                <br />
                <br />
                <br />
                <br />

                <center>
                    <header id="SchedulerHeader" class="alt">
                        <h1><b>Exam Scheduler</b></h1>
                    </header>
                </center>
            
                <br />
                <br />
                <br />
                <br />
                <table>
                    
                    <tr>
                        <asp:LinkButton ID="LinkButtonExams" runat="server">Choose Exams
                        </asp:LinkButton>
                    </tr>
                    <tr>
                         <td><b>Exam date</b></td>
                                               
                    </tr>
                     
                    <tr>
                        <td>
                            <asp:Calendar ID="CalendarExamDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003366" Height="200px" Width="220px" CellPadding="1">
                                    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#003366" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="10pt" ForeColor="#FFFFCC" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        </td>
                        
                        <td>
                            <asp:DropDownList ID="ddExamHour" runat="server">
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
                    </tr>
         
                 </table>
                </asp:Panel>
                
                <br />
                <br />
                <br />
                <%--<asp:FormView ID="FormViewScheduler" runat="server" DataKeyNames="Exam_ID" DataSourceID="SqlDataSourceDetails">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>Exam name:</td>
                                <td>
                                    <asp:Label ID="ExamNameLabel" runat="server" Text='<%# Bind("Exam_Name") %>' />

                                </td>
                            </tr>
                            <tr>
                                <td>Exam type:</td>
                                <td>
                                    <asp:Label ID="ExamTypeLabel" runat="server" Text='<%# Bind("Exam_type") %>' />

                                </td>
                            </tr>
                             <tr>
                                <td>Exam room:</td>
                                <td>
                                    <asp:Label ID="ExamRoomLabel" runat="server" Text='<%# Bind("Exam_room") %>' />

                                </td>
                            </tr>
                             <tr>
                                <td>Exam date:</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Exam_date") %>' />

                                </td>
                            </tr>
                         
                        </table>
                    </ItemTemplate>
                    <EditItemTemplate>

                    </EditItemTemplate>
                    <InsertItemTemplate>

                    </InsertItemTemplate>
                </asp:FormView>--%>
                <asp:SqlDataSource ID="SqlDataSourceDetails" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
                    SelectCommand="SELECT Exam.Exam_Name, ExamType.Exam_type, Scheduler.Exam_room, Scheduler.Exam_date FROM Scheduler INNER JOIN Exam ON Scheduler.Exam_ID = Exam.Exam_ID INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID" 
                    DeleteCommand="DELETE FROM Scheduler WHERE (Exam_ID = @Exam_ID)" 
                    InsertCommand="INSERT INTO Scheduler(Exam_room, Exam_date) VALUES (@Exam_room, @Exam_date)" 
                    UpdateCommand="UPDATE Scheduler SET Exam_room = @Exam_room, Exam_date = @Exam_date FROM Scheduler INNER JOIN Exam ON Scheduler.Exam_ID = Exam.Exam_ID INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Exam_ID" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Exam_room" />
                        <asp:Parameter Name="Exam_date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Exam_room" />
                        <asp:Parameter Name="Exam_date" />
                    </UpdateParameters>
            </asp:SqlDataSource>
        </div>
   
        

  <%--  <div style="margin-left: auto; margin-right: auto; width: 1000px">
      <asp:GridView ID="GridViewScheduler" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduler" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="#333333" BorderColor="#003366" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="3">
       
         <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Patient_ID" HeaderText="Name" SortExpression="Patient_ID" />
            <asp:BoundField DataField="Exam_ID" HeaderText="Exam" SortExpression="Exam_ID" />
            <asp:BoundField DataField="Exam_date" HeaderText="Date and time" SortExpression="Exam_date" />
            <asp:BoundField DataField="Exam_room" HeaderText="Room number" SortExpression="Exam_room" />
            <asp:BoundField />
            <asp:BoundField />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#5D7B9D" BorderStyle="Solid" ForeColor="White" Height="2px" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceScheduler" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [Patient_ID], [Exam_date], [Doctor_ID], [Nurse_ID], [Exam_type], [Exam_room], [Exam_ID] FROM [Scheduler]">

    </asp:SqlDataSource>
     <asp:FormView ID="FormViewScheduler" runat="server" DataSourceID="SqlDataSourceDetails">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:Calendar ID="CalendarExamDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="calendarBirthday_SelectionChanged">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>

                    </td>
                </tr>
                <tr>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </tr>
            </table>
        </ItemTemplate>
        <EditItemTemplate>

        </EditItemTemplate>
        <InsertItemTemplate>

        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceDetails" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
        SelectCommand="SELECT Exam.Exam_Name, ExamType.Exam_type, Scheduler.Exam_room, Scheduler.Exam_date FROM Scheduler INNER JOIN Exam ON Scheduler.Exam_ID = Exam.Exam_ID INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID" DeleteCommand="DELETE FROM Scheduler WHERE (Exam_ID = @Exam_ID)" InsertCommand="INSERT INTO Scheduler(Exam_room, Exam_date) VALUES (@Exam_room, @Exam_date)" UpdateCommand="UPDATE Scheduler SET Exam_room = @Exam_room, Exam_date = @Exam_date FROM Scheduler INNER JOIN Exam ON Scheduler.Exam_ID = Exam.Exam_ID INNER JOIN ExamType ON Exam.ExamType_ID = ExamType.ExamType_ID">
        <DeleteParameters>
            <asp:Parameter Name="Exam_ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Exam_room" />
            <asp:Parameter Name="Exam_date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Exam_room" />
            <asp:Parameter Name="Exam_date" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>--%>
</asp:Content>

