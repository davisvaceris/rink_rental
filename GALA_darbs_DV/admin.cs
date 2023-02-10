using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GALA_darbs_DV
{
    public partial class admin : Form
    {
        public admin()
        {
            InitializeComponent();
        }
        //  
        //   MENU click
        //  START

        private void equipmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search(true);
            this.Hide();
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.ShowDialog();
            this.Close();
        }

        private void searchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search();
            this.Hide();
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.ShowDialog();
            this.Close();
        }

        private void equipmentToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search(true);
            this.Hide();
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.ShowDialog();
            this.Close();
        }

        private void accessoriesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var EquiSearch = new equipment_search(false);
            this.Hide();
            EquiSearch.Location = this.Location;
            EquiSearch.StartPosition = FormStartPosition.Manual;
            EquiSearch.FormClosing += delegate { this.Show(); };
            EquiSearch.ShowDialog();
            this.Close();
        }

        private void HOMEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var home = new Form1();
            this.Hide();
            home.Location = this.Location;
            home.StartPosition = FormStartPosition.Manual;
            home.FormClosing += delegate { this.Show(); };
            home.ShowDialog();
            this.Close();

        }

        private void addRenterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var add_renters = new add_renter();
            add_renters.Location = this.Location;
            add_renters.StartPosition = FormStartPosition.Manual;
            add_renters.FormClosing += delegate { this.Show(); };
            add_renters.ShowDialog();
        }


        private void activeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var renters = new renters();
            this.Hide();
            renters.Location = this.Location;
            renters.StartPosition = FormStartPosition.Manual;
            renters.FormClosing += delegate { this.Show(); };
            renters.ShowDialog();
            this.Close();
        }

        private void archiveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var renters = new renters(false);
            this.Hide();
            renters.Location = this.Location;
            renters.StartPosition = FormStartPosition.Manual;
            renters.FormClosing += delegate { this.Show(); };
            renters.ShowDialog();
            this.Close();
        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {

            var admin = new admin();
            this.Hide();
            admin.Location = this.Location;
            admin.StartPosition = FormStartPosition.Manual;
            admin.FormClosing += delegate { this.Show(); };
            admin.ShowDialog();
            this.Close();
        }

        private void workersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var workers = new admin_workers();
            this.Hide();
            workers.Location = this.Location;
            workers.StartPosition = FormStartPosition.Manual;
            workers.FormClosing += delegate { this.Show(); };
            workers.ShowDialog();
            this.Close();
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var about = new about();
            about.Location = this.Location;
            about.StartPosition = FormStartPosition.Manual;
            about.FormClosing += delegate { this.Show(); };
            about.ShowDialog();

        }

        private void helpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var help = new help();
            help.Location = this.Location;
            help.StartPosition = FormStartPosition.Manual;
            help.FormClosing += delegate { this.Show(); };
            help.ShowDialog();
        }
        //  END
        //  MENU click
        //
    }
}
