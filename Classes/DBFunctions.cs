using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication5.Classes
{
    public class DBFuncions
    {
        public static string connStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=c:\users\avivm\documents\visual studio 2010\Projects\WebApplication5\WebApplication5\App_Data\YBPCDB.mdf;Integrated Security=True;User Instance=True";

        public static Computer GetComputerByCategory(string category)
        {
            Computer c = null;
            string query = "SELECT CPU, Cooling, MotherBoard, RAM, [Case], PSU, SSD, [R-Disk], Category, ID, Price FROM Computers WHERE (Category = '" + category + "')";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                c = new Computer(reader["Category"].ToString(), reader["CPU"].ToString(), reader["Price"].ToString(), reader["RAM"].ToString());
            conn.Close();
            return c;
        }
        public static Computer GetComputer(string category,string price)
        {
            Computer c = null;
            string query = "SELECT CPU, Cooling, MotherBoard, RAM, [Case], PSU, SSD, [R-Disk], Category, ID, Price FROM Computers WHERE (Price= '" + price + "') OR (Category = '" + category + "')";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                c = new Computer(reader["Category"].ToString(), reader["CPU"].ToString(), reader["Price"].ToString(), reader["RAM"].ToString());
            conn.Close();
            return c;
        }
        public static Computer GetPremiumComputer()
        {
            Computer c = null;
            string query = "SELECT CPU, Cooling, MotherBoard, RAM, [Case], PSU, SSD, [R-Disk], Category, ID, Price FROM Computers WHERE (Category = 'Premium')";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                c = new Computer(reader["Category"].ToString(), reader["CPU"].ToString(), reader["Price"].ToString(), reader["RAM"].ToString());
            conn.Close();
            return c;
        }
    }
} 