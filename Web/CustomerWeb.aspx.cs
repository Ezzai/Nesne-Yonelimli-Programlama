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
    public partial class CustomerWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_GetAll_Click(object sender, EventArgs e)
        {
            ICoffeeService coffeeService = new CoffeeManager();
            var coffees = coffeeService.GetAllByDto();

            foreach (var coffee in coffees)
            {
                ListBox1.Items.Add("Name: " + coffee.Name + " " + "CategoryName: " + coffee.CategoryName + " " + "UnitPrice: " + coffee.UnitPrice + " " + "UnitsInStock: " + coffee.UnitsInStock);
            }

        }

        protected void Btn_Order_Click(object sender, EventArgs e)
        {
            IOrderService orderService = new OrderManager();
            ICoffeeService coffeeService = new CoffeeManager();

            var userId = Convert.ToInt32(HttpContext.Current.Session["UserId"]);
            var coffee = coffeeService.GetByName(tbx_Name.Text);

            Order order = new Order();
            order.UserId = userId;
            order.CoffeeId = coffee.Id;
            orderService.Add(order);
        }
    }
}