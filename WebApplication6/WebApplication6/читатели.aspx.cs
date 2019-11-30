using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class читатели : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            читателиdbDataContext db = new читателиdbDataContext();
            читатели tebl = new читатели();
            tebl.ФИО = TextBox1.Text;
            tebl.адрес = TextBox2.Text;
            tebl.телефон = TextBox3.Text;
            tebl.код_города = Convert.ToInt32(TextBox4.Text);
            tebl.фото = TextBox5.Text;
            tebl.UserId = Convert.ToInt32(TextBox6.Text);
            db.читатели.InsertOnSubmit(tebl);
            db.SubmitChanges();
            Response.Redirect("/читатели.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}