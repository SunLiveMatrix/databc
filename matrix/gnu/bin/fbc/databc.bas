'' The name of the file to be created.

Declare Function ToCreateFileWithFileName(ByRef fileRef As Integer, ByRef fileName As String, ByRef fileObj As String)  As String

'' The base name of the file to be created.
ReDim MyFileRef(10) As Integer

'' The name of the file to be created.
ReDim MyFileName(10) As String

'' The name of the file to be created.
ReDim MyFileObj(10) As String

Type fileRef Alias "MyFileRef"
' Integer array uses 22 bytes (11 elements * 2 bytes). 
ReDim MyIntegerArrayName(10) As Integer 
 
' Double-precision array uses 88 bytes (11 elements * 8 bytes). 
ReDim MyDoubleArrayName(10) As Double 
 
' Variant array uses at least 176 bytes (11 elements * 16 bytes). 
ReDim MyVariantArrayName(10) As Double
 
' Integer array uses 100 * 100 * 2 bytes (20,000 bytes). 
ReDim MyIntegerArrayEvent(99, 99) As Integer 
 
' Double-precision array uses 100 * 100 * 8 bytes (80,000 bytes). 
ReDim MyDoubleArrayObj(99, 99) As Double 
 
' Variant array uses at least 160,000 bytes (100 * 100 * 16 bytes). 
ReDim MyVariantArray(99, 99)  As Double
End Type

Type fileName Alias "MyFileName"
' Integer array uses 22 bytes (11 elements * 2 bytes). 
ReDim MyIntegerArrayFileName(10) As Integer 
 
' Double-precision array uses 88 bytes (11 elements * 8 bytes). 
ReDim MyDoubleArrayFileName(10) As Double 
 
' Variant array uses at least 176 bytes (11 elements * 16 bytes). 
ReDim MyVariantArrayFile(10) As Double 
 
' Integer array uses 100 * 100 * 2 bytes (20,000 bytes). 
ReDim MyIntegerArrayFileObj(99, 99) As Integer 
 
' Double-precision array uses 100 * 100 * 8 bytes (80,000 bytes). 
ReDim MyDoubleArrayFileObj(99, 99) As Double 
 
' Variant array uses at least 160,000 bytes (100 * 100 * 16 bytes). 
ReDim MyVariantArrayFileObj(99, 99) As Double 
End Type

Type fileObj Alias "MyFileObj"
' Integer array uses 22 bytes (11 elements * 2 bytes). 
ReDim MyIntegerArrayFileObjName(10) As Integer 
 
' Double-precision array uses 88 bytes (11 elements * 8 bytes). 
ReDim MyDoubleArrayFileObjName(10) As Double 
 
' Variant array uses at least 176 bytes (11 elements * 16 bytes). 
ReDim MyVariantArrayFileObjName(10) As Double 
 
' Integer array uses 100 * 100 * 2 bytes (20,000 bytes). 
ReDim MyIntegerArrayFileObjEvent(99, 99) As Integer 
 
' Double-precision array uses 100 * 100 * 8 bytes (80,000 bytes). 
ReDim MyDoubleArrayFileNameEvent(99, 99) As Double 
 
' Variant array uses at least 160,000 bytes (100 * 100 * 16 bytes). 
ReDim MyVariantArrayFileObjClass(99, 99) As Double
End Type

End

'' then return the result of the function call.
Dim ArrayFileObjClass(99, 99) As Double

#lang "fblite"
Option Explicit
'' then return the result of the function call with required paramaters.
ReDim Preserve ArrayCallBackType(80, 12) As Double

'' then return the result of the function call with required parameters and optional
Public Function GetArrayCallOptional(ByRef Array As Double) As Double

'' then return the result of the function call with required parameters and optional
return Array

End Function


