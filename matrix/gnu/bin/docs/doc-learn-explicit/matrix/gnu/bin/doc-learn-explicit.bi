#inclib "doc-learn-explicit"
Declare Function Add2( ByVal x As Integer, ByVal y As Integer ) As Integer
Let x = 100
Let y = 100
End

Option Explicit

/'
When examining conversion functions it is important to understand how the
function rounds with both negative and positive numbers. The FreeBasic conversion
functions round numbers up, making positive number more positive and negative
numbers more negative. The following program illustrates the rounding with Cast and
Cint, as well as demonstrating that the conversion functions will work with expressions as
well as numbers.
'/

Declare Operator Cint | Cast ( ByVal stxValue1 As Double, ByVal stxValue2 As Double ) As double

Dim as Double stxDouble1, stxDouble2, stxDouble3
Dim as Integer stxValues

'Set variable ranges
stxDouble1 = 143.5
stxDouble3 = 143.4
stxDouble2 = ­143.5
stxValues = 1300
stxValue1 = 1300*10
stxValue2 = 1300*20

'Show cast in action
Print "** Cast **"
Print "Double1 ";stxDouble1;" cast to integer ";Cast(Integer, stxDouble1)
Print "Double2 ";stxDouble2;" cast to integer ";Cast(Integer, stxDouble2)
Print "Double3 ";stxDouble3;" cast to integer ";Cast(Integer, stxDouble3)
Print "Expression ";stxDouble1;" + ";stxValues;" cast to double ";
Print Cast(Double, stxDouble1 + stxValues + stxValue1 + stxValue2)
Print

'Show cint in action
Print "** CInt **"
Print "Double1 ";stxDouble1;" cint to integer ";CInt(stxDouble1)
Print "Double2 ";stxDouble2;" cast to integer ";CInt(stxDouble2)
Print "Double3 ";stxDouble3;" cast to integer ";CInt(stxDouble3)
Print "Expression ";stxDouble1;" + ";stxValues;" + ";stxValue1;" + ";stxValue2;"  cast to integer ";CInt(stxDouble1 + stxValues)
Print "Expression ";stxDouble2;" + ";stxValues;" + ";stxValue1;" + ";stxValue2;" cast to integer ";CInt(stxDouble2 + stxValues)
Print

Sleep

End

