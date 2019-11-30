using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class регистрация1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            регистрацияdbDataContext db = new регистрацияdbDataContext();
            регистрация tebl = new регистрация();
            tebl.логин = TextBox1.Text;
            tebl.пароль = TextBox2.Text;
            db.регистрация.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/регистрация.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}