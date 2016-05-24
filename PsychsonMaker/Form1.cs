using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace PsychsonMaker
{
    public partial class SomeForm : Form
    {
        public String filedirectory = "files\\"; //Directory where all exe's and files will be saved
        public String fwdirectory = "files\\2251-firmware\\"; //Directory where all exe's and files will be saved


        public SomeForm()
        {
            InitializeComponent();
        }

        private void SomeForm_Load(object sender, EventArgs e)
        {
            loaddrives();
            loadfirmwares();
        }

        public void loaddrives()
        {
            //Load attached drives and list it in combobox
            // TODO: check which drive is USB
            string[] drives = System.IO.Directory.GetLogicalDrives();

            foreach (string str in drives)
            {
                drive.Items.Add(str);
            }

            log("Drives loaded");
        }

        public void loadfirmwares()
        {
            //List all firmware found
            string[] firmwaredir = Directory.GetFiles(fwdirectory);

            foreach (string firmwarefile in firmwaredir)
            {
                string filename = firmwarefile.Split('\\')[2];
                firmware.Items.Add(filename);
                firmware.Text = filename;
            }

            log("Firmware loaded");
        }

        public void log(String text)
        {
            console.Text += text + "\n";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            scriptselect.ShowDialog();
            scriptfile.Text = scriptselect.FileName;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (validateInput())
            {
                // Format correctly the data
                char drivename = drive.Text.ToCharArray()[0];
                string firmwarename = fwdirectory + firmware.Text;

                Program.burnfw(drivename, firmwarename, scriptfile.Text, backup.Checked);
            }
            else
            {
                log("! One or more files have not been found");
                MessageBox.Show("Invalid input (maybe wrong file name)");
            }
        }

        private bool validateInput()
        {
            if (drive.Text != "" &&
                File.Exists(fwdirectory + firmware.Text) &&
                File.Exists(scriptfile.Text))
            {
                return true;
            }

            return false;
        }
    }
}
