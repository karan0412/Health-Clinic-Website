
Partial Class Online_Consultation
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Patient_Email") = Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
    Protected Sub online_appointment_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles online_appointment_btn.Click
        lblonlineAppointment.Text = "You online consultation has been booked."
        Onlineconsultation.InsertParameters("Reason").DefaultValue = reason.Text
        Onlineconsultation.InsertParameters("Speciality").DefaultValue = speciality.SelectedValue
        Onlineconsultation.InsertParameters("Consultation_date").DefaultValue = input_date.Text
        Onlineconsultation.InsertParameters("Consultation_time").DefaultValue = input_time.Text
        Onlineconsultation.Insert()
    End Sub
End Class
