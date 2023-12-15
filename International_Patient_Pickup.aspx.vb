
Partial Class International_Patient_Pickup
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Patient_Email") = Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
    Protected Sub schedule_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles schedule_btn.Click
        lblpickup.Text = "Your pick up request has been sent."
        bookpickup.InsertParameters("Pickup_date").DefaultValue = input_date.Text
        bookpickup.InsertParameters("Pickup_time").DefaultValue = input_time.Text
        bookpickup.Insert()
    End Sub
End Class
