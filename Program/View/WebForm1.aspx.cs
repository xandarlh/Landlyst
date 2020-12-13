using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace LandlystProjekt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {         
            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {         
            int postnummer = Int32.Parse(txtPostnummer.Text);
            int telefonnummer = Int32.Parse(txtTelefonnummer.Text);
            int rumnummer = Int32.Parse(txtRumnummer.Text);
            DateTime checkindDato = DateTime.Parse(txtCheckindDato.Text);
            DateTime checkudDato = DateTime.Parse(txtCheckudDato.Text);

            ReservationController reservationController = new ReservationController();
            reservationController.CreateReservation(txtNavn.ToString(),txtAddresse.ToString(),postnummer,telefonnummer,txtMail.ToString(),rumnummer,checkindDato,checkudDato);

            disp_data();
            
            txtNavn.Text = "";
            txtAddresse.Text = "";
            txtPostnummer.Text = "";
            txtTelefonnummer.Text = "";
            txtMail.Text = "";
            txtRumnummer.Text = "";
            txtCheckindDato.Text = "";
            txtCheckudDato.Text = "";
        }

        public void disp_data()
        {           
            List<Room> rooms = RoomController.GetRooms();
            GridView1.DataSource = rooms;
            GridView1.DataBind();        
        }
    }
}