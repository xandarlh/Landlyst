using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandlystProjekt
{
    public class Room
    {
        private int roomNumber;
        public int RoomNumber
        {
            get { return roomNumber; }
            set { roomNumber = value; }
        }
        private string baseCost;
        public string BaseCost
        {
            get { return baseCost; }
            set { baseCost = value; }
        }
        private bool taken;
        public bool Taken
        {
            get { return taken; }
            set { taken = value; }
        }
        private bool clean;
        public bool Clean
        {
            get { return clean; }
            set { clean = value; }
        }
        public Room(int roomNumber, string baseCost, bool taken, bool clean)
        {
            this.roomNumber = roomNumber;
            this.baseCost = baseCost;
            this.taken = taken;
            this.clean = clean;

        }

    }
}