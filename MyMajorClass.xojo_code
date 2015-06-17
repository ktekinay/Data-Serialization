#tag Class
Protected Class MyMajorClass
	#tag Property, Flags = &h0
		IntArr() As Int32
	#tag EndProperty

	#tag Property, Flags = &h0
		LongString As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MinorClass As MyMinorClass
	#tag EndProperty

	#tag Property, Flags = &h0
		MyColor As Color = &cAABBCC00
	#tag EndProperty

	#tag Property, Flags = &h0
		MyDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		MyDict As Global.Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		MyJSON As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		MyNewDict As Xojo.Core.Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		OArr() As MyMinorClass
	#tag EndProperty

	#tag Property, Flags = &h0
		SomeInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SomeText As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		VArr() As Variant
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LongString"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MyColor"
			Group="Behavior"
			InitialValue="&cAABBCC00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SomeInt"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SomeText"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
