<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TypeofPayment.aspx.cs" Inherits="customer_TypeofPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  


 
     <center>  <div class="form-row" style="background-color:lightblue; height:50px; width:400px">   

      <span ><b>Price</b></span>
      <asp:Label ID="Label1" runat="server" Text="Label" />  
  </div>  

 <%-- <div class="form-row" style="background-color:lightblue; height:50px; width:300px">
      <span><b>Patient</b></span>
      <asp:Label ID="Label7" runat="server" Text='<%# Bind("Patient_ID") %>' />
  </div>--%>

    <%--
    
  <div class="form-row">
    <label>
      <span>Card Holder</span>
      <input type="text" size="20" data-stripe="number">
    </label>
  </div>
    

  <div class="form-row">
    <label>
      <span>Card Number</span>
      <input type="text" size="20" data-stripe="number">
    </label>
  </div>
    

  <div class="form-row">
    <label>
      <span>Expiration (MM/YY)</span>
      <input type="text" size="2" data-stripe="exp_month">
    </label>
  
    <input type="text" size="2" data-stripe="exp_year">
  </div>

  <div class="form-row">
    <label>
      <span>CVC</span>
      <input type="text" size="4" data-stripe="cvc">
    </label>
  </div>


         
<asp:Button runat="server"  Text="Payment" CssClass="btn btn-default" BackColor="#5D7B9D" Font-Size="Smaller" />

</form>--%>
      
  
            <asp:ValidationSummary ID="ValidationSummaryDoctors" runat="server"/>
<asp:Label ID="labelErrors" runat="server" BackColor="Salmon" Width="100%"></asp:Label>

            <table>
                <tr>
                    <td><b>Card Holder:</b></td>
                    <td>
                   <asp:TextBox ID="Tbch" runat="server" Text='<%# Bind("CardHolder") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone number is required" Display="Dynamic" ControlToValidate="Tbch">*</asp:RequiredFieldValidator>
                      
                    </td>
                </tr>
                <tr>
                    <td><b>Card Number:</b></td>
                    <td>
                        <asp:TextBox ID="tbcn" runat="server" Text='<%# Bind("CardNumber") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone number is required" Display="Dynamic" ControlToValidate="tbcn">*</asp:RequiredFieldValidator>
                      
                    </td>
                </tr>
                <tr>
                    <td><b>CVV:</b></td>
                    <td>
                        <asp:TextBox ID="tbcvv" runat="server" Text='<%# Bind("CVV") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="E-mail is required" Display="Dynamic" ControlToValidate="tbcvv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                                <td><b>Last Date:</b></td>
                                <td>
                                    <asp:TextBox ID="tbld" runat="server" Text='<%# Bind("LastDate") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px"/>
                                </td>
                                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required." ControlToValidate="tbld" Display="Dynamic" ToolTip="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>

                                </td>
                            </tr>
            </table>


           <div style="margin-left:15ex">
        <asp:Button ID="btRegister" runat="server" style="text-align-last:center; margin:auto; left: 1px; top: 2px;" Text="Pay Now" OnClick="btRegister_Click" BackColor="#5D7B9D" Font-Size="Smaller" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <asp:Button ID="btCancel" runat="server" style="text-align-last:center; margin:auto; left: 6px; top: 2px;" Text="Cancel" CausesValidation="False" OnClick="btCancel_Click" Font-Size="Smaller" BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </div>
           </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:med_exConnectionString1 %>" SelectCommand="SELECT Patient_ID, Patient_username FROM Patient WHERE (Patient_username = @Patient_username)">
        <SelectParameters>
            <asp:Parameter Name="Patient_username" />
        </SelectParameters>
      </asp:SqlDataSource>

</asp:Content>

