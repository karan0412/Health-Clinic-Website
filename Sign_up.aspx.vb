
Partial Class Sign_up
    Inherits System.Web.UI.Page

    Protected Sub signup_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles signup_btn.Click
        adsPatient.InsertParameters("Patient_FName").DefaultValue = fname_txt.Text
        adsPatient.InsertParameters("Patient_LName").DefaultValue = lname_txt.Text
        adsPatient.InsertParameters("Patient_Email").DefaultValue = email_txt.Text
        adsPatient.InsertParameters("Patient_Phone").DefaultValue = phn_num.Text
        adsPatient.InsertParameters("Patient_Passwd").DefaultValue = password.Text
        adsPatient.InsertParameters("Patient_DOB").DefaultValue = birth_date.Text
        adsPatient.InsertParameters("Patient_Gender").DefaultValue = gender_choice.SelectedValue
        adsPatient.Insert()
        Response.Redirect("Login.aspx")
    End Sub
End Class
