using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class выдачи1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            выдачиdbDataContext db = new выдачиdbDataContext();
            выдачи tebl = new выдачи();
            tebl.код_книги = Convert.ToInt32(TextBox1.Text);
            tebl.дата_выдачи= Convert.ToDateTime(DateTime.MaxValue);
            tebl.дата_сдачи = Convert.ToDateTime(DateTime.MaxValue);
            tebl.читательский_билет = Convert.ToInt32(TextBox4.Text);
            db.выдачи.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/выдачи.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}