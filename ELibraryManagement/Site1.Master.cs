using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    LinkButton1.Visible = true;     // User Login button
                    LinkButton2.Visible = true;     // User Sign-up button

                    LinkButton3.Visible = false;       // Logout button
                    LinkButton7.Visible = false;      // Hello User button     

                    LinkButton6.Visible = true;     // Admin Login button
                    LinkButton11.Visible = false;       // Author Management button
                    LinkButton12.Visible = false;       // Publisher Management button
                    LinkButton8.Visible = false;        // Book Inventory
                    LinkButton9.Visible = false;        // Book Issuing
                    LinkButton10.Visible = false;       // Member Management
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;     // User Login button
                    LinkButton2.Visible = false;     // User Sign-up button

                    LinkButton3.Visible = true;       // Logout button
                    LinkButton7.Text = "Hello " + Session["fullname"].ToString();      // Hello User button 
                    LinkButton7.Visible = true;

                    LinkButton6.Visible = true;     // Admin Login button
                    LinkButton11.Visible = false;       // Author Management button
                    LinkButton12.Visible = false;       // Publisher Management button
                    LinkButton8.Visible = false;        // Book Inventory
                    LinkButton9.Visible = false;        // Book Issuing
                    LinkButton10.Visible = false;       // Member Management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;     // User Login button
                    LinkButton2.Visible = false;     // User Sign-up button

                    LinkButton3.Visible = true;       // Logout button
                    LinkButton7.Text = "Hello " + Session["fullname"].ToString();      // Hello Admin button
                    LinkButton7.Visible = true;       

                    LinkButton6.Visible = false;     // Admin Login button
                    LinkButton11.Visible = true;       // Author Management button
                    LinkButton12.Visible = true;       // Publisher Management button
                    LinkButton8.Visible = true;        // Book Inventory
                    LinkButton9.Visible = true;        // Book Issuing
                    LinkButton10.Visible = true;       // Member Management
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBooksInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBooksIssuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBooks.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            LinkButton1.Visible = true;     // User Login button
            LinkButton2.Visible = true;     // User Sign-up button

            LinkButton3.Visible = false;       // Logout button
            LinkButton7.Visible = false;      // Hello User button     

            LinkButton6.Visible = true;     // Admin Login button
            LinkButton11.Visible = false;       // Author Management button
            LinkButton12.Visible = false;       // Publisher Management button
            LinkButton8.Visible = false;        // Book Inventory
            LinkButton9.Visible = false;        // Book Issuing
            LinkButton10.Visible = false;       // Member Management
            Response.Redirect("homepage.aspx");
        }
    }
}