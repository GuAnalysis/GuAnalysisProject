<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payments2.aspx.cs" Inherits="customer_Payments2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <header id="hPayments" class="alt">
            <h1><b>Payments Panel</b></h1>
        </header>
    </center>

    <br />

    <asp:Panel ID="panelGridPayments" runat="server">
    
    <div style="margin-left:21ex">
        <asp:Panel ID="panelSearch" runat="server"  Font-Size="Medium" Font-Strikeout="False" Font-Underline="False">
            <table>
                <tr>
                    <td style="width:133px"><b>Patient Username</b></td>                   
                </tr>
                <tr>
                    <td style="width:133px"><%: User.Identity.GetUserName() %>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Scheduler_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="Scheduler_ID" HeaderText="Scheduler_ID" ReadOnly="True" SortExpression="Scheduler_ID" />
                                <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" SortExpression="Patient_ID" />
                                <asp:BoundField DataField="Exam_ID" HeaderText="Exam_ID" SortExpression="Exam_ID" />
                                <asp:DynamicField DataField="Patient_username" HeaderText="Patient_username" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Scheduler] WHERE [Scheduler_ID] = @Scheduler_ID" InsertCommand="INSERT INTO [Scheduler] ([Patient_ID], [Doctor_ID], [Nurse_ID], [Exam_ID], [Exam_date], [Performed]) VALUES (@Patient_ID, @Doctor_ID, @Nurse_ID, @Exam_ID, @Exam_date, @Performed)" SelectCommand="SELECT Scheduler.Scheduler_ID, Scheduler.Patient_ID, Scheduler.Doctor_ID, Scheduler.Nurse_ID, Scheduler.Exam_ID, Scheduler.Exam_date, Scheduler.Performed, Patient.Patient_ID AS Expr1, Patient.Patient_username, Patient.Exam_ID AS Expr2 FROM Scheduler INNER JOIN Patient ON Scheduler.Patient_ID = Patient.Patient_ID WHERE (Patient.Patient_username = @Patient_username)" UpdateCommand="UPDATE [Scheduler] SET [Patient_ID] = @Patient_ID, [Doctor_ID] = @Doctor_ID, [Nurse_ID] = @Nurse_ID, [Exam_ID] = @Exam_ID, [Exam_date] = @Exam_date, [Performed] = @Performed WHERE [Scheduler_ID] = @Scheduler_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Scheduler_ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Patient_ID" Type="Int32" />
                                <asp:Parameter Name="Doctor_ID" Type="Int32" />
                                <asp:Parameter Name="Nurse_ID" Type="Int32" />
                                <asp:Parameter Name="Exam_ID" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="Exam_date" />
                                <asp:Parameter Name="Performed" Type="Boolean" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:Parameter Name="Patient_username" />
                            </SelectParameters>
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
                    </td>                   
                </tr>
            </table>
        </asp:Panel>
    </div>

    <div style="margin-left:21ex; width:800px">
       
   
    
   
 
       

        <asp:Button ID="btPay" runat="server" Text="Button" />
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" InsertCommand="INSERT INTO [Exam] ([ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration]) VALUES (@ExamType_ID, @Exam_Name, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Scheduler_ID, @Duration)" SelectCommand="SELECT Patient.Patient_username AS Expr8, Patient.Patient_ID AS Expr4, Scheduler.Exam_date AS Expr5, Scheduler.Scheduler_ID AS Expr1, Scheduler.Patient_ID AS Expr2, Scheduler.Exam_ID AS Expr3, Scheduler.*, Scheduler.Doctor_ID AS Expr6, Scheduler.Nurse_ID AS Expr7, Patient.*, Patient.Patient_name AS Expr9, Patient.Patient_address AS Expr10, Patient.Patient_phone AS Expr11, Patient.Postal_code AS Expr12 FROM Patient INNER JOIN Scheduler ON Patient.Patient_ID = Scheduler.Patient_ID WHERE (Patient.Patient_username = @Patient_username)" UpdateCommand="UPDATE [Exam] SET [ExamType_ID] = @ExamType_ID, [Exam_Name] = @Exam_Name, [Price] = @Price, [Fasting] = @Fasting, [Smoke] = @Smoke, [Alcoholic_Drinks] = @Alcoholic_Drinks, [Urgent] = @Urgent, [Scheduler_ID] = @Scheduler_ID, [Duration] = @Duration WHERE [Exam_ID] = @Exam_ID">
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
            <SelectParameters>
                <asp:Parameter Name="Patient_username" />
            </SelectParameters>
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
        </asp:SqlDataSource>--%>


    </div>

    <div style="margin-left:21ex">
    </div>
    </asp:Panel>

        <asp:Label ID="lblmsg" runat="server" />

    <br />
    <br />
     

    <br />

</asp:Content>

