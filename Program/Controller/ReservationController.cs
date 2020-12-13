using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace LandlystProjekt
{

    public class ReservationController
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocaldb;Initial Catalog=LandlystDB;Integrated Security=True");

        public void CreateReservation(string name,string address,int zipCode,int phoneNumber,string mail,int rumnummer, DateTime checkindDato, DateTime checkudData)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = $"EXEC CreateReservationAndCostumer @Name='{name}',@Address='{address}',@ZipCode='{zipCode}',@PhoneNumber='{phoneNumber}',@Mail='{mail}',@RoomNumber='{rumnummer}',@CheckinDate='{checkindDato}',@CheckoutDate='{checkudData}'";
            cmd.ExecuteNonQuery();

        }

    }
}