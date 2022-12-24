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
    public partial class AdminCoffeeWeb : System.Web.UI.Page
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
            Coffee coffee = new Coffee();
            coffee.CategoryId = Convert.ToInt32(tbx_CategoryId.Text);
            coffee.Name = tbx_Name.Text;
            coffee.UnitPrice = Convert.ToDecimal(tbx_UnitPrice.Text);
            coffee.UnitsInStock = Convert.ToInt32(tbx_UnitsInStock.Text);

            ICoffeeService coffeeService = new CoffeeManager();
            coffeeService.add(coffee);
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            ICoffeeService coffeeService = new CoffeeManager();

            var coffee = coffeeService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));
            coffee.CategoryId = Convert.ToInt32(tbx_CategoryId.Text);
            coffee.Name = tbx_Name.Text;
            coffee.UnitPrice = Convert.ToDecimal(tbx_UnitPrice.Text);
            coffee.UnitsInStock = Convert.ToInt32(tbx_UnitsInStock.Text);

            coffeeService.Update(coffee);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            ICoffeeService coffeeService = new CoffeeManager();

            var coffee = coffeeService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));

            coffeeService.Delete(coffee);
        }

        protected void btn_List_Click(object sender, EventArgs e)
        {
            ICoffeeService coffeeService = new CoffeeManager();
            var coffees = coffeeService.GetAllByDto();

            foreach (var coffee in coffees)
            {
                ListBox1.Items.Add("Name: " + coffee.Name + " " +  "CategoryName: " + coffee.CategoryName +" " + "UnitPrice: " + coffee.UnitPrice + " " + "UnitsInStock: " + coffee.UnitsInStock);
            }

        }
    }
}