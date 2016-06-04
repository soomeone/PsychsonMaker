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
            loaddrives(showdrives.Checked);
            loadfirmwares();
        }

        public void loaddrives(bool showall)
        {
            //Load attached drives and list it in combobox
            // TODO: check which drive is USB
            string[] drives = System.IO.Directory.GetLogicalDrives();

            drive.Items.Clear();

            foreach (string str in drives)
            {
                if (showall)
                {
                    drive.Items.Add(str);
                    drive.Text = str;
                }

                else
                {
                    // Check with DriveCom if drive has right controller
                    String driveargs = "/drive=" + str.ToCharArray()[0] + " /action=GetInfo";
                    String result = Program.startProcess("\"" + Program.filedirectory + "DriveCom.exe\"", driveargs, Program.filedirectory, false);

                    if (result.Contains("2303"))
                    {
                        // Right controller
                        drive.Items.Add(str);
                        drive.Text = str;
                    }
                }
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
            
            // Scroll to bottom
            console.SelectionStart = console.Text.Length;
            console.ScrollToCaret();
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
                string firmwarename = firmware.Text;

                burnbutton.Enabled = false;
                restorebutton.Enabled = false;
                Program.burnfw(drivename, firmwarename, scriptfile.Text, backup.Checked);
                burnbutton.Enabled = true;
                restorebutton.Enabled = true;
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

        private void showdrives_CheckedChanged(object sender, EventArgs e)
        {
            loaddrives(showdrives.Checked);
        }

        private void restorebutton_Click(object sender, EventArgs e)
        {
            DialogResult confirmed = MessageBox.Show("Are you sure to restore the stock firmware?", "Confirm", MessageBoxButtons.YesNo);
            if (confirmed == DialogResult.Yes)
            {
                burnbutton.Enabled = false;
                restorebutton.Enabled = false;
                Program.restorefw(firmware.Text, "FW03FF01V10353M.BIN");
                burnbutton.Enabled = true;
                restorebutton.Enabled = true;
            }
        }
    }
}
