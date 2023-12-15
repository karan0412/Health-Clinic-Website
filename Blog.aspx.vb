
Imports System.Data
Imports System.Data.OleDb

Partial Class Blog
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Patient_Email") = Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class
