   M S B A M L   `   `   `  ����A  =Nevala, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:NevalaNevala  5   	   5clr-namespace:Nevala.ViewModelsNevala.ViewModels  5   	   M IConsoleControl.WPF, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullS<clr-namespace:ConsoleControl.WPF;assembly=ConsoleControl.WPFConsoleControl.WPF 5   	   K GApex, Version=1.2.1.0, Culture=neutral, PublicKeyToken=98d06957926c086d?+clr-namespace:Apex.Converters;assembly=ApexApex.Converters 5	   	   [ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Y@clr-namespace:System.Windows.Forms;assembly=System.Windows.FormsSystem.Windows.Forms 5
   	   O KConsoleControlSample, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullY@clr-namespace:ConsoleControlSample;assembly=ConsoleControlSampleConsoleControlSample 5   	       Nevala.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml    	 5   	   ^
 ZXceed.Wpf.AvalonDock, Version=2.0.2000.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4l hXceed.Wpf.AvalonDock.Themes.VS2010, Version=2.0.2000.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47ad,http://schemas.xceed.com/wpf/xaml/avalondock 
  5   	   myclr-namespace:Nevala 
  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   0
viewmodelsclr-namespace:Nevala.ViewModels  5   	   QconsoleControl<clr-namespace:ConsoleControl.WPF;assembly=ConsoleControl.WPF  5   	   @apexConverters+clr-namespace:Apex.Converters;assembly=Apex  5	   	   Iwf@clr-namespace:System.Windows.Forms;assembly=System.Windows.Forms  5
   	   [consoleControlSample@clr-namespace:ConsoleControlSample;assembly=ConsoleControlSample  5   	     � Title$  
MainWindow��5   	    � WindowState$ 	Maximized=�6    � DataContext 5      %   Nevala.ViewModels.MainViewModel  5   
   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   ��  �� Path$ File.WindowLoaded� �� Mode$ TwoWay=�5      .��5      � 	 � ColumnDefinitions	 5   
   �� 5      $��6* �6   $	��350��6*   �� 5      $��5 �6   �� 5      $��4* �6   $	��100��6+   
 � RowDefinitions
 5   
   �� 5      $��18 �6   �� 5      $��25 �6   �� 5      $��1* �6   $��50��6(   �� 5      $��5 �6   �� 5       $��1* �6   $��50��6(   .+�5"   
      Nevala.OpenFileDialog  -   5          Name$ openFileDialog��5"         Filter$ All Files (*.*)|*.*��64      Multiselect . 6Q   ]� 5$   
   $��Stretch=�6   $��Stretch=�62   $��0��6N   $��3��6\   .+�5%      o� -   5        $��	menuStrip��5%      $��Stretch=�6%   $	��Top=�6C   $	��Top=�6[   $��0��6p   $��3��6}   .@�5&      m� $��_File��6   .@�5'      m� -   5        $��newMenuItem��5'      $
��_New��6V    m� Command 62   �� *File.NewCommand+ m� Icon 5(      �� 5)      $
��16px��6$   $/��)/Nevala;component/Images/ImageFileNew.png��62   $��Uniform=�6e   5+      m� 5,      -   5        $��openMenuItem��5,      $��_Open...��6X    63   �� *File.OpenCommand+ 5-      �� 5.      $
��16px��6$   $0��*/Nevala;component/Images/ImageFileOpen.png��62   $��Uniform=�6f   50      �� 51      m� 52      -   5        $��saveMenuItem��52      $��_Save��6X    63   �� *File.SaveCommand+ 53      �� 54      $
��16px��6$   $0��*/Nevala;component/Images/ImageFileSave.png��62   $��Uniform=�6f   56      m� 57      -   5        $��saveAsMenuItem��57      $��Save _As...��6`    65   �� *File.SaveFileAsCommand+6`   m� 58      -   5        $��saveAllMenuItem��58      $��	Save A_ll��6^    66   �� *File.SaveAllCommand+ 59      �� 5:      $
��16px��6$   $3��-/Nevala;component/Images/ImageFileSaveAll.png��62   $��Uniform=�6i   5<      �� 5=      m� 5>      -   5        $��closeMenuItem��5>      $��_Close��6Z    64   �� *File.CloseCommand+6Z   m� 5?      -	   5        $��closeAllMenuItem��5?      $��
_Close All��6`    67   �� *File.CloseAllCommand+6`   �� 5@      m� 5A      -
   5        $��printMenuItem��5A      $��_Print File��6Z    64   �� *File.PrintCommand+6Z   �� 5B      m� 5C      -   5        $��exitMenuItem��5C      $��E_xit��6X    63   �� *File.ExitCommand+6X   5D      m� 5E      $��_Edit��6   .@�5F      m� -   5        $��undoMenuItem��5F      $��_Undo��6X    63   �� *Edit.UndoCommand+ 5G      �� 5H      $
��16px��6$   $0��*/Nevala;component/Images/ImageEditUndo.png��62   $��Uniform=�6f   5J      m� 5K      -   5        $��redoMenuItem��5K      $��_Redo��6X    63   �� *Edit.RedoCommand+ 5L      �� 5M      $
��16px��6$   $0��*/Nevala;component/Images/ImageEditRedo.png��62   $��Uniform=�6f   5O      �� 5P      m� 5Q      -   5        $��cutMenuItem��5Q      $
��_Cut��6V    62   �� *Edit.CutCommand+ 5R      �� 5S      $
��16px��6$   $/��)/Nevala;component/Images/ImageEditCut.png��62   $��Uniform=�6e   5U      m� 5V      -   5        $��copyMenuItem��5V      $��_Copy��6X    63   �� *Edit.CopyCommand+ 5W      �� 5X      $
��16px��6$   $0��*/Nevala;component/Images/ImageEditCopy.png��62   $��Uniform=�6f   5Z      m� 5[      -   5        $��pasteMenuItem��5[      $��_Paste��6Z    64   �� *Edit.PasteCommand+ 5\      �� 5]      $
��16px��6$   $1��+/Nevala;component/Images/ImageEditPaste.png��62   $��Uniform=�6g   5_      �� 5`      m� 5a      -   5        $��SelectLineMenuItem��5a      $��Select_Line��6d    69   �� *Edit.SelectLineCommand+6d   m� 5b      -   5        $��SelectAllMenuItem��5b      $��Select _All��6b    68   �� *Edit.SelectAllCommand+6b   m� 5c      -   5        $��ClearSelection��5c      $��Clear Selection��6[    65   �� *Edit.ClearCommand+6[   �� 5d      m� 5e      $��_Find and Replace��6   .@�5f      m� -   5        $��IncrementalSearchMenuItem��5f   #   $��_Incremental Search��6v    6D   �� *Edit.incrementalSearchCommand+6v   m� 5g      -   5        $��FindMenuItem��5g   #   $��_Find��6\    67   �� *Edit.FindCommand+6\   m� 5h      -   5        $��ReplaceMenuItem��5h   #   $��_Replace��6b    6:   �� *Edit.ReplaceCommand+6b   m� 5i      -   5        $��ReplaceInFilesMenuItem��5i   #   $��_Replace in Files��6p    6A   �� *Edit.ReplaceInFilesCommand+6p   5j      m� 5k      -   5        $��Go_toMenuItem��5k      $��_Go To��6Y    64   �� *Edit.GoToCommand+6Y   �� 5l      m� 5m      $��
_Bookmarks��6   .@�5n      m� -   5        $��ToggleBookmarkMenuItem��5n   #   $��_Toggle Bookmark��6i    6A   �� *Edit.ToggleBookmark+6i   m� 5o      -   5        $��PreviousBookmarkMenuItem��5o   #   $��_Previous Bookmark��6m    6C   �� *Edit.PreviousBookmark+6m   m� 5p      -   5        $��NextBookmarkMenuItem��5p   #   $��Next _Bookmark��6e    6?   �� *Edit.NextBookmark+6e   m� 5q      -   5        $��ClearBookmarksMenuItem��5q   #   $��_Clear Bookmarks��6i    6A   �� *Edit.ClearBookmarks+6i   5r      �� 5s      m� 5t      $��	_Advanced��6   .@�5u      m� -   5        $��MakeUpperCaseMenuItem��5u   #   $��_Make Upper Case��6o    6A   �� *Edit.MakeUpperCaseCommand+6o   m� 5v      -   5        $��MakeLowerCaseMenuItem��5v   #   $��_Make Lower Case��6o    6A   �� *Edit.MakeLowerCaseCommand+6o   5w      5x      m� 5y      $��_View��6   .@�5z      m� -   5        $��zoomIn��5z      $��Zoom In��6U    6-   �� *View.ZooomInCommand+6U   m� 5{      -    5        $��zoomOut��5{      $��Zoom Out��6V    6.   �� *View.ZoomOutCommand+6V   m� 5|      -!   5        $��lineNumbersMenuItem��5|      $��Line Numbers��6f    6:   �� *View.LineNumbersCommand+6f   m� 5}      -"   5        $��wordWrapMenuItem��5}      $��	Word Wrap��6`    67   �� *View.WordWrapCommand+6`   m� 5~      -#   5        $
��fold��5~      $
��Fold��6P    6+   �� *View.FoldCommand+6P   m� 5      -$   5        $��unfold��5      $��Unfold��6T    6-   �� *View.UnFoldCommand+6T   m� 5�      -%   5        $��foldAll��5�      $��Fold All��6V    6.   �� *View.FoldAllCommand+6V   m� 5�      -&   5        $��	unfoldAll��5�      $��
Unfold All��6Z    60   �� *View.UnFoldAllCommand+6Z   5�      m� 5�      $��	_Settings��6   .@�5�      m� -'   5        $��Preferences��5�      $��Preferences��63   m� 5�      -(   5        $
��Font��5�      $
��Font��6+   m� 5�      -)   5        $��Import��5�      $��Import��6-   m� 5�      -*   5        $��ShortcutWrapper��5�      $��Shortcut Wrapper��66   5�      m� 5�      $
��_Run��6   .@�5�      m� -+   5        $	��Run��5�      $	��Run��6M    6*   �� *Run.RunCommand+6M   m� 5�      -,   5        $��SendviaOutlook��5�      $��Send via Outlook��65   5�      m� 5�      $
��Help��6   .@�5�      m� --   5        $��	PowerHelp��5�      $��
Power Help��60   m� 5�      -.   5        $��About��5�      $��About��6,   m� 5�      -/   5        $��BahubaliHelp��5�      $��Bahubali Help��63   5�      5�      5�      ]� 5�   
   $��Stretch=�6   $��Stretch=�62   $��1��6N   $��3��6[   .+�5�      a� -0   5        $��	toolStrip��5�      $��Stretch=�6,   $	��Top=�6J   .+�5�      `� $��1��6   $��3��6+   .�5�      c� $
��25px��6    `� IsLocked . .@�5�      �� $
��23px��6!   $
��22px��6.   $	��0pxq�6<    � ToolTip$ New File (Ctrl+N)��5�   !   ��6=   �� *File.NewCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $/��)/Nevala;component/Images/ImageFileNew.png��66   $��Uniform=�6i   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Open File (Ctrl+O)��5�   "   ��6?   �� *File.OpenCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $0��*/Nevala;component/Images/ImageFileOpen.png��66   $��Uniform=�6j   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Save File (Ctrl+S)��5�   "   ��6?   �� *File.SaveCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $0��*/Nevala;component/Images/ImageFileSave.png��66   $��Uniform=�6j   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $# Save All Files (Ctrl+Shift+S)��5�   !   ��6I   �� *File.SaveAllCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $3��-/Nevala;component/Images/ImageFileSaveAll.png��66   $��Uniform=�6m   5�      5�      �� 5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Cut (Ctrl+X)��5�   !   ��68   �� *Edit.CutCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $/��)/Nevala;component/Images/ImageEditCut.png��66   $��Uniform=�6i   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Copy (Ctrl+C)��5�   "   ��6:   �� *Edit.CopyCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $0��*/Nevala;component/Images/ImageEditCopy.png��66   $��Uniform=�6j   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Paste (Ctrl+V)��5�   "   ��6;   �� *Edit.PasteCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $1��+/Nevala;component/Images/ImageEditPaste.png��66   $��Uniform=�6k   5�      5�      �� 5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Undo (Ctrl+Z)��5�   "   ��6:   �� *Edit.UndoCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $0��*/Nevala;component/Images/ImageEditUndo.png��66   $��Uniform=�6j   5�      5�      �� 5�      $
��23px��6!   $
��22px��6.   $	��0pxq�6<   $ Redo (Ctrl+Y)��5�   "   ��6:   �� *Edit.RedoCommand+.��5�      �� .+�5�   "   �� $
��16px��6(   $0��*/Nevala;component/Images/ImageEditRedo.png��66   $��Uniform=�6j   5�      5�      5�      5�      5�      5�      ]� 5�   
   $��Stretch=�6   $��Stretch=�62   $��2��6N   $��3��6\   $��1��6m   .+�5�      ]� -1   5        $��Textarea��5�      $��Stretch=�6(   $��Stretch=�6F   $��Bottom=�6b   .+�5�      ) 
 #Xceed.Wpf.AvalonDock.DockingManager  -2   5        $��	dockPanel��5�   $   $��3��65   $��0��6B    5�        5�      $ ActiveContentChanged��6)   . 5�         64   �� $" File.DockPanelContentChanged�$ TwoWay=�5�         Theme 5�      . 
 (Xceed.Wpf.AvalonDock.Themes.GenericTheme  5�         Layout. 5�      ,	 
 &Xceed.Wpf.AvalonDock.Layout.LayoutRoot	   	  	RootPanel. 5�      -
 
 'Xceed.Wpf.AvalonDock.Layout.LayoutPanel
  � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=2.0.2000.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 5�      4 
 .Xceed.Wpf.AvalonDock.Layout.LayoutDocumentPane  -3   5        documentsRoot��� 
 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutContent, Xceed.Wpf.AvalonDock, Version=2.0.2000.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   IsMaximized . 5�   K   5�      5�      5�      5�      5�      �� 5�   
   $��1��6   $��2��6'   $��3��64   $��5��6E   $��Stretch=�6O   �� 5�   
   -4   5        $��	Navigator��5�      $��2��6#   $��1��63   $��0,2,2,1q�6l   ��6@   �� *IsExpandedDir+$ TwoWay=�.��6~    5�      #   Nevala.DirectoryItemViewModel  5�      .��5�   #    J� InputBindings 5�      �� 5�       �� Gesture$ Enter��6    �� Command 6-   �� *ExpandDirCommand+.��5�   %   5�      �� 5�   
   $��2��6   $��2��6%    �� TabStripPlacement$ Bottom=�62   .@�5�      �� $��File Explorer��6   .��5�      � $��2��6   $��2��6'   $��3��64   	 5�      �� 5�      $
��128* �6+   �� 5�      $	��61* �6+   .+�5�      R� -5   5         R�Name$ 
FolderView��5�      $��2��6Q   ��63   �� *Items+ � 	Resources 5�       �� 
TargetType �� Property   AppleStyleScrollBarStyle �� Value��%P   '��       �� 5�      " ��6$   .�5�   "   ��  � ��# �   6=   5�      5�       5      (   "Nevala.DirectoryStructureViewModel  5     ��5     �� 5     " Q�6$   .�5  "   ��  �@Q�
IsExpanded 6?   �� *
IsExpanded+$ TwoWay=�5     ��5	     �� 5
       �� ItemsSource  67   �� *
Children+.R�5  "   �� ! �� Orientation$! 
Horizontal=�6-   .+�5  &   �� $��Center=�60   ��6K   �� *Name+ 5  *   d� 5  .   " d� MouseAction$" LeftDoubleClicke�6;    6Y   �� *OpenOnClick+5  '   5  #   5     5     5     5     �� 5     $��Variable Explorer��6   5     5     �� 5  
   $��2��6   $��3��6'   $��5��65   $��Stretch=�6@   �� 5  
   -6   5        $��
tabControl��5     $��2��6(   $��4��68   $ Bottom=�6E   $��Stretch=�6`   $��Visible=�6|   .@�5     �� -7   5        $��Python��5     $��Python��6$   .��5     7  1System.Windows.Forms.Integration.WindowsFormsHost  -8   5        #  Name$# phost��5  #   $��3��62   $��Visible=�6B   $��Visible=�6u   5      5!     �� 5"     -9   5        $��IPython��5"     $��IPython��6&   .��5#       -:   5        $# ihost��5#  #   $��3��62   $��Visible=�6B   $��Visible=�6u   5$     5%     5&     5+     5,     