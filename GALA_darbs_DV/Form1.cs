using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Npgsql;

namespace GALA_darbs_DV
{
    public partial class Form1 : Form
    {
        public IDictionary<int,string> equipment_type = new Dictionary<int, string>();
        public NpgsqlConnection connection = new NpgsqlConnection("Server=localhost;Port=5432;Database=rink_equipment_rental;User Id=postgres;Password=students;");
        public Form1()
        {
            InitializeComponent();
            NpgsqlCommand command = new NpgsqlCommand("Select equipment_type_id, name from public.equipment_type;", connection);
            connection.Open();
            NpgsqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                equipment_type.Add(dr.GetInt32(0), dr.GetString(1));
            }
            connection.Close();



        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = new BindingSource(equipment_type, null);
            comboBox1.DisplayMember = "value";
            comboBox1.ValueMember = "key";

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void RefreshData()
        {
            NpgsqlCommand command = new NpgsqlCommand("Select equipment_type_id, name from public.equipment_type;", connection);
            equipment_type.Clear();
            connection.Open();
            NpgsqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                equipment_type.Add(dr.GetInt32(0), dr.GetString(1));
            }
            connection.Close();
        }

        //  
        //   MENU click
        //  START

        private void equipmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search(true);
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.Show();
            this.Close();
        }

        private void searchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search();
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition= FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.Show();
            this.Hide();
        }

        private void equipmentToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search(true);
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.Show();
            this.Close();
        }

        private void accessoriesToolStripMenuItem_Click(object sender, EventArgs e)
        {   
            var EquiSearch = new equipment_search(false);
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.Show();
            this.Close();
        }

        private void hOMEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var home = new Form1();
            home.Location = this.Location;
            home.StartPosition = FormStartPosition.Manual;
            home.FormClosing += delegate { this.Show(); };
            home.Show();
            this.Close();

        }

        private void addRenterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var add_renters = new add_renter();
            add_renters.Location = this.Location;
            add_renters.StartPosition = FormStartPosition.Manual;
            add_renters.FormClosing += delegate { this.Show(); };
            add_renters.Show();
            this.Close();
        }

        private void rentersToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void activeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var renters = new renters();
            renters.Location = this.Location;
            renters.StartPosition = FormStartPosition.Manual;
            renters.FormClosing += delegate { this.Show(); };
            renters.Show();
            this.Close();
        }

        private void archiveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var renters = new renters(false);
            renters.Location = this.Location;
            renters.StartPosition = FormStartPosition.Manual;
            renters.FormClosing += delegate { this.Show(); };
            renters.Show();
            this.Close();
        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void workersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var workers = new admin_workers();
            workers.Location = this.Location;
            workers.StartPosition = FormStartPosition.Manual;
            workers.FormClosing += delegate { this.Show(); };
            workers.Show();
            this.Close();
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //show small info

        }

        private void helpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var help = new help();
            help.Location = this.Location;
            help.StartPosition = FormStartPosition.Manual;
            help.FormClosing += delegate { this.Show(); };
            help.Show();
            this.Close();
        }
        //  END
        //  MENU click
        //


        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
