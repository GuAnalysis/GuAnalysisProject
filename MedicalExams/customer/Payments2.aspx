<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payments2.aspx.cs" Inherits="customer_Payments2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <center>
        <header id="hPayments" class="alt">
           
            <h2><%: Title %>Payments Panel</h2>
        </header>
    </center>

    <br />
         
    <asp:Panel ID="panelGridPayments" runat="server">

        <div style="margin-left: 21ex">
            <asp:Panel ID="panelSearch" runat="server" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False">
                <table>
                    <tr>
                        <td style="width: 133px"><b>Patient Username</b></td>
                    </tr>
                    <tr>
                        <td style="width: 133px"><%: User.Identity.GetUserName() %>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Patient_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                                <Columns>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkStatus"
                                                runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="Exam_Name" HeaderText="Exam Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Exam_date" HeaderText="Exam Date" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="Exam_hour" HeaderText="Exam_hour" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" DeleteCommand="DELETE FROM [Scheduler] WHERE [Scheduler_ID] = @Scheduler_ID" InsertCommand="INSERT INTO [Scheduler] ([Patient_ID], [Doctor_ID], [Nurse_ID], [Exam_ID], [Exam_date], [Performed]) VALUES (@Patient_ID, @Doctor_ID, @Nurse_ID, @Exam_ID, @Exam_date, @Performed)" SelectCommand="SELECT Scheduler.Patient_ID, Scheduler.Exam_date, Patient.Patient_ID AS Expr1, Patient.Patient_username, Exam.Exam_ID, Exam.Price, Exam.Exam_Name, Scheduler.Exam_hour FROM Scheduler INNER JOIN Patient ON Scheduler.Patient_ID = Patient.Patient_ID INNER JOIN Exam ON Scheduler.Exam_ID = Exam.Exam_ID WHERE (Patient.Patient_username = @Patient_username)" UpdateCommand="UPDATE [Scheduler] SET [Patient_ID] = @Patient_ID, [Doctor_ID] = @Doctor_ID, [Nurse_ID] = @Nurse_ID, [Exam_ID] = @Exam_ID, [Exam_date] = @Exam_date, [Performed] = @Performed WHERE [Scheduler_ID] = @Scheduler_ID">
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

        <div style="margin-left: 21ex; width: 800px">
<asp:Button ID="btPay" runat="server" Text="PAY" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Small" Font-Strikeout="False" Height="40px" BorderWidth="1px" style="left: -1px; top: 1px" OnClick="btPay_Click" />

  
        </div>

        <div style="margin-left: 21ex">
        </div>
    </asp:Panel>

<%--  <asp:Label ID="Label2" runat="server" Text='<%# Bind("Patient_ID") %>' /> --%>
    <br />
    <br />



</asp:Content>

