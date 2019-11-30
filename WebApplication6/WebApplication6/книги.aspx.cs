using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication6
{
    public partial class книги1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            книгиdbDataContext db = new книгиdbDataContext();
            книги tebl = new книги();
            tebl.название = TextBox1.Text;
            tebl.код_автора = Convert.ToInt32(TextBox2.Text);
            tebl.год_издания = Convert.ToDateTime(DateTime.MaxValue);
            tebl.количество_страниц = TextBox4.Text;
            tebl.обложка = TextBox5.Text;
            db.книги.InsertOnSubmit(tebl);
            db.SubmitChanges();
        }

        private string ImageUrl(string v)
        {
            throw new NotImplementedException();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default2.aspx");
        }
    }
}