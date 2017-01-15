using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Scheduler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ExamButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/manager/TypeOfExams.aspx");
    }

    protected void ButtonScheduler_Click(object sender, EventArgs e)
    {
        SchedulerPanel.Visible = true;
        ScheduledExamsPanel.Visible = true;
    }

    protected void ButtonExams_Click(object sender, EventArgs e)
    {
        SchedulerPanel.Visible = false;
        ScheduledExamsPanel.Visible = false;
    }

    protected void CalendarExamDate_SelectionChanged(object sender, EventArgs e)
    {
        DateLabel.Text = CalendarExamDate.SelectedDate.ToString("dd.MM.yyyy");
        CalendarExamDate.Visible = true;

    }

    protected void ButtonPersonalData_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/EditPersonalData.aspx");
    }
}