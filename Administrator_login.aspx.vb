Imports System.Data
Imports System.Data.OleDb

Partial Class Administrator_login
    Inherits System.Web.UI.Page

    Protected Sub login_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login_btn.Click
        If email_txt.Text = "" Or password.Text = "" Then
            lblError.Text = "Invalid Email or Password"
        Else
            Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
            "Data Source=|DataDirectory|Admin.mdb"

            Dim query As String
            query = "Select Count(*) From [Admin] Where Email = '" + email_txt.Text + "' And Password = '" + password.Text + "'"
            Dim result As Integer = 0
            Using conn As New OleDbConnection(connect)
                Using cmd As New OleDbCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Email", email_txt.Text)
                    cmd.Parameters.AddWithValue("@Password", password.Text)
                    conn.Open()
                    result = cmd.ExecuteScalar()
                End Using
            End Using
            If result = 1 Then
                Session.Timeout = 60
                Session("Email") = email_txt.Text
                Response.Redirect("home.aspx")
            Else
                lblError.Text = "Invalid Password"
                password.Focus()
            End If
        End If
    End Sub
End Class
