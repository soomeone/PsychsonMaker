using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;

namespace PsychsonMaker
{
    static class Program
    {
        public static String filedirectory = Directory.GetCurrentDirectory() + "\\files\\"; //Directory where all exe's and files will be saved


        /// <summary>
        /// Der Haupteinstiegspunkt für die Anwendung.
        /// </summary>

        static SomeForm window;
        [STAThread]
        static void Main()
        {
            checkSoftware();

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            window = new SomeForm();
            Application.Run(window);
        }

        public static void checkSoftware()
        {
            // Checks if all the required programms are installed
            if (!File.Exists(@"C:\Program Files\SDCC\bin\sdcc.exe") && !File.Exists(@"C:\Program Files (x86)\SDCC\bin\sdcc.exe"))
            {
                MessageBox.Show("You first have to install SDCC");
                // Start installation of sdcc
                startProcess(filedirectory + "sdcc-3.5.0-setup.exe", "", "", true);
            }

            if (!Directory.Exists(@"C:\Program Files\Java") && !File.Exists(@"C:\Program Files (x86)\Java"))
            {
                MessageBox.Show("You first have to install Java");
            }
        }

        public static void burnfw(char drive, String burnerpath, String scriptpath, bool backup)
        {
            if (backup) { dumpDrive(drive); }

            // Paths
            string fw = filedirectory + "firmware\\bin\\fw.bin";
            string burner = filedirectory + "firmware\\bin\\fw.bin";
            string injectfile = filedirectory + "inject.bin";

            // Begin
            log("");
            log("------------------");
            log("Beginning to burn");

            // Delete compiled fw or bin
            if (File.Exists(fw))
            {
                File.Delete(fw);
                log("Deleting old fw");
            }

            if (File.Exists(injectfile))
            {
                File.Delete(injectfile);
                log("Deleting old bin file");
            }

            System.Threading.Thread.Sleep(200);

            // Compile new fw
            startProcess(filedirectory + "firmware\\build.bat", "", filedirectory + "firmware\\", false);
            log("Fw has been built");

            // Encode script
            String duckargs = " -jar \"" + filedirectory + "duckencode.jar\" -i \"" + scriptpath + "\" -o \"" + injectfile + "\"";
            startProcess("java", duckargs, filedirectory, true);
            System.Threading.Thread.Sleep(1500);
            log("Script has been encoded");

            // Embed script
            String embedargs = "\"" + filedirectory + "inject.bin\" \"" + filedirectory + "firmware\\bin\\fw.bin\"";
            startProcess("\"" + filedirectory + "EmbedPayload.exe\"", embedargs, filedirectory, true);
            System.Threading.Thread.Sleep(1400);
            log("Script has been embeded in fw");
            
            // Warning the user
            MessageBox.Show("In the next step, your drive will be flashed. Read the following output. If you get any errors, put a Screenshot on the github page. \n\n This could brick your USB stick. We don't take any . You have been warned...");
            String driveargs = "/drive=" + drive + " /action=SendFirmware /burner=\"" + burnerpath + "\" /firmware=\"" + fw + "\"";
            startProcess("files\\DriveCom.exe", driveargs, filedirectory, true);
        }

        public static void dumpDrive(char drive)
        {

        }

        public static void startProcess(String path, String args, String directory, bool display)
        {
            Process process = new Process();

            process.StartInfo.FileName = path;
            process.StartInfo.Arguments = args;
            process.StartInfo.WorkingDirectory = directory;

            if (!display) { process.StartInfo.WindowStyle = ProcessWindowStyle.Hidden; }
            process.Start();
            if (path != "java") { process.WaitForExit(); // Waits to finish the process 
            }
        }


        // Translate the log method (not really necessary)
        public static void log(String text)
        {
            window.log(text);
        }
    }
}
