<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TypeofPayment.aspx.cs" Inherits="customer_TypeofPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       
<center>
    <form action="/your-charge-code" method="POST" id="payment-form">
  <span class="payment-errors"></span>

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

  <div class="form-row">
    <label>
      <span>Billing Postal Code</span>
      <input type="text" size="6" data-stripe="address_zip">
    </label>
  </div>

         
<asp:Button runat="server"  Text="Payment" CssClass="btn btn-default" BackColor="#5D7B9D" Font-Size="Smaller" />

</form>
          </center>

</asp:Content>

