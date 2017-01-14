using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctors : System.Web.UI.Page
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
        labelInfo.ForeColor = Color.Lime;
    }

    public void ShoweErrorInfo(string message)
    {
        ShowInfo(message);
        labelInfo.ForeColor = Color.DarkRed;
    }

    protected void btClose_Click(object sender, EventArgs e)
    {
        panelInfo.Visible = false;
    }

    protected void btPerformSearch_Click(object sender, EventArgs e)
    {
        panelSearch.Visible = true;
        btSearch.Enabled = false;
    }

    protected void btCloseSearch_Click(object sender, EventArgs e)
    {
        panelSearch.Visible = false;
        btCloseSearch.Enabled = true;
    }

    protected void btClearSearch_Click(object sender, EventArgs e)
    {
        ddlSpeciality.SelectedIndex = 0;
        tbDoctorName.Text = "";
    }

    protected void btNew_Click(object sender, EventArgs e)
    {
        fvDoctor.ChangeMode(FormViewMode.Insert);
        panelGridDoctors.Visible = false;
    }

    protected void btEdit_Click(object sender, EventArgs e)
    {
        fvDoctor.ChangeMode(FormViewMode.Edit);
        panelGridDoctors.Visible = false;
    }

    protected void btDelete_Click(object sender, EventArgs e)
    {
        panelRemoveDoctor.Visible = true;
        panelGridDoctors.Visible = false;
    }

    protected void btSearch_Click(object sender, EventArgs e)
    {
        panelSearch.Visible = true;
        btSearch.Enabled = false;
    }

    protected void btConfirmRemove_Click(object sender, EventArgs e)
    {
        try
        {
            fvDoctor.DeleteItem();

            panelRemoveDoctor.Visible = false;
            panelGridDoctors.Visible = true;

            gridviewDoctors.DataBind();

            ShowSuccessInfo("Doctor removed successfully.");
        }
        catch (Exception)
        {
            ShoweErrorInfo("Could not remove Doctor.");
        }
    }

    protected void btCancelRemove_Click(object sender, EventArgs e)
    {
        panelRemoveDoctor.Visible = false;
        panelGridDoctors.Visible = true;
    }

    protected void fvDoctor_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        gridviewDoctors.DataBind();
    }

    protected void fvDoctor_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        gridviewDoctors.DataBind();
        ShowSuccessInfo("Doctor inserted successfully.");
    }

    protected void fvDoctor_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        gridviewDoctors.DataBind();
        ShowSuccessInfo("Doctor updated successfully.");
    }

    protected void fvDoctor_ModeChanged(object sender, EventArgs e)
    {
        if (fvDoctor.CurrentMode == FormViewMode.ReadOnly)
        {
            panelGridDoctors.Visible = true;
        }
        else
        {
            panelGridDoctors.Visible = false;
        }
    }
    
    protected void gridviewDoctors_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (gridviewDoctors.SelectedIndex >= 0)
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
}