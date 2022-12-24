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
    public partial class AdminUserAuthorityWeb : System.Web.UI.Page
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
            IUserAuthorityService userAuthorityService = new UserAuthorityManager();
            UserAuthority userAuthority = new UserAuthority();
            userAuthority.UserId = Convert.ToInt32(tbx_UserId.Text);
            userAuthority.AuthorityId = Convert.ToInt32(tbx_AuthorityId.Text);

            userAuthorityService.add(userAuthority);
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            IUserAuthorityService userAuthorityService = new UserAuthorityManager();
            var userAuthority = userAuthorityService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));
            userAuthority.UserId = Convert.ToInt32(tbx_UpdatedUserId.Text);
            userAuthority.AuthorityId = Convert.ToInt32(tbx_UpdatedAuthorityId.Text);

            userAuthorityService.Update(userAuthority);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            IUserAuthorityService userAuthorityService = new UserAuthorityManager();
            var userAuthority = userAuthorityService.GetById(Convert.ToInt32(tbx_DeletedId.Text));

            userAuthorityService.Delete(userAuthority);
        }

        protected void btn_List_Click(object sender, EventArgs e)
        {
            IUserAuthorityService userAuthorityService = new UserAuthorityManager();
            var userAuthorities = userAuthorityService.GetAll();

            foreach (var userAuthority in userAuthorities)
            {
                ListBox1.Items.Add("Id: " + userAuthority.Id + " " + "UserId: " + userAuthority.UserId + " " + "AuthorityId: " + userAuthority.AuthorityId);
            }
        }
    }
}