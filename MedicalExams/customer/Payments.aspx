<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Payments" %>

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
                    <td style="width:133px"><%: User.Identity.GetUserName() %></td>                   
                </tr>
            </table>
        </asp:Panel>
    </div>

    <div style="margin-left:21ex; width:800px">
       
   
    
   
 
       

        <asp:GridView ID="gridviewPayments" runat="server" AutoGenerateColumns="False" DataKeyNames="Exam_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                 <asp:templatefield HeaderText="Select">
            <itemtemplate>
                <asp:checkbox ID="chkStatus"
               runat="server"></asp:checkbox>
            </itemtemplate>
        </asp:templatefield>
    
                <asp:BoundField DataField="Exam_Name" HeaderText="Exam_Name" SortExpression="Exam_Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"/>
          
            </Columns>
        </asp:GridView>
        <asp:Button ID="btPay" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Exam] WHERE [Exam_ID] = @Exam_ID" InsertCommand="INSERT INTO [Exam] ([ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration]) VALUES (@ExamType_ID, @Exam_Name, @Price, @Fasting, @Smoke, @Alcoholic_Drinks, @Urgent, @Scheduler_ID, @Duration)" ProviderName="<%$ ConnectionStrings:med_exConnectionString1.ProviderName %>" SelectCommand="SELECT [Exam_ID], [ExamType_ID], [Exam_Name], [Price], [Fasting], [Smoke], [Alcoholic_Drinks], [Urgent], [Scheduler_ID], [Duration] FROM [Exam]" UpdateCommand="UPDATE [Exam] SET [ExamType_ID] = @ExamType_ID, [Exam_Name] = @Exam_Name, [Price] = @Price, [Fasting] = @Fasting, [Smoke] = @Smoke, [Alcoholic_Drinks] = @Alcoholic_Drinks, [Urgent] = @Urgent, [Scheduler_ID] = @Scheduler_ID, [Duration] = @Duration WHERE [Exam_ID] = @Exam_ID">
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

    </div>

    <div style="margin-left:21ex">
    </div>
    </asp:Panel>

        <asp:Label ID="lblmsg" runat="server" />

    <br />
    <br />
     

    <asp:SqlDataSource ID="SqlDataSourcePayments" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM Exam" InsertCommand="INSERT INTO Exam(Exam_Name, Exam_ID, Price) VALUES (,,)" SelectCommand="SELECT Exam_Name, Price, ExamType_ID FROM Exam WHERE (Exam_Name LIKE '%' + Exam_Name + '%')"></asp:SqlDataSource>
    <br />

</asp:Content>

