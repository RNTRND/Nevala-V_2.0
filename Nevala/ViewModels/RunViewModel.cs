using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Forms;
using System.Windows.Interop;
using System.Runtime.InteropServices;

namespace Nevala
{
    public class RunViewModel
    {
        #region Commands
        public ICommand RunCommand { get; set; }
        #endregion

        #region Private Properties
        private Document Document { get; set; }
        private Init init { get; set; }
        #endregion

        [DllImport("user32")]
        private static extern IntPtr SetParent(IntPtr hWnd, IntPtr hWndParent);

        #region Constructor
        public RunViewModel(Document document)
        {
            Document = document;
            //RunCommand = new RelayCommand(RunFile);
            RunCommand = new RelayCommand(RunWinForm);
        }
        #endregion

        //public void RunFile()
        //{
        //    //Document.ActiveDocument.Scintilla.Text = "Hi";
            
        //    //((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.StartProcess("python.exe", Document.ActiveDocument.FilePath);
        //    ((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.StartProcess("python.exe", "-i");
        //    //((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.IsInputEnabled = !((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.IsInputEnabled;
        //    //UpdateUIState();
        //}

        //public void UpdateUIState()
        //{
        //    //  Update the state.
        //    if (((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.IsProcessRunning)
        //        Document.ActiveDocument.Scintilla.Text = "Running ";// + System.IO.Path.GetFileName(((MainWindow)System.Windows.Application.Current.MainWindow).consoleControl.ProcessInterface.ProcessFileName);
        //    else
        //        Document.ActiveDocument.Scintilla.Text = "Not Running";
        //}

        public void RunWinForm()
        {
            //ConsoleControlSample.FormConsoleControlSample form = new ConsoleControlSample.FormConsoleControlSample(Document.ActiveDocument.FilePath);
            //ConsoleControlSample.FormConsoleControlSample form = new ConsoleControlSample.FormConsoleControlSample();
            //WindowInteropHelper wih = new WindowInteropHelper((MainWindow)System.Windows.Application.Current.MainWindow);
            //wih.Owner = form.Handle;
            //SetParent(form.Handle, ((MainWindow)System.Windows.Application.Current.MainWindow).host.Handle);
            //form.ShowDialog();
            ConsoleControlSample.FormConsoleControlSample pythonConsole = new ConsoleControlSample.FormConsoleControlSample("python", Document.ActiveDocument.FilePath);
            pythonConsole.TopLevel = false;
            pythonConsole.Width = 550;
            pythonConsole.Height = 400;
            System.Windows.Forms.Panel pyPanel = new System.Windows.Forms.Panel();
            ((MainWindow)System.Windows.Application.Current.MainWindow).phost.Child = pyPanel;
            pyPanel.Controls.Add(pythonConsole);
            pythonConsole.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            pythonConsole.Show();
        }
    }
}
