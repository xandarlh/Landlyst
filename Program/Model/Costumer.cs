using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandlystProjekt
{
    public class Costumer
    {
        private int phoneNumber;
        public int PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }
        private string name;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        private string address;
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private int zipCode;
        public int ZipCode
        {
            get { return zipCode; }
            set { zipCode = value; }
        }
        private string mail;
        public string Mail
        {
            get { return mail; }
            set { mail = value; }
        }


    }
}