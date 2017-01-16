<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="SendEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="margin-bottom: 1ex; margin-left:70ex">

  
     <table>
        <tr>
            <td>Subject</td>
            <td>
                <asp:TextBox ID="SubjectTb" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>To</td>
            <td>
                <asp:TextBox ID="ToTb" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>CC</td>
            <td>
                <asp:TextBox ID="ccTb" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Message</td>
            <td>
                <asp:TextBox ID="MessageTb" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
          <td></td>
            <center>
          <td><asp:Button ID="SendButton" runat="server" Text="Send" BackColor="#5D7B9D" Font-Size="Smaller" OnClick="SendButton_Click" /></td> 
            </center>
        </tr>

    </table>

  </div>

</asp:Content>

