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

        private void equipmentToolStripMenuItem_Click(object sender, EventArgs e)
        {

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

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
