using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Nevala
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        
        public MainWindow()
        {
            InitializeComponent();

            #region IPython Shell
            ConsoleControlSample.FormConsoleControlSample ipythonConsole = new ConsoleControlSample.FormConsoleControlSample("ipython",null);
            ipythonConsole.TopLevel = false;
            ipythonConsole.Width = 550;
            ipythonConsole.Height = 400;
            
            System.Windows.Forms.Panel ipyPanel = new System.Windows.Forms.Panel();
            ihost.Child = ipyPanel;
            ipyPanel.Controls.Add(ipythonConsole);
            ipythonConsole.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ipythonConsole.Show();
            #endregion
        }
    }
}
