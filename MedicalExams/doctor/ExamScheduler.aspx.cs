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
        ScheduledExamsPanel.Visible = false;
    }

    protected void ButtonExams_Click(object sender, EventArgs e)
    {
        SchedulerPanel.Visible = false;
        ScheduledExamsPanel.Visible = true;
        FormViewScheduler.Visible = true;
    }

    protected void CalendarExamDate_SelectionChanged(object sender, EventArgs e)
    {
        DateLabel.Text = CalendarExamDate.SelectedDate.ToString("dd/MM/yyyy");
        CalendarExamDate.Visible = true;

    }

    protected void ButtonPersonalData_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/EditPersonalData.aspx");
    }

    protected void btNew_Click(object sender, EventArgs e)
    {
        FormViewScheduler.ChangeMode(FormViewMode.Insert);
        GridViewScheduler.Visible = false;
    }

    protected void btEdit_Click(object sender, EventArgs e)
    {
        FormViewScheduler.ChangeMode(FormViewMode.Edit);
        GridViewScheduler.Visible = false;
    }

    protected void FormViewScheduler_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridViewScheduler.DataBind();
    }

    protected void FormViewScheduler_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridViewScheduler.DataBind();
    }

    protected void FormViewScheduler_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridViewScheduler.DataBind();
    }

    protected void btDelete_Click(object sender, EventArgs e)
    {
        FormViewScheduler.DeleteItem();
        GridViewScheduler.DataBind();
    }
}