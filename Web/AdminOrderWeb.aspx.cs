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
    public partial class AdminOrderWeb : System.Web.UI.Page
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
            IOrderService orderService = new OrderManager();
            Order order = new Order();

            order.UserId = Convert.ToInt32(tbx_UserId.Text);
            order.CoffeeId = Convert.ToInt32(tbx_CoffeeId.Text);
            orderService.Add(order);
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            IOrderService orderService = new OrderManager();
            Order order = orderService.GetById(Convert.ToInt32(tbx_UpdatedId.Text));

            order.UserId = Convert.ToInt32(tbx_UpdatedUserId.Text);
            order.CoffeeId = Convert.ToInt32(tbx_UpdatedCoffeeId.Text);
            orderService.Update(order);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            IOrderService orderService = new OrderManager();
            Order order = orderService.GetById(Convert.ToInt32(tbx_DeletedId.Text));
            orderService.Delete(order);
        }

        protected void btn_List_Click(object sender, EventArgs e)
        {
            IOrderService orderService = new OrderManager();
            var orders = orderService.GetAll();

            foreach (var order in orders)
            {
                ListBox1.Items.Add("Id: " + order.Id + " " + "UserId: " + order.UserId + " " + "CoffeeId: " + order.CoffeeId);
            }
        }
    }
}