Attribute VB_Name = "Module1"
'struture of the open and close the file
'print

Sub file_demo()
'simple creating the file ouput with the file number using print statement
    Open "C:\output.txt" For Output As #1
     'print statement creates the tab as delimiter
     Print #1, "hello world", 1234, "heleelelel"
    Close #1
End Sub
'auto number assignment
Dim myfreefile As Integer

Sub file_demo1()
'Using the free file functions as variable which allocates number automatically
    myfreefile = freefile
    Open "C:\output.txt" For Output As #myfreefile
     'write statement creates the comma as delimiter
    Close #myfreefile
End Sub


'Write statement
Sub file_demo2()
     myfreefile = freefile
    Open "C:\output.txt" For Output As #myfreefile
     'write statement creates the comma as delimiter
     Write #myfreefile, "hello world", 1234, "heleelelel"
    Close #myfreefile
End Sub

'Write statement
Sub file_demo3()
'Using the free file functions as variable which allocates number automatically
    myfreefile = freefile
    Open "C:\output.txt" For Output As #myfreefile
     'write statement creates the comma as delimiter
    Close #myfreefile
End Sub




