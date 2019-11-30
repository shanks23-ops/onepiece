using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("регистрация.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("автор.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("выдачи.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("город.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("читатели.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("страна.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("книги.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report1.rdlc");
        }
    }
}