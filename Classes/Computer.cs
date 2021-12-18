using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication5
{
    public class Computer
    {
        private string category;//קטגוריה
        private string price;//מחיר
        private string cpu;//מעבד
        private string strong;//אחסון
        private string ram;//זיכרון
        //פעולה בונה
        public Computer(string category,string cpu, string price,string ram) 
        {
            this.category = category;
            this.cpu = cpu;
            this.price = price;
            this.ram = ram;
        }
        //פעולת אחזור קטגוריה
        public string GetCategory() 
        {
            return this.category;
        }
        //פעולה אחזור מעבד
        public string GetCpu() 
        {
            return this.cpu;
        }
        //פעולת אחזור מחיר
        public string GetPrice() 
        {
            return this.price;
        }
        //פעולת אחזור זיכרון
        public string GetRam() 
        {
            return this.ram;
        }
    }
}