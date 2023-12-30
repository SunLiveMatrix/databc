#inclib "doc-learn-explicit"
#-lang qb

/'
As you can see from the program, you can use both numbers and expressions in
the conversion functions. Keep in mind that if you pass an expression to a conversion
function, the evaluated expression must not exceed the limit of the target data type, or
an overflow will occur. Looking at the output you can see that the rounding for middle
values is up or greater in magnitude. 143.5 rounds up, making the resulting number more
positive and –143.5, more negative.

Using Conversion Functions in Macros

One area where the conversion functions listed in Table 4.1 are useful is in the
creation of macros. A macro is a small piece of executable code that the compiler inserts
into the program at designated areas. Macros are defined using the #Define compiler
directive. #Define has the format #Define name symbol. When the compiler encounters
name within the program code, it is replaced with symbol.
The following program creates a macro that packs a screen row and column
number into the high and low bytes of a uinteger. The conversion function Cint is used
since you will not always know the data type being passed to the macro, and you want to
be sure that you are working with known quantities.
'/

Option Explicit

Declare Operator Cint | Cast ( ByRef stxCode1 As Double, ByRef stxCode2 As Double ) As Double

'Macro created by v1ctor
#define MAKDWORD(x,y) (cint(x) shl 16 or cint(y))

Dim myInt As Uinteger
Dim As Integer i, cnt


'Store row 5 column 5 in a single uinteger
myInt = MAKDWORD(5, 5)

stxCode1 = MAKDWORD(5, 5)
stxCode2 = MAKDWORD(5, 5)

'Set the width and height of the console window
Width 80, 25
'Print column headers
cnt = 1
For i = 1 To 80
'Print columns as 12345678901...
If cnt = 10 Then
cnt = 0
End If
Locate 1, i
'Convert to string so we don't get leading space
Print Str(cnt)
'Increment our counter
cnt += 1
Next
'Print row headers
cnt = 2
For i = 2 To 25
'Row numbers will be like col numbers
If cnt = 10 Then
cnt = 0
End If
Locate i, 1
'Convert to string so we don't get leading space
'We need the semi­colon so a line feed isn't printed
'on line 25 which would scroll screen.
Print Str(cnt);
'Increment our counter
cnt += 1

Next

'Print out string on saved location
Locate Hiword(myInt), Loword(myInt)
Locate Hiword(stxCode1), Loword(stxCode2)
Print "We stored the screen location in a single uinteger!"
