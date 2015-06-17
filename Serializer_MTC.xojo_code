#tag Class
Protected Class Serializer_MTC
	#tag Method, Flags = &h21
		Private Shared Function AreArraysEqual(v1 As Variant, v2 As Variant, propType As String) As Boolean
		  // Assumes that these are the same kinds of arrays
		  // and neither is nil
		  
		  dim r as Boolean = true
		  
		  select case True
		  case propType = "String()" or v1.ArrayElementType = Variant.TypeString
		    dim arr1() as string = v1
		    dim arr2() as string = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if StrComp( arr1( i ), arr2( i ), 0 ) <> 0 then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "UInt8()"
		    dim arr1() as UInt8 = v1
		    dim arr2() as UInt8 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Int8()"
		    dim arr1() as Int8 = v1
		    dim arr2() as Int8 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "UInt16()"
		    dim arr1() as UInt16 = v1
		    dim arr2() as UInt16 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Int16()"
		    dim arr1() as Int16 = v1
		    dim arr2() as Int16 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "UInt32()"
		    dim arr1() as UInt32 = v1
		    dim arr2() as UInt32 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Int32()" or v1.ArrayElementType = Variant.TypeInteger
		    dim arr1() as Int32 = v1
		    dim arr2() as Int32 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "UInt64()"
		    dim arr1() as UInt64 = v1
		    dim arr2() as UInt64 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Int64()" or v1.ArrayElementType = Variant.TypeLong
		    dim arr1() as Int64 = v1
		    dim arr2() as Int64 = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Double()" or v1.ArrayElementType = Variant.TypeDouble
		    dim arr1() as Double = v1
		    dim arr2() as Double = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Single()" or v1.ArrayElementType = v1.TypeSingle
		    dim arr1() as single = v1
		    dim arr2() as single = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Currency()" or v1.ArrayElementType = Variant.TypeCurrency
		    dim arr1() as currency = v1
		    dim arr2() as currency = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Boolean()" or v1.ArrayElementType = Variant.TypeBoolean
		    dim arr1() as boolean = v1
		    dim arr2() as boolean = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if arr1( i ) <> arr2( i ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Variant()"
		    dim arr1() as variant = v1
		    dim arr2() as variant = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if not AreValuesEqual( arr1( i ), arr2( i ), "" ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case propType = "Object()"
		    dim arr1() as Object = v1
		    dim arr2() as Object = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if not AreObjectsEqual( arr1( i ), arr2( i ) ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  case else // Must be some object or variant
		    dim arr1() as Object = v1
		    dim arr2() as Object = v2
		    
		    if arr1.Ubound <> arr2.Ubound then
		      r = false
		    else
		      for i as integer = 0 to arr1.Ubound
		        if not AreValuesEqual( arr1( i ), arr2( i ), "" ) then
		          r = false
		          exit
		        end if
		      next
		    end if
		    
		  end select
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function AreDictionariesEqual(d1 As Dictionary, d2 As Dictionary) As Boolean
		  dim keys1() as Variant = d1.Keys
		  dim keys2() as Variant = d2.Keys
		  
		  if not AreArraysEqual( keys1, keys2, "" ) then
		    return false
		  end if
		  
		  dim values1() as Variant = d1.Values
		  dim values2() as Variant = d2.Values
		  
		  if not AreArraysEqual( values1, values2, "" ) then
		    return false
		  end if
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function AreObjectsEqual(o1 As Object, o2 As Object) As Boolean
		  // A utility method to compare two objects to make sure they contain the same data
		  
		  if o1 is nil and o2 is nil then
		    return true
		  end if
		  
		  if o1 is nil or o2 is nil then
		    return false
		  end if
		  
		  if o1 is o2 then
		    return true
		  end if
		  
		  dim ti1 as Introspection.TypeInfo = Introspection.GetType( o1 )
		  dim ti2 as Introspection.TypeInfo = Introspection.GetType( o2 )
		  
		  if ti1.FullName <> ti2.FullName then
		    return false
		  end if
		  
		  dim r as boolean = true // Assume they are the same
		  
		  if o1 IsA Dictionary then
		    r = AreDictionariesEqual( Dictionary( o1 ), Dictionary( o2 ) )
		    
		  elseif o1 IsA JSONItem then
		    dim j1 as JSONItem = JSONItem( o1 )
		    dim j2 as JSONItem = JSONItem( o2 )
		    
		    r = StrComp( j1.ToString, j2.ToString, 0 ) = 0
		    
		  elseif o1 IsA Date then
		    dim d1 as Date = Date( o1 )
		    dim d2 as Date = Date( o2 )
		    
		    if d1.GMTOffset <> d2.GMTOffset or d1.TotalSeconds <> d2.TotalSeconds then
		      r = false
		    end if
		    
		  end if
		  
		  if r then // Haven't determined it to be false yet
		    
		    //
		    // They are the same class, so let's get the actual data
		    //
		    
		    dim props() as Introspection.PropertyInfo = ti1.GetProperties
		    
		    for each prop as Introspection.PropertyInfo in props
		      dim v1 as Variant = prop.Value( o1 )
		      dim v2 as Variant = prop.Value( o2 )
		      
		      if not AreValuesEqual( v1, v2, prop.PropertyType.Name ) then
		        r = false
		        exit
		      end if
		      
		    next
		    
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function AreValuesEqual(v1 As Variant, v2 As Variant, propType As String) As Boolean
		  if v1.IsNull and v2.IsNull then
		    return true
		  end if
		  
		  if v1.IsNull or v2.IsNull then
		    return false
		  end if
		  
		  if v1 is v2 then
		    return true
		  end if
		  
		  //
		  // If either is text, make it a string
		  //
		  if v1.Type = Variant.TypeText then
		    v1 = v1.StringValue
		  end if
		  
		  if v2.Type = Variant.TypeText then
		    v2 = v2.StringValue
		  end if
		  
		  dim type1 as integer = v1.Type
		  dim type2 as integer = v2.Type
		  
		  if type1 <> type2 then
		    return false
		  end if
		  
		  if v1.Type = Variant.TypeObject or v1.Type = Variant.TypeDate then
		    if not AreObjectsEqual( v1, v2 ) then
		      return false
		    end if
		    
		  elseif v1.IsArray or v1.Type = Variant.TypeArray or propType.Right( 2 ) = "()" then
		    if not AreArraysEqual( v1, v2, propType ) then
		      return false
		    end if
		    
		  elseif v1.Type = Variant.TypeString then
		    if StrComp( v1.StringValue, v2.StringValue, 0 ) <> 0 then
		      return false
		    end if
		    
		  else // It's something other than an object, array, or string
		    if v1 <> v2 then
		      return false
		    end if
		    
		  end if
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DecodeArray(root As Xojo.Core.Dictionary) As Variant
		  //
		  // WARNING: All the possible array types are not represented
		  //
		  
		  dim type as string = root.Value( kKeyArrayType )
		  dim propsChild as Xojo.Core.Dictionary = root.Value( kKeyProperties )
		  dim elementsChild() as Auto = propsChild.Value( kKeyArrayElements )
		  
		  select case type
		  case "String()"
		    dim arr() as string
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Integer()"
		    dim arr() as integer
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Int8()"
		    dim arr() as Int8
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Int16()"
		    dim arr() as Int16
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Int32()"
		    dim arr() as Int32
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Int64()"
		    dim arr() as Int64
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "UInt8()"
		    dim arr() as UInt8
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "UInt16()"
		    dim arr() as UInt16
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "UInt32()"
		    dim arr() as UInt32
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "UInt64()"
		    dim arr() as UInt64
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Double()"
		    dim arr() as Double
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Single()"
		    dim arr() as Single
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Boolean()"
		    dim arr() as Boolean
		    for i as integer = 0 to elementsChild.Ubound
		      arr.Append elementsChild( i )
		    next
		    return arr
		    
		  case "Color()"
		    dim arr() as Color
		    for i as integer = 0 to elementsChild.Ubound
		      dim value as variant = elementsChild( i )
		      value = FromJSONValue( value )
		      arr.Append value
		    next
		    return arr
		    
		  case "Object()"
		    dim arr() as Object
		    for i as integer = 0 to elementsChild.Ubound
		      dim value as variant = elementsChild( i )
		      value = FromJSONValue( value )
		      arr.Append value
		    next
		    return arr
		    
		  case "Variant()"
		    dim arr() as Variant
		    for i as integer = 0 to elementsChild.Ubound
		      dim value as variant = elementsChild( i )
		      value = FromJSONValue( value )
		      arr.Append value
		    next
		    return arr
		    
		  case "Auto()"
		    dim arr() as Auto
		    for i as integer = 0 to elementsChild.Ubound
		      dim value as variant = elementsChild( i )
		      value = FromJSONValue( value )
		      arr.Append value
		    next
		    return arr
		    
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DecodeColor(propsChild As Xojo.Core.Dictionary) As Color
		  dim r as integer = propsChild.Value( "Red" )
		  dim g as integer = propsChild.Value( "Green" )
		  dim b as integer = propsChild.Value( "Blue" )
		  dim a as integer = propsChild.Value( "Alpha" )
		  
		  dim c as color = RGB( r, g, b, a )
		  
		  return c
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DecodeDictionary(propsChild As Xojo.Core.Dictionary, d As Global. Dictionary)
		  dim keysChild() as Auto = propsChild.Value( kKeyKeys )
		  dim valuesChild() as Auto = propsChild.Value( kKeyValues )
		  
		  for i as integer = 0 to keysChild.Ubound
		    dim key as variant = keysChild( i )
		    dim value as variant = valuesChild( i )
		    
		    key = FromJSONValue( key )
		    value = FromJSONValue( value )
		    
		    d.Value( key ) = value
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DecodeDictionary(propsChild As Xojo.Core.Dictionary, d As Xojo.Core.Dictionary)
		  dim keysChild() as Auto = propsChild.Value( kKeyKeys )
		  dim valuesChild() as Auto = propsChild.Value( kKeyValues )
		  
		  for i as integer = 0 to keysChild.Ubound
		    dim key as variant = keysChild( i )
		    dim value as variant = valuesChild( i )
		    
		    key = FromJSONValue( key )
		    value = FromJSONValue( value )
		    
		    d.Value( key ) = value
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DecodeObject(root As Xojo.Core.Dictionary) As Object
		  if root is nil then
		    return nil
		  end if
		  
		  dim r as Object
		  
		  dim propsChild as Xojo.Core.Dictionary = root.Value( kKeyProperties )
		  
		  dim type as string = root.Value( kKeyType )
		  
		  //
		  // We have to figure out what class it is and create a new one
		  //
		  
		  dim ti as Introspection.TypeInfo = TypeInfoDict.Lookup( type, nil )
		  if ti is nil then
		    dim err as new UnsupportedFormatException
		    err.Message = "Cannot deserialize a class that has not been registered"
		    raise err
		  end if
		  
		  dim constructors() as Introspection.ConstructorInfo = ti.GetConstructors
		  
		  //
		  // Look for the zero param constructor
		  //
		  for each constructor as Introspection.ConstructorInfo in constructors
		    dim params() as Introspection.ParameterInfo = constructor.GetParameters
		    if params.Ubound = -1 then
		      r = constructor.Invoke
		      exit
		    end if
		  next
		  
		  if r is nil then
		    //
		    // Work around a bug constructing a Dictionary
		    //
		    if type = "Dictionary" then
		      r = new Global.Dictionary
		    elseif type = "Xojo.Core.Dictionary" then
		      r = new Xojo.Core.Dictionary
		    elseif type = "JSONItem" then
		      r = new JSONItem
		    else
		      dim err as new UnsupportedFormatException
		      err.Message = "Could not find a zero-param Constructor for type """ + type + """"
		      raise err
		    end if
		  end if
		  
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    
		    //
		    // Make sure we can write this property 
		    //
		    if not prop.CanWrite then
		      continue for prop
		    end if
		    
		    if prop.IsComputed and not IncludeComputed then
		      continue for prop
		    end if
		    
		    if prop.IsProtected and not IncludeProtected then
		      continue for prop
		    end if
		    
		    if prop.IsPrivate and not IncludePrivate then
		      continue for prop
		    end if
		    
		    //
		    // Make sure this property is in the properties list
		    //
		    if not propsChild.HasKey( prop.Name ) then
		      continue for prop
		    end if
		    
		    dim value as variant = propsChild.Value( prop.Name )
		    value = FromJSONValue( value )
		    
		    //
		    // If an array of object, cycle through
		    //
		    dim valueType as integer = value.Type
		    dim elementType as integer = if( valueType >= 4096, valueType - 4096, -1 )
		    if elementType = Variant.TypeObject then
		      dim o() as Object = value
		      dim a as Auto = prop.Value( r )
		      dim dest() as Object = a
		      for i as integer = 0 to o.Ubound
		        dest.Append o( i )
		      next
		    else
		      prop.Value( r ) = value
		    end if
		  next
		  
		  //
		  // Handle the special cases
		  //
		  if r IsA Global.Dictionary then
		    DecodeDictionary( propsChild, Global.Dictionary( r ) )
		  elseif r IsA Xojo.Core.Dictionary then
		    DecodeDictionary( propsChild, Xojo.Core.Dictionary( r ) )
		  elseif r IsA JSONItem then
		    dim j as JSONItem = JSONItem( r )
		    j.Load propsChild.Value( kKeyJSONStringValue )
		  elseif r IsA Date then
		    dim d as Date = Date( r )
		    d.TotalSeconds = propsChild.Value( "TotalSeconds" ) // Have to make sure this is the last thing set
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeArray(v As Variant, propType As String) As Xojo.Core.Dictionary
		  //
		  // WARNING: All the possible array types are not represented
		  //
		  
		  //
		  // Determine the type of array it is first
		  //
		  
		  dim root as new Xojo.Core.Dictionary
		  root.Value( kKeyType ) = "Array"
		  
		  dim propsChild as new Xojo.Core.Dictionary
		  root.Value( kKeyProperties ) = propsChild
		  
		  dim elementsChild() as Auto
		  propsChild.Value( kKeyArrayElements ) = elementsChild
		  
		  dim elementType as integer = v.ArrayElementType
		  
		  if propType = "" and elementType = Variant.TypeObject then
		    propType = "Object()"
		  end if
		  
		  select case elementType
		  case Variant.TypeString
		    root.Value( kKeyArrayType ) = "String()"
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeText
		    root.Value( kKeyArrayType ) = "Text()"
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeDouble
		    root.Value( kKeyArrayType ) = "Double()"
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeSingle
		    root.Value( kKeyArrayType ) = "Single()"
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeInteger
		    if propType = "UInt32()" then
		      root.Value( kKeyArrayType ) = propType
		    else
		      root.Value( kKeyArrayType ) = "Int32()"
		    end
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeLong
		    if propType = "UInt64()" then
		      root.Value( kKeyArrayType ) = propType
		    else
		      root.Value( kKeyArrayType ) = "Int64()"
		    end
		    dim arr() as Int64 = v
		    for i as integer = 0 to arr.Ubound
		      elementsChild.Append arr( i )
		    next
		    
		  case Variant.TypeBoolean
		    root.Value( kKeyArrayType ) = "Boolean()"
		    propsChild.Value( kKeyArrayElements ) = v
		    
		  case Variant.TypeCurrency
		    root.Value( kKeyArrayType ) = "Currency()"
		    dim arr() as Currency = v
		    for i as integer = 0 to arr.Ubound
		      elementsChild.Append arr( i )
		    next
		    
		  case Variant.TypeColor
		    root.Value( kKeyArrayType ) = "Color()"
		    dim arr() as color = v
		    for i as integer = 0 to arr.Ubound
		      dim c as color = arr( i )
		      elementsChild.Append EncodeColor( c )
		    next
		    
		  case else
		    
		    select case propType
		    case "Auto()"
		      root.Value( kKeyArrayType ) = "Auto()"
		      dim arr() as Auto =  v
		      for i as integer = 0 to arr.Ubound
		        dim value as variant = ToJSONValue( arr( i ), "" )
		        elementsChild.Append value
		      next
		      
		    case else // Treat is at variant
		      root.Value( kKeyArrayType ) = "Variant()"
		      
		      //
		      // You can't go from a Variant that holds an array of some objects directly to
		      // an Object array, but you can go from an Auto that holds that array
		      // to an Object array. Am I exploiting a bug? Maybe, but it works.
		      //
		      
		      dim a as Auto = v
		      dim arr() as Variant = a
		      for i as integer = 0 to arr.Ubound
		        elementsChild.Append ToJSONValue( arr( i ), "" )
		      next
		      
		    end
		    
		  end
		  
		  return root
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeColor(c As Color) As Xojo.Core.Dictionary
		  dim root as new Xojo.Core.Dictionary
		  root.Value( kKeyType ) = "Color"
		  
		  dim propsChild as new Xojo.Core.Dictionary
		  root.Value( kKeyProperties ) = propsChild
		  
		  propsChild.Value( "Red" ) = c.Red
		  propsChild.Value( "Green" ) = c.Green
		  propsChild.Value( "Blue" ) = c.Blue
		  propsChild.Value( "Alpha" ) = c.Alpha
		  
		  return root
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeDictionary(dict As Global.Dictionary) As Xojo.Core.Dictionary
		  dim root as new Xojo.Core.Dictionary
		  root.Value( kKeyType ) = "Dictionary"
		  
		  dim propsChild as new Xojo.Core.Dictionary
		  root.Value( kKeyProperties ) = propsChild
		  
		  dim keysChild() as Auto
		  propsChild.Value( kKeyKeys ) = keysChild
		  
		  dim valuesChild() as Auto
		  propsChild.Value( kKeyValues ) = valuesChild
		  
		  dim keys() as variant = dict.Keys
		  dim values() as variant = dict.Values
		  for i as integer = 0 to keys.Ubound
		    dim key as variant = keys( i )
		    dim value as variant = values( i )
		    
		    key = ToJSONValue( key, "" )
		    value = ToJSONValue( value, "" )
		    
		    keysChild.Append key
		    valuesChild.Append value
		  next
		  
		  return root
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeDictionary(dict As Xojo.Core.Dictionary) As Xojo.Core.Dictionary
		  dim root as new Xojo.Core.Dictionary
		  root.Value( kKeyType ) = "Dictionary"
		  
		  dim propsChild as new Xojo.Core.Dictionary
		  root.Value( kKeyProperties ) = propsChild
		  
		  dim keysChild() as Auto
		  propsChild.Value( kKeyKeys ) = keysChild
		  
		  dim valuesChild() as Auto
		  propsChild.Value( kKeyValues ) = valuesChild
		  
		  for each entry as Xojo.Core.DictionaryEntry in dict
		    dim key as variant = ToJSONValue( entry.Key, "" )
		    dim value as variant = ToJSONValue( entry.Value, "" )
		    
		    keysChild.Append key
		    valuesChild.Append value
		  next
		  
		  return root
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeJSONItem(j As JSONItem) As Xojo.Core.Dictionary
		  // Converts a stored JSONItem to a serialized version
		  
		  dim root as new Xojo.Core.Dictionary
		  root.Value( kKeyType ) = Introspection.GetType( j ).FullName
		  
		  dim propsChild as new Xojo.Core.Dictionary
		  root.Value( kKeyProperties ) = propsChild
		  
		  dim s as string
		  dim cnt as integer
		  s = j.ToString
		  cnt = j.Count
		  
		  propsChild.Value( kKeyJSONStringValue ) = s
		  propsChild.Value( kKeyJSONCount ) = cnt
		  
		  return root
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeObject(o As Object) As Xojo.Core.Dictionary
		  dim root as Xojo.Core.Dictionary
		  
		  if o is nil then
		    //
		    // Return nil
		    //
		    
		  else
		    
		    //
		    // Get all the properties via Introspection
		    // Structure will be:
		    //    Type: FullName
		    //    Properties:
		    //      PropName: Value
		    //
		    
		    dim ti as Introspection.TypeInfo = Introspection.GetType( o )
		    
		    //
		    // Make sure this is a registered class
		    //
		    if not TypeInfoDict.HasKey( ti.FullName ) then
		      dim err as new UnsupportedFormatException
		      err.Message = "Attempting to serialize a class that has not been registered"
		      raise err
		    end if
		    
		    dim propsChild as Xojo.Core.Dictionary
		    if o IsA Dictionary then
		      root = EncodeDictionary( Dictionary( o ) )
		      propsChild = root.Value( kKeyProperties )
		      
		    elseif o IsA Xojo.Core.Dictionary then
		      root = EncodeDictionary( Xojo.Core.Dictionary( o ) )
		      propsChild = root.Value( kKeyProperties )
		      
		    elseif o IsA JSONItem then
		      root = EncodeJSONItem( JSONItem( o ) )
		      propsChild = root.Value( kKeyProperties )
		      
		    else
		      root = new Xojo.Core.Dictionary
		      
		      propsChild = new Xojo.Core.Dictionary
		      root.Value( kKeyProperties ) = propsChild
		      
		    end if
		    
		    root.Value( kKeyType ) = ti.FullName
		    
		    dim props() as Introspection.PropertyInfo = ti.GetProperties
		    for each prop as Introspection.PropertyInfo in props
		      if not prop.CanRead or not prop.CanWrite then
		        //
		        // We only want properties that we can read and write back later
		        //
		        continue for prop
		      end if
		      
		      if prop.IsComputed and not IncludeComputed then
		        continue for prop
		      end if
		      
		      if prop.IsProtected and not IncludeProtected then
		        continue for prop
		      end if
		      
		      if prop.IsPrivate and not IncludePrivate then
		        continue for prop
		      end if
		      
		      dim value as Variant = prop.Value( o )
		      value = ToJSONValue( value, prop.PropertyType.Name )
		      propsChild.Value( prop.Name ) = value
		    next
		    
		    //
		    // Special actions 
		    //
		    select case o
		    case IsA Date
		      //
		      // Make sure GMTOffset and TotalSeconds are included
		      //
		      dim d as Date = Date( o )
		      propsChild.Value( "TotalSeconds" ) = d.TotalSeconds
		      propsChild.Value( "GMTOffset" ) = d.GMTOffset
		    end select
		    
		  end if
		  
		  return root
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FromJSON(jsonString As String) As Variant
		  dim d as Xojo.Core.Dictionary = Xojo.Data.ParseJSON( jsonString.ToText )
		  dim v as variant = FromJSONValue( d )
		  
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FromJSONValue(v As Variant) As Variant
		  // Takes the JSON value and converts it, if needed
		  
		  if v is nil or v.IsNull then
		    
		    return nil
		    
		  elseif v IsA Xojo.Core.Dictionary then
		    
		    dim j as Xojo.Core.Dictionary = Xojo.Core.Dictionary( v.ObjectValue )
		    dim type as string = j.Value( kKeyType )
		    
		    select case type
		    case "Color"
		      return DecodeColor( j.Value( kKeyProperties ) )
		      
		    case "Array"
		      return DecodeArray( j )
		      
		    case else
		      return DecodeObject( j )
		    end select
		    
		  else
		    
		    return v
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub RegisterClass(ti As Introspection.TypeInfo)
		  TypeInfoDict.Value( ti.FullName ) = ti
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON(v As Variant) As String
		  v = ToJSONValue( v, "" )
		  dim t as Text = Xojo.Data.GenerateJSON( v )
		  return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ToJSONValue(v As Variant, propType As String) As Variant
		  // Examines the value and returns something that can be stored within a JSONItem
		  
		  if v is nil or v.IsNull then
		    return nil
		  end if
		  
		  dim type as integer = v.Type
		  if propType = "" and type >= 4096 then
		    type = Variant.TypeArray
		  end if
		  
		  select case type
		  case Variant.TypeColor
		    return EncodeColor( v.ColorValue )
		    
		  case Variant.TypeDate, Variant.TypeObject
		    return EncodeObject( v )
		    
		  case Variant.TypeArray
		    return EncodeArray( v, propType )
		    
		  case Variant.TypeLong // Special case, has to return the Int64 version
		    return v.Int64Value
		    
		  case else
		    if propType.Right( 2 ) = "()" then
		      return EncodeArray( v, propType )
		    else
		      return v
		    end if
		    
		  end select
		End Function
	#tag EndMethod


	#tag Note, Name = Usage
		Add classes that you would want to serialize by calling:
		
		  RegisterClass GetTypeInfo( TheClass )
		
		You can serialize an object by calling:
		  
		  c = new TheClass
		  dim j as string = Serializer_MTC.ToJSON( c )
		
		Deserialize with:
		
		  dim o as object = Serializer_MTC.FromJSON( j )
		  dim c as TheClass = TheClass( o )
		
		You can serialize anything the class recognizes, so this is perfectly valid:
		
		  RegisterClass GetTypeInfo( TheClass )
		  dim arr() as TheClass
		  arr.Append new TheClass
		  
		  dim j as string = Serializer_MTC.ToJSON( arr )
		
		When you get it back, you will get an array of variant so you'll have to cycle through
		the elements:
		
		  dim varr() as variant = Serializer_MTC.FromJSON( j )
		  dim arr() as TheClass
		  for i as integer = 0 to varr.Ubound
		    arr.Append varr( i )
		  next
		
	#tag EndNote

	#tag Note, Name = Why not JSONItem?
		mework functions rather than JSONItem for 
		four reasons:
		
		1) They are faster.
		2) Some aspects, like adding a string array, are easier and faster.
		3) They are waaay faster.
		4) Like, you can't believe how much faster.
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		IncludeComputed As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		IncludePrivate As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		IncludeProtected As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mTypeInfoDict As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  if mTypeInfoDict is nil then
			    mTypeInfoDict = new Dictionary
			    
			    //
			    // Special cases
			    //
			    RegisterClass GetTypeInfo( Date )
			    RegisterClass GetTypeInfo( Global.Dictionary )
			    RegisterClass GetTypeInfo( Xojo.Core.Dictionary )
			    RegisterClass GetTypeInfo( CriticalSection )
			    RegisterClass GetTypeInfo( JSONItem )
			  end if
			  
			  return mTypeInfoDict
			  
			End Get
		#tag EndGetter
		Private Shared TypeInfoDict As Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = kKeyArrayElements, Type = String, Dynamic = False, Default = \"Elements", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyArrayType, Type = String, Dynamic = False, Default = \"Array Type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyJSONCount, Type = String, Dynamic = False, Default = \"Count", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyJSONStringValue, Type = String, Dynamic = False, Default = \"String Value", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyKeys, Type = String, Dynamic = False, Default = \"Keys", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyProperties, Type = String, Dynamic = False, Default = \"Properties", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyType, Type = String, Dynamic = False, Default = \"Type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kKeyValues, Type = String, Dynamic = False, Default = \"Values", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="IncludeComputed"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludePrivate"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeProtected"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
