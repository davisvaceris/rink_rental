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
    public partial class equipment_search : Form
    {
        public equipment_search()
        {
            InitializeComponent(null);
        }
        public equipment_search(bool equipment)
        {
            //show equipment
            if(equipment)
            {

            }
            // show only accessories
            else
            {

            }
            InitializeComponent(equipment);
        }

        private void equipment_search_Load(object sender, EventArgs e)
        {
        }

        private void searchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void btn_search_Click(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
