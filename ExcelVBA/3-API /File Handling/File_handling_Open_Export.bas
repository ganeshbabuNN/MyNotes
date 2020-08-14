Attribute VB_Name = "Module2"
'Export data from excel to text document

Sub export()
  Dim colcount As Integer 'count the column
  Dim cntr As Integer 'for looping
  Dim myfreefile As Integer
  Dim strlength As String
  
  Sheets("Sheet1").Select
  Range("A1").Select
  myfreefile = freefile 'for the filenumber dynamicaly assign and stored in the variable
  
  Open "C:\output.txt" For Output As #myfreefile
        colcount = ActiveCell.CurrentRegion.Columns.Count
        Do While ActiveCell.Value <> "" 'loop to all the cells
        For cntr = 0 To colcount - 1
            strlength = strlength & ActiveCell.Offset(0, cntr).Value & ","
        Next cntr
        Print #myfreefile, strlength
        ActiveCell.Offset(1, 0).Select
        strlength = ""
        Loop
  Close #myfreefile
End Sub


