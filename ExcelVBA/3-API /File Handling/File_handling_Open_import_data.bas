Attribute VB_Name = "Module1"
Sub file()
    'importing the line into excel
    Dim myfreefile As Long 'for file number
    Dim cntr As Long  'for loop each line
    Dim strlng As String
    Dim strline As String
    Dim strdata() As String
    myfreefile = FreeFile
    Open "c:\output.txt" For Input As #myfreefile
        Do While Not EOF(myfreefile) ' loop till the file ends
        'EOF is marked by carriage return feed marker Basically
            
            Line Input #myfreefile, strline 'reading line by line
            strdata = Split(strline, ",")
            
            For counter = LBound(strdata) To UBound(strdata)
                ActiveCell.Offset(0, counter).Value = strdata(counter)
            Next counter
                ActiveCell.Offset(1, 0).Select
        Loop
    Close #myfreefile
End Sub
