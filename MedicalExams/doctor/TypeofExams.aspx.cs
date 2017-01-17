using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TypeofExams : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void showInfo(String message)
    {
        panelInfo.Visible = true;
        LabelInfo.Text = message;
    }
    public void showSuccessInfo(String message)
    {
        showInfo(message);
        panelInfo.BackColor = System.Drawing.Color.PaleGreen;

    }
    public void showErrorInfo(String message)
    {
        showInfo(message);
        panelInfo.BackColor = System.Drawing.Color.IndianRed;
    }


    protected void btSearch_Click(object sender, EventArgs e)
    {
     
        PanelSearchExam.Visible = true;
        btSearch.Enabled = false;
    }

   
    protected void btCloseSearch_Click(object sender, EventArgs e)
    {

        PanelSearchExam.Visible = false;
        btSearch.Enabled = true;
    }
    protected void btClose_Click(object sender, EventArgs e)
    {
        panelInfo.Visible = false;
    }

    protected void btClearSearch_Click(object sender, EventArgs e)
    {
        ddlSearchTypeOfExam.SelectedIndex = 0;
        tbSearchExam.Text = "";
    }

    protected void GridViewExam_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridViewExam.SelectedIndex >= 0)
        {

            btDelete.Enabled = true;
            btEdit.Enabled = true;
        }
        else
        {
            btDelete.Enabled = false;
            btEdit.Enabled = false;

        }
    }

    

    protected void btDelete_Click(object sender, EventArgs e)
    {
        PanelDeleteExam.Visible = true;
        PanelGridExam.Visible = false;
    }

    protected void btConfirmDelete_Click(object sender, EventArgs e)
    {
        try
        {
            FormViewExam.DeleteItem();

            PanelDeleteExam.Visible = false;
            PanelGridExam.Visible = true;

            GridViewExam.DataBind();

            panelInfo.Visible = true;
            showSuccessInfo("Exam deleted!");
        }
        catch (Exception)
        {

            panelInfo.Visible = true;
            showErrorInfo("Could no delete the exam. Check if is already used");

        }
    }

    protected void btCanceldelete_Click(object sender, EventArgs e)
    {

        PanelDeleteExam.Visible = false;
        PanelGridExam.Visible = true;
    }

    protected void btNew_Click(object sender, EventArgs e)
    {

        FormViewExam.ChangeMode(FormViewMode.Insert);
        PanelGridExam.Visible = false;
    }

    protected void FormViewExam_ModeChanged(object sender, EventArgs e)
    {
        if (FormViewExam.CurrentMode == FormViewMode.ReadOnly)
        {
            PanelGridExam.Visible = true;
        }
        else
        {
            PanelGridExam.Visible = false;
        }
    }
    protected void FormViewExam_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {

        GridViewExam.DataBind();
        panelInfo.Visible = true;
        showSuccessInfo("Exam Inserted!");
    }
    protected void FormViewExam_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridViewExam.DataBind();

        panelInfo.Visible = true;
        showSuccessInfo("Exam updated!");
    }
    protected void FormViewExam_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {

        GridViewExam.DataBind();
    }
    protected void FormViewExam_Click(object sender, EventArgs e)
    {
        FormViewExam.ChangeMode(FormViewMode.Edit);
        PanelGridExam.Visible = false;
    }
   


    protected void btEdit_Click1(object sender, EventArgs e)
    {

        FormViewExam.ChangeMode(FormViewMode.Edit);
        PanelGridExam.Visible = false;
    }



    
}