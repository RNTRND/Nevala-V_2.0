namespace ConsoleControlSample
{
  partial class FormConsoleControlSample
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
            this.toolStripContainer = new System.Windows.Forms.ToolStripContainer();
            this.consoleControl = new ConsoleControl.ConsoleControl();
            this.toolStripContainer.ContentPanel.SuspendLayout();
            this.toolStripContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStripContainer
            // 
            // 
            // toolStripContainer.ContentPanel
            // 
            this.toolStripContainer.ContentPanel.Controls.Add(this.consoleControl);
            this.toolStripContainer.ContentPanel.Size = new System.Drawing.Size(853, 413);
            this.toolStripContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.toolStripContainer.Location = new System.Drawing.Point(0, 0);
            this.toolStripContainer.Name = "toolStripContainer";
            this.toolStripContainer.Size = new System.Drawing.Size(853, 438);
            this.toolStripContainer.TabIndex = 1;
            this.toolStripContainer.Text = "toolStripContainer1";
            // 
            // consoleControl
            // 
            this.consoleControl.AutoScroll = true;
            this.consoleControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.consoleControl.Font = new System.Drawing.Font("Consolas", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.consoleControl.ForeColor = System.Drawing.Color.Black;
            this.consoleControl.IsInputEnabled = true;
            this.consoleControl.Location = new System.Drawing.Point(0, 0);
            this.consoleControl.Margin = new System.Windows.Forms.Padding(6, 4, 6, 4);
            this.consoleControl.Name = "consoleControl";
            this.consoleControl.SendKeyboardCommandsToProcess = false;
            this.consoleControl.ShowDiagnostics = false;
            this.consoleControl.Size = new System.Drawing.Size(853, 413);
            this.consoleControl.TabIndex = 0;
            this.consoleControl.Load += new System.EventHandler(this.consoleControl_Load);
            // 
            // FormConsoleControlSample
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(853, 438);
            this.Controls.Add(this.toolStripContainer);
            this.Name = "FormConsoleControlSample";
            this.Load += new System.EventHandler(this.FormConsoleControlSample_Load);
            this.toolStripContainer.ContentPanel.ResumeLayout(false);
            this.toolStripContainer.ResumeLayout(false);
            this.toolStripContainer.PerformLayout();
            this.ResumeLayout(false);

    }

    #endregion

    private ConsoleControl.ConsoleControl consoleControl;
    private System.Windows.Forms.ToolStripContainer toolStripContainer;
    }
}

