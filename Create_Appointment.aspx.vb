
Imports System.Data
Imports System.Data.OleDb

Partial Class Create_Appointment
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Patient_Email") = Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
    Protected Sub appointment_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles appointment_btn.Click
        lblAppointment.Text = "Your appoinment request has been sent <br />"
        adsAppointment.InsertParameters("Reason").DefaultValue = reason.Text
        adsAppointment.InsertParameters("Speciality").DefaultValue = speciality.SelectedValue
        adsAppointment.InsertParameters("Appointment_date").DefaultValue = input_date.Text
        adsAppointment.InsertParameters("Appointment_time").DefaultValue = input_time.Text
        adsAppointment.Insert()
    End Sub
End Class
