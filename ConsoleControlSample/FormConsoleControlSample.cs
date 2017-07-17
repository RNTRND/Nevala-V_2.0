using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ConsoleControlSample
{
    /// <summary>
    /// The sample form.
    /// </summary>
    public partial class FormConsoleControlSample : Form
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FormConsoleControlSample"/> class.
        /// </summary>

        public string Path;
        public string Lang;

        public FormConsoleControlSample(string lang, string path)
        {
            Path = path;
            Lang = lang;
            InitializeComponent();
        }

        /// <summary>
        /// Handles the Load event of the FormConsoleControlSample control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void FormConsoleControlSample_Load(object sender, EventArgs e)
        {
            //  Update the UI state.
            UpdateUIState();           
            consoleControl.StartProcess(Lang, Path);
            UpdateUIState();
        }

        #region New Process
        /// <summary>
        /// Handles the Click event of the toolStripButtonNewProcess control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonNewProcess_Click(object sender, EventArgs e)
        {
            //  Create the new process form.
            FormNewProcess formNewProcess = new FormNewProcess();

            //  If the form is shown OK, start the process.
            if (formNewProcess.ShowDialog() == DialogResult.OK)
            {
                //  Start the proces.
                consoleControl.StartProcess(formNewProcess.FileName, formNewProcess.Arguments);

                //  Update the UI state.
                UpdateUIState();
            }
        }
        #endregion
        

        /// <summary>
        /// Handles the Click event of the toolStripButtonStopProcess control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonStopProcess_Click(object sender, EventArgs e)
        {
            consoleControl.StopProcess();

            //  Update the UI state.
            UpdateUIState();
        }

        /// <summary>
        /// Updates the state of the UI.
        /// </summary>
        private void UpdateUIState()
        {
            consoleControl.BackColor = Color.White;
        }

        /// <summary>
        /// Handles the Click event of the toolStripButtonShowDiagnostics control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonShowDiagnostics_Click(object sender, EventArgs e)
        {
            consoleControl.ShowDiagnostics = !consoleControl.ShowDiagnostics;
            UpdateUIState();
        }

        /// <summary>
        /// Handles the Tick event of the timerUpdateUI control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void timerUpdateUI_Tick(object sender, EventArgs e)
        {
            UpdateUIState();
        }

        #region IsInputEnabled
        /// <summary>
        /// Handles the Click event of the toolStripButtonInputEnabled control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonInputEnabled_Click(object sender, EventArgs e)
        {
            consoleControl.IsInputEnabled = !consoleControl.IsInputEnabled;
            UpdateUIState();
        }
        #endregion

        #region CMD Click
        /// <summary>
        /// Handles the Click event of the toolStripButtonRunCMD control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonRunCMD_Click(object sender, EventArgs e)
        {
            //consoleControl.StartProcess("python", "-i");
            consoleControl.StartProcess("python", Path);
            UpdateUIState();
        }
        #endregion

        #region Keyboard Command
        /// <summary>
        /// Handles the Click event of the toolStripButtonSendKeyboardCommandsToProcess control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonSendKeyboardCommandsToProcess_Click(object sender, EventArgs e)
        {
            consoleControl.SendKeyboardCommandsToProcess = !consoleControl.SendKeyboardCommandsToProcess;
            UpdateUIState();
        }
        #endregion

        #region Clear Output
        /// <summary>
        /// Handles the Click event of the toolStripButtonClearOutput control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        private void toolStripButtonClearOutput_Click(object sender, EventArgs e)
        {
            consoleControl.ClearOutput();
        }
        #endregion

        private void consoleControl_Load(object sender, EventArgs e)
        {

        }
    }
}