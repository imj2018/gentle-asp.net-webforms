using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasinoSlots
{
    public partial class Default : System.Web.UI.Page
    {
        string[] images = new string[] { "cherry", "shamrock", "horseshoe" };

        Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnPull_Click(object sender, EventArgs e)
        {
            int bet = 0;

            if (!int.TryParse(TxtBet.Text, out bet))
            {
                LblResult.Text = "Only integer bets please";
                return;
            }

            LblResult.Text = "";
            LblMoney.Text = "";

            PullLeverAndPlay(bet);
        }

        private void PullLeverAndPlay(int bet)
        {
            int slot1 = random.Next(0, 3);
            int slot2 = random.Next(0, 3);
            int slot3 = random.Next(0, 3);

            Image1.ImageUrl = "/images/" + images[slot1] + ".jpg";
            Image2.ImageUrl = "/images/" + images[slot2] + ".jpg";
            Image3.ImageUrl = "/images/" + images[slot3] + ".jpg";

            DetermineWinnings(slot1, slot2, slot3, bet);

        }

        private void DetermineWinnings(int slot1, int slot2, int slot3, int bet)
        {

            int winnings = 0;

            // "cherry", "shamrock", "horseshoe"

            if (slot1 == 0 && slot2 == 0 && slot3 == 0)
            {
                winnings = bet * 4;
                LblResult.Text = "Three Cherries";
            }
            else if (slot1 == 0 && slot2 == 0 || slot1 == 0 && slot3 == 0 ||
                slot2 == 0 && slot3 == 0)
            {
                winnings = bet * 3;
                LblResult.Text = "Two Cherries";
            }
            else if ((slot1 == 0 && (slot2 != 0 && slot3 != 0))
                || (slot2 == 0 && (slot1 != 0 && slot3 != 0))
                || (slot3 == 0 && (slot1 != 0 && slot2 != 0)))
            {
                winnings = bet * 2;
                LblResult.Text = "One cherry";
            }
            
            else if (slot1 == 2 && slot2 == 2 && slot3 == 2)
            {
                winnings = bet * 100;
                LblResult.Text = "Three Horsrshoes!!!";

            }

            LblMoney.Text = "You bet " + bet.ToString("c") + " and won " + winnings.ToString("c");
        }
        


    }
}