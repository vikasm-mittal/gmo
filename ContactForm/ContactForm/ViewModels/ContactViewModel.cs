using ContactForm.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactForm.ViewModels
{
    public class ContactViewModel : IDataErrorInfo
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public int Phone { get; set; }

        public string Error => throw new NotImplementedException();

        public string this[string columnName]
        {
            get
            {
                switch (columnName)
                {
                    case "FirstName":
                    case "LastName":
                    case "Address":
                        if (string.IsNullOrEmpty(this.FirstName))
                        {
                            return "This is a required field";
                        }
                        break;                    
                    default:
                        break;
                }

                return string.Empty;
            }
        }    

        public ContactViewModel()
        { 
            
        }

        public ContactViewModel(Contact contact)
        {
            if (null == contact)
            {
                return;
            }

            this.FirstName = contact.FirstName ?? "";
            this.LastName = contact.LastName ?? "";
            this.Address = contact.Address ?? "";
            this.Phone = contact.Phone;
        }

        public void Save()
        {
            //Loop through all properties to make sure there are no errors
            var newContact = new Contact(this.FirstName, this.LastName, this.Address, this.Phone);
            Util.Util.WriteJsonToFile<Contact>(newContact, "Contact.json");
        }
    }
}
