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
    public partial class AdminCategoryWeb : System.Web.UI.Page
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
            ICategoryService categoryService = new CategoryManager();
            Category category = new Category();
            category.Name = tbx_Name.Text;

            categoryService.add(category);
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            ICategoryService categoryService = new CategoryManager();

            var category = categoryService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));
            category.Name = tbx_Name.Text;

            categoryService.Update(category);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            ICategoryService categoryService = new CategoryManager();
            var category = categoryService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));
            categoryService.Delete(category);
        }

        protected void btn_List_Click(object sender, EventArgs e)
        {
            ICategoryService categoryService = new CategoryManager();

            var categories = categoryService.GetAll();

            foreach (var category in categories)
            {
                ListBox1.Items.Add("Id: " + category.Id + " " + "Name: " + category.Name);
            }
        }
    }
}