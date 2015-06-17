#tag Window
Begin Window Window1
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   2000890248
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   600
   Placement       =   0
   Resizeable      =   True
   Title           =   "MyWindow"
   Visible         =   True
   Width           =   600
   Begin PresentationTextArea fldResult
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   321
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   61
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin PresentationPushButton btnSerialize
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Serialize"
      Default         =   False
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   13
      Underline       =   False
      Visible         =   True
      Width           =   119
   End
   Begin PresentationPushButton btnDeserialize
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Deserialize"
      Default         =   False
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   151
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   13
      Underline       =   False
      Visible         =   True
      Width           =   119
   End
   Begin PresentationCheckBox cbIncludePrivate
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Inc. Private"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   299
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   128
   End
   Begin PresentationCheckBox cbIncludeProtected
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Inc. Protected"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   299
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   119
   End
   Begin PresentationCheckBox cbIncludeComputed
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Inc. Computed"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   24
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   128
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  //
		  // Register the classes.
		  // Normally this would be done earlier, like in App.Open
		  // but since this is for demo purposes, we do it here.
		  //
		  
		  Serializer_MTC.RegisterClass GetTypeInfo( MyMajorClass )
		  Serializer_MTC.RegisterClass GetTypeInfo( MyMinorClass )
		  
		  //
		  // Set up the test objects that will be serialized
		  //
		  
		  dim d as new Global.Dictionary
		  d.Value( "hi" ) = "ho"
		  d.Value( new MyMinorClass ) = 3
		  
		  dim dn as new Xojo.Core.Dictionary
		  dn.Value( "ho" ) = "hi"
		  
		  SomeObject = new MyMajorClass
		  SomeObject.LongString = "This is a long, long string"
		  SomeObject.SomeText = "Yes, this is just some text"
		  SomeObject.SomeInt = 3
		  SomeObject.MyDate = new Date
		  SomeObject.MyDict = d
		  SomeObject.MyNewDict = dn
		  SomeObject.MyJSON = new JSONItem( "[1,2,3]" )
		  
		  SomeObject.VArr.Append 1
		  SomeObject.VArr.Append new Dictionary
		  SomeObject.VArr.Append new Date
		  SomeObject.VArr.Append new MyMinorClass
		  
		  SomeObject.IntArr.Append 10000
		  SomeObject.IntArr.Append -5555
		  
		  SomeObject.OArr.Append new MyMinorClass
		  
		  dim m as new MyMinorClass
		  m.B = true
		  m.D = 10.10
		  SomeObject.MinorClass = m
		  
		  //
		  // Set up the checkboxes with the defaults
		  //
		  Serializer = new Serializer_MTC
		  cbIncludePrivate.Value = Serializer.IncludePrivate
		  cbIncludeProtected.Value = Serializer.IncludeProtected
		  cbIncludeComputed.Value = Serializer.IncludeComputed
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AppendToResult(value As Variant)
		  fldResult.AppendText value.StringValue
		  fldResult.AppendText EndOfLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNewSerializer() As Serializer_MTC
		  dim s as new Serializer_MTC
		  
		  s.IncludePrivate = cbIncludePrivate.Value
		  s.IncludeProtected = cbIncludeProtected.Value
		  s.IncludeComputed = cbIncludeComputed.Value
		  
		  return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ObjectAsText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Serializer As Serializer_MTC
	#tag EndProperty

	#tag Property, Flags = &h0
		SomeObject As MyMajorClass
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSerialize
	#tag Event
		Sub Action()
		  ObjectAsText = Serializer.ToJSON( SomeObject )
		  
		  fldResult.Text = ""
		  
		  //
		  // No pretty print option yet, so go through JSONItem
		  //
		  dim ji as new JSONItem( ObjectAsText )
		  ji.Compact = false
		  
		  AppendToResult ji.ToString
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDeserialize
	#tag Event
		Sub Action()
		  if ObjectAsText = "" then
		    AppendToResult "Object has not been serialized yet"
		    return
		  end if
		  
		  dim m as MyMajorClass = MyMajorClass( Serializer.FromJSON( ObjectAsText ) )
		  
		  if Serializer_MTC.AreObjectsEqual( m, SomeObject ) then
		    AppendToResult "Successfully deserialized"
		  else
		    AppendToResult "FAILED!!"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbIncludePrivate
	#tag Event
		Sub Action()
		  Serializer.IncludePrivate = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbIncludeProtected
	#tag Event
		Sub Action()
		  Serializer.IncludeProtected = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbIncludeComputed
	#tag Event
		Sub Action()
		  Serializer.IncludeComputed = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ObjectAsText"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
