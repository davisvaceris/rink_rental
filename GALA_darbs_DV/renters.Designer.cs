using GALA_darbs_DV.Properties;
using System.Resources;

namespace GALA_darbs_DV
{
    partial class renters
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.HOMEToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addRenterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.activeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.archiveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.equipmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.searchToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.showToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.equipmentToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.accessoriesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.workersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ADMINToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.payed = new System.Windows.Forms.CheckBox();
            this.name = new System.Windows.Forms.TextBox();
            this.surname = new System.Windows.Forms.TextBox();
            this.phone_number = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.helper = new System.Windows.Forms.CheckBox();
            this.accessories = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.age_range = new System.Windows.Forms.ComboBox();
            this.equipment = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.accessories)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.HOMEToolStripMenuItem,
            this.addRenterToolStripMenuItem,
            this.rentersToolStripMenuItem,
            this.equipmentToolStripMenuItem,
            this.adminToolStripMenuItem,
            this.helpToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(5, 2, 0, 2);
            this.menuStrip1.Size = new System.Drawing.Size(1067, 28);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // HOMEToolStripMenuItem
            // 
            this.HOMEToolStripMenuItem.Name = "HOMEToolStripMenuItem";
            this.HOMEToolStripMenuItem.Size = new System.Drawing.Size(66, 24);
            this.HOMEToolStripMenuItem.Text = "HOME";
            this.HOMEToolStripMenuItem.Click += new System.EventHandler(this.HOMEToolStripMenuItem_Click);
            // 
            // addRenterToolStripMenuItem
            // 
            this.addRenterToolStripMenuItem.Name = "addRenterToolStripMenuItem";
            this.addRenterToolStripMenuItem.Size = new System.Drawing.Size(94, 24);
            this.addRenterToolStripMenuItem.Text = "Add renter";
            this.addRenterToolStripMenuItem.Click += new System.EventHandler(this.addRenterToolStripMenuItem_Click);
            // 
            // rentersToolStripMenuItem
            // 
            this.rentersToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.activeToolStripMenuItem,
            this.archiveToolStripMenuItem});
            this.rentersToolStripMenuItem.Name = "rentersToolStripMenuItem";
            this.rentersToolStripMenuItem.Size = new System.Drawing.Size(68, 24);
            this.rentersToolStripMenuItem.Text = "renters";
            // 
            // activeToolStripMenuItem
            // 
            this.activeToolStripMenuItem.Name = "activeToolStripMenuItem";
            this.activeToolStripMenuItem.Size = new System.Drawing.Size(139, 26);
            this.activeToolStripMenuItem.Text = "active";
            this.activeToolStripMenuItem.Click += new System.EventHandler(this.activeToolStripMenuItem_Click);
            // 
            // archiveToolStripMenuItem
            // 
            this.archiveToolStripMenuItem.Name = "archiveToolStripMenuItem";
            this.archiveToolStripMenuItem.Size = new System.Drawing.Size(139, 26);
            this.archiveToolStripMenuItem.Text = "archive";
            this.archiveToolStripMenuItem.Click += new System.EventHandler(this.archiveToolStripMenuItem_Click);
            // 
            // equipmentToolStripMenuItem
            // 
            this.equipmentToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.searchToolStripMenuItem,
            this.showToolStripMenuItem});
            this.equipmentToolStripMenuItem.Name = "equipmentToolStripMenuItem";
            this.equipmentToolStripMenuItem.Size = new System.Drawing.Size(95, 24);
            this.equipmentToolStripMenuItem.Text = "Equipment";
            this.equipmentToolStripMenuItem.DoubleClick += new System.EventHandler(this.equipmentToolStripMenuItem_Click);
            // 
            // searchToolStripMenuItem
            // 
            this.searchToolStripMenuItem.Name = "searchToolStripMenuItem";
            this.searchToolStripMenuItem.Size = new System.Drawing.Size(136, 26);
            this.searchToolStripMenuItem.Text = "Search";
            this.searchToolStripMenuItem.Click += new System.EventHandler(this.searchToolStripMenuItem_Click);
            // 
            // showToolStripMenuItem
            // 
            this.showToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.equipmentToolStripMenuItem1,
            this.accessoriesToolStripMenuItem});
            this.showToolStripMenuItem.Name = "showToolStripMenuItem";
            this.showToolStripMenuItem.Size = new System.Drawing.Size(136, 26);
            this.showToolStripMenuItem.Text = "Show";
            // 
            // equipmentToolStripMenuItem1
            // 
            this.equipmentToolStripMenuItem1.Name = "equipmentToolStripMenuItem1";
            this.equipmentToolStripMenuItem1.Size = new System.Drawing.Size(168, 26);
            this.equipmentToolStripMenuItem1.Text = "Equipment";
            this.equipmentToolStripMenuItem1.Click += new System.EventHandler(this.equipmentToolStripMenuItem1_Click);
            // 
            // accessoriesToolStripMenuItem
            // 
            this.accessoriesToolStripMenuItem.Name = "accessoriesToolStripMenuItem";
            this.accessoriesToolStripMenuItem.Size = new System.Drawing.Size(168, 26);
            this.accessoriesToolStripMenuItem.Text = "Accessories";
            this.accessoriesToolStripMenuItem.Click += new System.EventHandler(this.accessoriesToolStripMenuItem_Click);
            // 
            // adminToolStripMenuItem
            // 
            this.adminToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.workersToolStripMenuItem,
            this.ADMINToolStripMenuItem1});
            this.adminToolStripMenuItem.Name = "adminToolStripMenuItem";
            this.adminToolStripMenuItem.Size = new System.Drawing.Size(72, 24);
            this.adminToolStripMenuItem.Text = "ADMIN";
            this.adminToolStripMenuItem.DoubleClick += new System.EventHandler(this.adminToolStripMenuItem_Click);
            // 
            // workersToolStripMenuItem
            // 
            this.workersToolStripMenuItem.Name = "workersToolStripMenuItem";
            this.workersToolStripMenuItem.Size = new System.Drawing.Size(143, 26);
            this.workersToolStripMenuItem.Text = "workers";
            this.workersToolStripMenuItem.Click += new System.EventHandler(this.workersToolStripMenuItem_Click);
            // 
            // ADMINToolStripMenuItem1
            // 
            this.ADMINToolStripMenuItem1.Name = "ADMINToolStripMenuItem1";
            this.ADMINToolStripMenuItem1.Size = new System.Drawing.Size(143, 26);
            this.ADMINToolStripMenuItem1.Text = "ADMIN";
            this.ADMINToolStripMenuItem1.Click += new System.EventHandler(this.adminToolStripMenuItem_Click);
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem,
            this.helpToolStripMenuItem1});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(52, 24);
            this.helpToolStripMenuItem.Text = "help";
            this.helpToolStripMenuItem.DoubleClick += new System.EventHandler(this.helpToolStripMenuItem_Click);
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(131, 26);
            this.aboutToolStripMenuItem.Text = "about";
            this.aboutToolStripMenuItem.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // helpToolStripMenuItem1
            // 
            this.helpToolStripMenuItem1.DoubleClickEnabled = true;
            this.helpToolStripMenuItem1.Name = "helpToolStripMenuItem1";
            this.helpToolStripMenuItem1.Size = new System.Drawing.Size(131, 26);
            this.helpToolStripMenuItem1.Text = "help";
            this.helpToolStripMenuItem1.Click += new System.EventHandler(this.helpToolStripMenuItem_Click);
            // 
            // payed
            // 
            this.payed.AutoSize = true;
            this.payed.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.payed.Location = new System.Drawing.Point(129, 370);
            this.payed.Name = "payed";
            this.payed.Size = new System.Drawing.Size(101, 33);
            this.payed.TabIndex = 4;
            this.payed.Text = "payed";
            this.payed.UseVisualStyleBackColor = true;
            // 
            // name
            // 
            this.name.Location = new System.Drawing.Point(190, 46);
            this.name.Name = "name";
            this.name.Size = new System.Drawing.Size(261, 22);
            this.name.TabIndex = 5;
            // 
            // surname
            // 
            this.surname.Location = new System.Drawing.Point(190, 98);
            this.surname.Name = "surname";
            this.surname.Size = new System.Drawing.Size(261, 22);
            this.surname.TabIndex = 5;
            this.surname.TextChanged += new System.EventHandler(this.surname_TextChanged);
            // 
            // phone_number
            // 
            this.phone_number.Location = new System.Drawing.Point(190, 155);
            this.phone_number.Name = "phone_number";
            this.phone_number.Size = new System.Drawing.Size(261, 22);
            this.phone_number.TabIndex = 5;
            this.phone_number.TextChanged += new System.EventHandler(this.phone_number_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(97, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 29);
            this.label1.TabIndex = 6;
            this.label1.Text = "name";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(61, 98);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(113, 29);
            this.label2.TabIndex = 6;
            this.label2.Text = "surname";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 148);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(181, 29);
            this.label3.TabIndex = 6;
            this.label3.Text = "phone number";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(43, 203);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 29);
            this.label4.TabIndex = 6;
            this.label4.Text = "age range";
            // 
            // helper
            // 
            this.helper.AutoSize = true;
            this.helper.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.helper.Location = new System.Drawing.Point(129, 331);
            this.helper.Name = "helper";
            this.helper.Size = new System.Drawing.Size(104, 33);
            this.helper.TabIndex = 7;
            this.helper.Text = "helper";
            this.helper.UseVisualStyleBackColor = true;
            // 
            // accessories
            // 
            this.accessories.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.accessories.Location = new System.Drawing.Point(624, 31);
            this.accessories.Name = "accessories";
            this.accessories.RowHeadersWidth = 51;
            this.accessories.RowTemplate.Height = 24;
            this.accessories.Size = new System.Drawing.Size(431, 165);
            this.accessories.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(457, 68);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(153, 29);
            this.label5.TabIndex = 6;
            this.label5.Text = "accessories";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(190, 256);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(105, 22);
            this.textBox1.TabIndex = 9;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(96, 254);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(78, 29);
            this.label6.TabIndex = 6;
            this.label6.Text = "hours";
            // 
            // age_range
            // 
            this.age_range.FormattingEnabled = true;
            this.age_range.Location = new System.Drawing.Point(190, 210);
            this.age_range.Name = "age_range";
            this.age_range.Size = new System.Drawing.Size(172, 24);
            this.age_range.TabIndex = 10;
            // 
            // equipment
            // 
            this.equipment.FormattingEnabled = true;
            this.equipment.Location = new System.Drawing.Point(624, 254);
            this.equipment.Name = "equipment";
            this.equipment.Size = new System.Drawing.Size(431, 24);
            this.equipment.TabIndex = 10;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(474, 247);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(136, 29);
            this.label7.TabIndex = 6;
            this.label7.Text = "equipment";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(626, 323);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(428, 24);
            this.comboBox1.TabIndex = 11;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(517, 323);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(93, 29);
            this.label8.TabIndex = 6;
            this.label8.Text = "worker";
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.DarkGreen;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.button1.Location = new System.Drawing.Point(441, 408);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(599, 53);
            this.button1.TabIndex = 12;
            this.button1.Text = "ADD RENTER";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // renters
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.equipment);
            this.Controls.Add(this.age_range);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.accessories);
            this.Controls.Add(this.helper);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.phone_number);
            this.Controls.Add(this.surname);
            this.Controls.Add(this.name);
            this.Controls.Add(this.payed);
            this.Controls.Add(this.menuStrip1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "renters";
            this.Text = "renters | RINK RENTAL © Dāvis Vāceris";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.accessories)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem HOMEToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addRenterToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem equipmentToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem searchToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem showToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem equipmentToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem accessoriesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adminToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem workersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rentersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem activeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem archiveToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem ADMINToolStripMenuItem1;
        private System.Windows.Forms.CheckBox payed;
        private System.Windows.Forms.TextBox name;
        private System.Windows.Forms.TextBox surname;
        private System.Windows.Forms.TextBox phone_number;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox helper;
        private System.Windows.Forms.DataGridView accessories;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox age_range;
        private System.Windows.Forms.ComboBox equipment;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button button1;
    }
}