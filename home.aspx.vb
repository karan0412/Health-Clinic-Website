Imports System.Data
Imports System.Data.OleDb
Partial Class home
    Inherits System.Web.UI.Page

    Protected Sub logout_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles logout.Click
        If Not Session("Patient_Email") = Nothing Then
            Session.Clear()
        End If
    End Sub
End Class
