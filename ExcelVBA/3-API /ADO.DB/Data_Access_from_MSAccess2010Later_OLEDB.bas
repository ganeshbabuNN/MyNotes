Attribute VB_Name = "Module1"
Option Explicit


Dim cnn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim cntr As Long
Dim dbstring As String


Sub openDB()
    cnn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Ganesh Babau\Documents\ganesh.accdb;Persist Security Info=False"
    cnn.Open
    
    Set rs = cnn.OpenSchema(adSchemaTables)
    
    Sheets("sheet2").Select
    Range("A1").Select
    For cntr = 0 To rs.Fields.Count - 1
        ActiveCell.Offset(0, cntr).Value = rs.Fields(cntr).Name
    Next
    Range("A2").Select
    Do While Not rs.EOF
        For cntr = 0 To rs.Fields.Count - 1
            ActiveCell.Offset(0, cntr).Value = rs.Fields(cntr).Value
        Next
        ActiveCell.Offset(1, 0).Select
        rs.MoveNext
    Loop
    
    rs.Close
    cnn.Close
    'Set rs = Nothing
    
End Sub

Sub getCustomerData()
    cnn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Ganesh Babau\Documents\ganesh.accdb;Persist Security Info=False"
    cnn.Open
    
    rs.Open "select * from gg", cnn, adOpenKeyset, adLockOptimistic
    
    Sheets("sheet3").Select
    Range("A1").Select
    For cntr = 0 To rs.Fields.Count - 1
        ActiveCell.Offset(0, cntr).Value = rs.Fields(cntr).Name
    Next
    Range("A2").Select
    Do While Not rs.EOF
        For cntr = 0 To rs.Fields.Count - 1
            ActiveCell.Offset(0, cntr).Value = rs.Fields(cntr).Value
        Next
        ActiveCell.Offset(1, 0).Select
        rs.MoveNext
    Loop
    
    rs.Close
    cnn.Close
    Columns.AutoFit
    'Set rs = Nothing
    
End Sub

