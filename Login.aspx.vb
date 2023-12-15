Imports System.Data
Imports System.Data.OleDb

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub login_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login_btn.Click
        If email_txt.Text = "" Or password.Text = "" Then
            lblError.Text = "Invalid Email or Password"
        Else
            Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
            "Data Source=|DataDirectory|ExcelHealth.mdb"

            Dim query As String
            query = "Select Count(*) From [Sign-up] Where Patient_Email = '" + email_txt.Text + "' And Patient_Passwd = '" + password.Text + "'"
            Dim result As Integer = 0
            Using conn As New OleDbConnection(connect)
                Using cmd As New OleDbCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Patient_Email", email_txt.Text)
                    cmd.Parameters.AddWithValue("@Patient_Passwd", password.Text)
                    conn.Open()
                    result = cmd.ExecuteScalar()
                End Using
            End Using
            If result = 1 Then
                Session.Timeout = 60
                Session("Patient_Email") = email_txt.Text
                Response.Redirect("home.aspx")
            Else
                lblError.Text = "Invalid Password"
                password.Focus()
            End If
        End If
    End Sub
End Class
