using MySql.Data.MySqlClient;
using Org.BouncyCastle.Crypto.Tls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Restaurant_App
{
    public partial class Form_Dashboard : Form
    {
        private Connection conn = new Connection();
        //UserSettings userSettings = new UserSettings();
      
        public Form_Dashboard()
        {
            InitializeComponent();
            timerTime.Start();

            //UC_Home uch = new UC_Home();
             //AddControlsToPanel(uch);
            
        }
        public Form RefToFormLogin { get; set; }


        public void populateLabels()
        {
            if(Restaurant.usersModel != null)
            {
                labelFullName.Text = Restaurant.usersModel.Firstname + " " + Restaurant.usersModel.Lastname;
                labelType.Text = Restaurant.usersModel.Type;
            }
        }

        private void Form_Dashboard_Load(object sender, EventArgs e)
        {
            populateLabels();
        }

        private void btnHome_Click(object sender, EventArgs e)
        {
            //UC_Home uch = new UC_Home();
            //AddControlsToPanel(uch);
        }


        private void timerTime_Tick(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            labelTime.Text = dt.ToString("HH:MM:ss");
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

      

        private void btnDrinks_Click(object sender, EventArgs e)
        {
            //UC_Drinks uch = new UC_Drinks();
            //AddControlsToPanel(uch);
        }
        private void AddControlsToPanel(Control c)
        {
            c.Dock = DockStyle.Fill;
            panepComOrders.Controls.Clear();
            panepComOrders.Controls.Add(c);
        }

       

     
     

      

       
        

      
       
        private void btnSettings_Click(object sender, EventArgs e)
        {
            //userSettings.ShowDialog();
        }

       
        private void button1_Click(object sender, EventArgs e)
        {
            this.RefToFormLogin.Show();
            this.Hide();

            if (System.Windows.Forms.Application.OpenForms["Login"] != null)
            {
                //  MessageBox.Show("t");
                (System.Windows.Forms.Application.OpenForms["Login"] as Login).clear();
            }
        }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }
    }
}
