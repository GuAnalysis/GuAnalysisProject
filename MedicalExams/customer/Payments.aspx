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
        <asp:Panel ID="panelSearch" runat="server" Font-Bold="True" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False">
            <table>
                <tr>
                    <td style="width: 133px">Patient ID:</td>                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelID" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>

    <div style="margin-left:21ex; width:800px">
        <asp:GridView ID="gridviewPayments" runat="server" CellPadding="4" DataSourceID="SqlDataSourcePayments" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Visible="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Medium" OnSelectedIndexChanged="gridviewPayments_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="&gt;" ShowSelectButton="True">
                <ControlStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" Height="35px" Width="50px" />
                <HeaderStyle Width="60px" />
                </asp:CommandField>
                <asp:BoundField DataField="Patient_ID" HeaderText="ID" SortExpression="Patient_ID" />
                <asp:BoundField DataField="Exam_Name" HeaderText="Name" SortExpression="Exam_Name" />
                <asp:BoundField DataField="Price" HeaderText="Price (€)" SortExpression="Price" />
                <asp:BoundField DataField="Exam_date" HeaderText="Date" SortExpression="Exam_date" DataFormatString="{0:d}" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />



        </asp:GridView>
    </div>

    <div style="margin-left:21ex">
        <asp:Button ID="btPay" runat="server" Text="PAY" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Medium" Height="50px" Visible="False" Width="100px" />
    </div>
    </asp:Panel>

    <asp:SqlDataSource ID="SqlDataSourcePayments" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" 
        SelectCommand="SELECT Scheduler.Patient_ID, Exam.Exam_Name, Exam.Price, Scheduler.Exam_date 
                       FROM Exam INNER JOIN Scheduler ON Exam.Exam_ID = Scheduler.Exam_ID 
                       WHERE (Scheduler.Patient_ID = @Patient_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="LabelID" DefaultValue="%" Name="Patient_ID" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


    <br />
    <br />
    <br />
</asp:Content>

