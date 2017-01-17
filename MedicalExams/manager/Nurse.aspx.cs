using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nurse : System.Web.UI.Page
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


    protected void btNew_Click(object sender, EventArgs e)
    {
        fvNurses.ChangeMode(FormViewMode.Insert);
        panelGridNurses.Visible = false;
    }

    protected void btEdit_Click(object sender, EventArgs e)
    {

        fvNurses.ChangeMode(FormViewMode.Edit);
        panelGridNurses.Visible = false;
    }


    protected void btDelete_Click(object sender, EventArgs e)
    {
    
        panelDeleteNurse.Visible = true;
        panelGridNurses.Visible = false;
    }

    protected void btSearch_Click(object sender, EventArgs e)
    {
    panelSearch.Visible = true;
    btSearch.Enabled = false;

}




    protected void gridViewNurses_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (gridViewNurses.SelectedIndex >= 0)
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
        tbSearchNurses.Text = "";


    }

    protected void btConfirmDelete_Click(object sender, EventArgs e)
    {
        try
        {
            fvNurses.DeleteItem();

            panelDeleteNurse.Visible = false;
            panelGridNurses.Visible = true;

            gridViewNurses.DataBind();

            ShowSuccessInfo("\nNurse deleted successfully.");
        }
        catch (Exception)
        {
            ShoweErrorInfo("\nCould not delete nurse. Check if it is not used yet.");
        }
    }


    protected void btCancelDelete_Click(object sender, EventArgs e)
    {
        panelDeleteNurse.Visible = false;
        panelGridNurses.Visible = true;

    }

    protected void btClose_Click(object sender, EventArgs e)
    {
        panelInfo.Visible = false;

    }

  

   
    

    

    protected void fvNurses_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        gridViewNurses.DataBind();
    }

    protected void fvNurses_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        gridViewNurses.DataBind();
        ShowSuccessInfo("Nurse inserted successfully.");
    }

    protected void fvNurses_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        gridViewNurses.DataBind();
        ShowSuccessInfo("Nurse updated successfully.");
    }

    protected void fvNurses_ModeChanged(object sender, EventArgs e)
    {
        if (fvNurses.CurrentMode == FormViewMode.ReadOnly)
        {
            panelGridNurses.Visible = true;
        }
        else
        {
            panelGridNurses.Visible = false;
        }
    }
}