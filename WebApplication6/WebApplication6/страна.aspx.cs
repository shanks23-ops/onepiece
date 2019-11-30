using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class страна1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            странаdbDataContext db = new странаdbDataContext();
            страна tebl = new страна();
            tebl.страна1 = TextBox1.Text;
            db.страна.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/страна.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}