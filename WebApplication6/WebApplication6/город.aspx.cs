using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class город1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            городdbDataContext db = new городdbDataContext();
            город tebl = new город();
            tebl.город1 = TextBox1.Text;
            tebl.страна = Convert.ToInt32(TextBox2.Text);
            db.город.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/город.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}