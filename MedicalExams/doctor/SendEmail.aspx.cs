using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendButton_Click(object sender, EventArgs e)
    {
        MailMessage message = new MailMessage();
        message.To.Add(new System.Net.Mail.MailAddress(ToTb.Text));
        if (ccTb.Text.Trim() != string.Empty) {
            message.CC.Add(new MailAddress(ccTb.Text));
        }
        message.Subject = SubjectTb.Text;
        message.Body = MessageTb.Text;
        SmtpClient smtpClient = new SmtpClient();
        smtpClient.Send(message);
        Response.Redirect("~/doctor/ExamScheduler.aspx"); // To know when the email was sent
    }
}