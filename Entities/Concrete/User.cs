using Entities.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Concrete
{
    public class User : IEntity
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }

        private string email;
        public string Email
        {
            get { return email; }
            set
            {
                if (!value.Contains("@hotmail.com") && !value.Contains("@gmail.com") && !value.Contains("@yahoo.com"))
                {
                    email = "hataliEmail";
                }
                else
                {
                    email = value;
                }
            }
        }

        public string Password { get; set; }
    }
}
