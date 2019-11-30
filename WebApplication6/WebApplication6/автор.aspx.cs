using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            авторdbDataContext db = new авторdbDataContext();
            авторы tebl = new авторы();
            tebl.ФИО = TextBox1.Text;
            db.авторы.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/автор.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}