using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace LandlystProjekt
{
    public class RoomController
    {
        private static string cs = @"Data Source=(localdb)\MSSQLLocaldb;Initial Catalog=LandlystDB;Integrated Security=True";

        public static List<Room> GetRooms()
        {
            List<Room> rooms = new List<Room>();
            using (SqlConnection connection = new SqlConnection(cs))
            {
                connection.Open();
                SqlCommand cmd= connection.CreateCommand();
                cmd.CommandText = ("SELECT Room.RoomNumber, Room.BaseCost, Room.Taken, Room.Clean FROM Room"); ;
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {

                    int id = (int)rdr["RoomNumber"];
                    string baseCost = (string)rdr["BaseCost"];
                    bool taken = (bool)rdr["Taken"];
                    bool clean = (bool)rdr["Clean"];
                    
                    Room r = new Room(id, baseCost, taken, clean);
                    rooms.Add(r);

                }
                return rooms;   
            }
        }
    }
}