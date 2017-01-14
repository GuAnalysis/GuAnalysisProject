using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    public void ShowInfo(string message)
    {
        panelInfo.Visible = true;
        labelInfo.Text = message;
    }

    public void ShowSuccessInfo(string message)
    {
        ShowInfo(message);
        //labelInfo.ForeColor = Color.Lime;
    }

    public void ShoweErrorInfo(string message)
    {
        ShowInfo(message);
        //labelInfo.ForeColor = Color.DarkRed;
    }


    protected void btNew_Click(object sender, EventArgs e)
    {
        fvPatients.ChangeMode(FormViewMode.Insert);
        panelGridPatients.Visible = false;

    }



    protected void btEdit_Click(object sender, EventArgs e)
    {
        fvPatients.ChangeMode(FormViewMode.Edit);
        panelGridPatients.Visible = false;
    }

    protected void btDelete_Click(object sender, EventArgs e)
    {
        panelDeletePatient.Visible = true;
        panelGridPatients.Visible = false;
    }

    protected void btSearch_Click(object sender, EventArgs e)
    {

        panelSearch.Visible = true;
        btSearch.Enabled = false;

    }

    protected void gridViewPatients_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (gridViewPatients.SelectedIndex >= 0)
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

   

    protected void btCloseSearch_Click(object sender, EventArgs e)
    {

        panelSearch.Visible = false;
        btSearch.Enabled = true;

    }

    protected void btClearSearch_Click(object sender, EventArgs e)
    {
        
        tbSearchPatients.Text = "";

    }

    protected void btConfirmDelete_Click(object sender, EventArgs e)
    {
        try
        {
            fvPatients.DeleteItem();

            panelDeletePatient.Visible = false;
            panelGridPatients.Visible = true;

            gridViewPatients.DataBind();

            ShowSuccessInfo("Patient deleted successfully.");
        }
        catch (Exception)
        {
            ShoweErrorInfo("Could not delete patient. Check if it is not used yet.");
        }

    }

    protected void btCancelDelete_Click(object sender, EventArgs e)
    {
        panelDeletePatient.Visible = false;
        panelGridPatients.Visible = true;

    }

    protected void btClose_Click(object sender, EventArgs e)
    {
        panelInfo.Visible = false;

    }


    protected void fvPatients_ModeChanged(object sender, EventArgs e)
    {
        if (fvPatients.CurrentMode == FormViewMode.ReadOnly)
        {
            panelGridPatients.Visible = true;
        }
        else
        {
            panelGridPatients.Visible = false;
        }
    }





    protected void fvPatients_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        gridViewPatients.DataBind();
    }

    protected void fvPatients_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        gridViewPatients.DataBind();
        ShowSuccessInfo("Patient inserted successfully.");
    }

    protected void fvPatients_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        gridViewPatients.DataBind();
        ShowSuccessInfo("Patient updated successfully.");
    }

    protected void addressTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}

