#inclib "doc-learn-explicit"
#-lang qb

/'
As with the other conversion functions, this should be tested with both negative
and positive numbers to see how the function behaves. The program intfix.bas listed
below illustrates the results returned by the functions as well as their use with
calculations.
'/

'Create some double variables
Dim As Double stxDouble1 = ­5.5, stxDouble2 = 5.9
'Show rounding on negative and positive values
Print "Doubles:", stxDouble1, stxDouble2
Print "Int:", Int(stxDouble1), Int(stxDouble2)
Print "Fix:", Fix(stxDouble1), Fix(stxDouble2)
Print
'Try some calculation expressions
stxDouble1 = ­15.78
stxDouble2 = 22.12
Print "Expression:",stxDouble1;" +";stxDouble2;" = "; Str(stxDouble1 + stxDouble2)

Print "Int:", Int(stxDouble1 + stxDouble2)
Print "Fix:", Fix(stxDouble1 + stxDouble2)
'Wait for keypress
Sleep
End