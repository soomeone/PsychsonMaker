namespace PsychsonMaker
{
    partial class SomeForm
    {
        /// <summary>
        /// Erforderliche Designervariable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Verwendete Ressourcen bereinigen.
        /// </summary>
        /// <param name="disposing">True, wenn verwaltete Ressourcen gelöscht werden sollen; andernfalls False.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Vom Windows Form-Designer generierter Code

        /// <summary>
        /// Erforderliche Methode für die Designerunterstützung.
        /// Der Inhalt der Methode darf nicht mit dem Code-Editor geändert werden.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SomeForm));
            this.burnbutton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.scriptselect = new System.Windows.Forms.OpenFileDialog();
            this.button2 = new System.Windows.Forms.Button();
            this.drive = new System.Windows.Forms.ComboBox();
            this.console = new System.Windows.Forms.RichTextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.showdrives = new System.Windows.Forms.CheckBox();
            this.backup = new System.Windows.Forms.CheckBox();
            this.firmware = new System.Windows.Forms.ComboBox();
            this.scriptfile = new System.Windows.Forms.TextBox();
            this.restorebutton = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // burnbutton
            // 
            this.burnbutton.Location = new System.Drawing.Point(321, 199);
            this.burnbutton.Name = "burnbutton";
            this.burnbutton.Size = new System.Drawing.Size(75, 23);
            this.burnbutton.TabIndex = 0;
            this.burnbutton.Text = "Burn!";
            this.burnbutton.UseVisualStyleBackColor = true;
            this.burnbutton.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(32, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Drive";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Script file";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 83);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(119, 26);
            this.label3.TabIndex = 3;
            this.label3.Text = "Firmware (BN03V114M \r\nrecommended)";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 137);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(191, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Backup current firmware (coming soon)";
            // 
            // scriptselect
            // 
            this.scriptselect.FileName = "script.txt";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(283, 36);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 5;
            this.button2.Text = "browse";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // drive
            // 
            this.drive.FormattingEnabled = true;
            this.drive.Location = new System.Drawing.Point(62, 13);
            this.drive.MaxLength = 1;
            this.drive.Name = "drive";
            this.drive.Size = new System.Drawing.Size(47, 21);
            this.drive.TabIndex = 6;
            this.drive.Text = "E:/";
            // 
            // console
            // 
            this.console.Location = new System.Drawing.Point(6, 19);
            this.console.Name = "console";
            this.console.Size = new System.Drawing.Size(372, 118);
            this.console.TabIndex = 7;
            this.console.Text = "";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.console);
            this.groupBox1.Location = new System.Drawing.Point(12, 228);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(384, 143);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Console output";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.showdrives);
            this.groupBox2.Controls.Add(this.backup);
            this.groupBox2.Controls.Add(this.firmware);
            this.groupBox2.Controls.Add(this.scriptfile);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.drive);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.button2);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Location = new System.Drawing.Point(12, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(378, 167);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            // 
            // showdrives
            // 
            this.showdrives.AutoSize = true;
            this.showdrives.Location = new System.Drawing.Point(116, 16);
            this.showdrives.Name = "showdrives";
            this.showdrives.Size = new System.Drawing.Size(66, 17);
            this.showdrives.TabIndex = 10;
            this.showdrives.Text = "Show all";
            this.showdrives.UseVisualStyleBackColor = true;
            this.showdrives.CheckedChanged += new System.EventHandler(this.showdrives_CheckedChanged);
            // 
            // backup
            // 
            this.backup.AutoSize = true;
            this.backup.Checked = true;
            this.backup.CheckState = System.Windows.Forms.CheckState.Checked;
            this.backup.Enabled = false;
            this.backup.Location = new System.Drawing.Point(223, 136);
            this.backup.Name = "backup";
            this.backup.Size = new System.Drawing.Size(44, 17);
            this.backup.TabIndex = 9;
            this.backup.Text = "Yes";
            this.backup.UseVisualStyleBackColor = true;
            // 
            // firmware
            // 
            this.firmware.FormattingEnabled = true;
            this.firmware.Location = new System.Drawing.Point(137, 83);
            this.firmware.Name = "firmware";
            this.firmware.Size = new System.Drawing.Size(140, 21);
            this.firmware.TabIndex = 8;
            // 
            // scriptfile
            // 
            this.scriptfile.Location = new System.Drawing.Point(62, 38);
            this.scriptfile.Name = "scriptfile";
            this.scriptfile.Size = new System.Drawing.Size(215, 20);
            this.scriptfile.TabIndex = 7;
            // 
            // restorebutton
            // 
            this.restorebutton.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.restorebutton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.restorebutton.Location = new System.Drawing.Point(12, 199);
            this.restorebutton.Name = "restorebutton";
            this.restorebutton.Size = new System.Drawing.Size(125, 23);
            this.restorebutton.TabIndex = 10;
            this.restorebutton.Text = "Restore Stock FW";
            this.restorebutton.UseVisualStyleBackColor = false;
            this.restorebutton.Click += new System.EventHandler(this.restorebutton_Click);
            // 
            // SomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(408, 383);
            this.Controls.Add(this.restorebutton);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.burnbutton);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "SomeForm";
            this.RightToLeftLayout = true;
            this.Text = "Bad USB creator";
            this.Load += new System.EventHandler(this.SomeForm_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button burnbutton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.OpenFileDialog scriptselect;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.ComboBox drive;
        private System.Windows.Forms.RichTextBox console;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox scriptfile;
        private System.Windows.Forms.ComboBox firmware;
        private System.Windows.Forms.CheckBox backup;
        private System.Windows.Forms.CheckBox showdrives;
        private System.Windows.Forms.Button restorebutton;
    }
}

