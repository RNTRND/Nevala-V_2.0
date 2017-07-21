﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace Nevala
{
    /// <summary>
    /// A view model for each directory item
    /// </summary>
    public class DirectoryItemViewModel : BaseViewModel
    {
        #region Public Properties

        /// <summary>
        /// The type of this item
        /// </summary>
        public DirectoryItemType Type { get; set; }

        /// <summary>
        /// The full path to the item
        /// </summary>
        public string FullPath { get; set; }

        /// <summary>
        /// The name of this directory item
        /// </summary>
        public string Name { get { return this.Type == DirectoryItemType.Drive ? this.FullPath : DirectoryStructure.GetFileFolderName(this.FullPath); } }

        /// <summary>
        /// A list of all children contained inside this item
        /// </summary>
        public ObservableCollection<DirectoryItemViewModel> Children { get; set; }

        /// <summary>
        /// Indicates if this item can be expanded
        /// </summary>
        public bool CanExpand { get { return this.Type != DirectoryItemType.File; } }

        /// <summary>
        /// Indicates if the current item is expanded or not
        /// </summary>
        public bool IsExpanded
        {
            get
            {
                return this.Children?.Count(f => f != null) > 0;
            }
            set
            {
                // If the UI tells us to expand...
                if (value == true)
                    // Find all children
                    Expand();
                // If the UI tells us to close
                else
                    this.ClearChildren();
            }
        }

        #endregion

        #region Private Properties
        /// <summary>
        /// Local object of the Document
        /// </summary>
        private Document Document { get; set; }
        
        /// <summary>
        ///Object of Init 
        /// </summary>
        private Init init { get; set; }
        #endregion

        #region Public Commands

        /// <summary>
        /// The command to expand this item
        /// </summary>
        public ICommand ExpandCommand { get; set; }
        public ICommand ExpandDirCommand { get; set; }
        /// <summary>
        /// Open on Click
        /// </summary>
        public ICommand OpenOnClick { get; set; }
        public int ClickCount { get; internal set; }
        #endregion

        #region Constructors

        /// <summary>
        /// Default constructor
        /// </summary>
        /// <param name="fullPath">The full path of this item</param>
        /// <param name="type">The type of item</param>
        public DirectoryItemViewModel(string fullPath, DirectoryItemType type)
        {
            // Create commands
            this.ExpandCommand = new RelayCommand(Expand);
            this.OpenOnClick = new RelayCommand(OpenFile);
            // Set path and type
            this.FullPath = fullPath;
            this.Type = type;

            // Setup the children as needed
            this.ClearChildren();
        }

        public DirectoryItemViewModel(Document document)
        {
            Document = document;
        }

        public DirectoryItemViewModel()
        {
            this.ExpandDirCommand = new RelayCommand(ExpandDir);
        }

        #endregion

        #region Helper Methods

        /// <summary>
        /// Removes all children from the list, adding a dummy item to show the expand icon if required
        /// </summary>
        private void ClearChildren()
        {
            // Clear items
            this.Children = new ObservableCollection<DirectoryItemViewModel>();

            // Show the expand arrow if we are not a file
            if (this.Type != DirectoryItemType.File)
                this.Children.Add(null);
        }

        #endregion

        /// <summary>
        ///  Expands this directory and finds all children
        /// </summary>
        private void Expand()
        {
            // We cannot expand a file
            if (this.Type == DirectoryItemType.File)
                return;

            // Find all children
            var children = DirectoryStructure.GetDirectoryContents(this.FullPath);
            this.Children = new ObservableCollection<DirectoryItemViewModel>(
                                children.Select(content => new DirectoryItemViewModel(content.FullPath, content.Type)));
        }

        private void ExpandDir()
        {
            string navPath = ((MainWindow)System.Windows.Application.Current.MainWindow).Navigator.Text;
            MessageBox.Show(navPath);


            // Find all children
            var children = DirectoryStructure.GetDirectoryContents(navPath);

            this.Children = new ObservableCollection<DirectoryItemViewModel>(
                                children.Select(content => new DirectoryItemViewModel(navPath, DirectoryItemType.Folder)));
        }

        private void OpenFile()
        {
            if (this.Type == DirectoryItemType.Folder)
                return;
            else if (this.Type == DirectoryItemType.Drive)
                return;
            else if (this.Type == DirectoryItemType.File)
            {
                init = new Init(Document);
                init.OpenFile(this.FullPath); 
            }     
        }
    
    }
}
