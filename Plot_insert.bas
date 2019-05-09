Attribute VB_Name = "Plot_insert"
Sub Plot_insert()

' Makro zum Einfügen von Bildern in Word
' Bilder haben eine Höhe 12.45cm und eine Breite von 16.6cm
' nach 1,3,5,.. Bild ist eine Leerzeile

Dim Doc_Name1, Doc_Name2

Doc_Name1 = ActiveDocument.Name

Dim Hoehe As Single
Dim Breite As Single
Dim Prozent As Single
'Hoehe = InputBox("Bildhöhe angeben (Normal 11.8cm)")
'Breite = InputBox("Bildbreite angeben (Normal 16.0cm)")
'MsgBox (Hoehe)
'Prozent = InputBox("Bildhöhe [%] angeben (Normal 38%)")
Breite = 16.6

Dim AnzahlAlt As Integer
    AnzahlAlt = ActiveDocument.InlineShapes.Count

Dim Selektion As Variant
Dim Zaehler As Integer
Dim Auswahl As FileDialog
Dim Seiten%
Set Auswahl = Application.FileDialog(msoFileDialogOpen)
With Auswahl
    .AllowMultiSelect = True
    .InitialView = msoFileDialogViewList
    .Filters.Add "Images", "*.tif; *.gif; *.jpg; *.jpeg", 2
    .FilterIndex = 2
End With

Auswahl.Show
Zaehler = 0
For Each Selektion In Auswahl.SelectedItems
    Zaehler = Zaehler + 1
Next

Documents.Add DocumentType:=wdNewBlankDocument
AnzahlAlt = ActiveDocument.InlineShapes.Count

Dim Datei As Variant
Dim max As Integer
Dim j As Integer
Dim Test As Integer
Dim Lauf As Integer

max = Zaehler

 For j = 1 To max
    Lauf = j
    Datei = Auswahl.SelectedItems(j)
        
    Selection.InsertAfter Datei
    Selection.InlineShapes.AddPicture FileName:=Datei, LinkToFile:=False, _
    SaveWithDocument:=True
    
    With Selection.ParagraphFormat
        .LeftIndent = CentimetersToPoints(0)
        .SpaceBeforeAuto = False
        .SpaceAfterAuto = False
    End With
        
   'Test = ((-1) ^ Lauf)
   'If Test < 0 Then
   Selection.InsertBreak Type:=wdLineBreak     'Zusätzliche Leerzeile nach jedem zweiten Bild einfügen
   'Selection.InsertBreak Type:=wdLineBreak
   'End If
   
   
      
 Next j
 
Doc_Name2 = ActiveDocument.Name

Dim Anpassen As Integer

For Anpassen = AnzahlAlt + 1 To AnzahlAlt + max
 With ActiveDocument.InlineShapes(Anpassen)
      .LockAspectRatio = msoTrue
      .LockAspectRatio = msoTrue
      .Width = CentimetersToPoints(Breite)
      .Height = CentimetersToPoints(Breite * 3 / 4)
        '.ScaleHeight = (Prozent)
        '.ScaleWidth = (Prozent)
                
        
End With
Next

Selection.WholeStory
Selection.Copy

Documents(Doc_Name1).Activate
Selection.PasteAndFormat (wdPasteDefault)



Documents(Doc_Name2).Activate
ActiveDocument.Close _
    SaveChanges:=wdDoNotSaveChanges
Documents(Doc_Name1).Activate

End Sub

