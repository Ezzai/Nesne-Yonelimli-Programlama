using Business.Abstract;
using Business.Concrete;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class AdminAuthorityWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string authority = Convert.ToString(HttpContext.Current.Session["Authority"]);
            if (!authority.Contains("Admin"))
            {
                Response.Redirect("~/CustomerWeb.aspx");
            }
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            IAuthorityService authorityService = new AuthorityManager();
            Authority authority = new Authority();
            authority.Name = tbx_Name.Text;

            authorityService.add(authority);
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            IAuthorityService authorityService = new AuthorityManager();
            Authority authority = authorityService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));
            authority.Name = tbx_Name.Text;

            authorityService.Update(authority);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            IAuthorityService authorityService = new AuthorityManager();
            Authority authority = authorityService.GetById(Convert.ToInt32(tbx_DeletedCategoryId.Text));

            authorityService.Delete(authority);
        }

        protected void btn_List_Click(object sender, EventArgs e)
        {
            IAuthorityService authorityService = new AuthorityManager();
            var authorities = authorityService.GetAll();

            foreach (var authority in authorities)
            {
                ListBox1.Items.Add("Id: " + authority.Id + " " + "Name: " + authority.Name);
            }
        }
    }
}