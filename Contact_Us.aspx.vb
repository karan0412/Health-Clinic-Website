Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class Contact_Us
    Inherits System.Web.UI.Page

    Protected Sub Send_btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Send_btn.Click
        lblsent.Text = "Your query has been sent <br />"
        adsContact.InsertParameters("User_name").DefaultValue = name_txt.Text
        adsContact.InsertParameters("Speciality").DefaultValue = speciality_list.SelectedValue
        adsContact.InsertParameters("User_phn").DefaultValue = num.Text
        adsContact.InsertParameters("Country").DefaultValue = country_txt.Text
        adsContact.InsertParameters("User_email").DefaultValue = email_txt.Text
        adsContact.InsertParameters("Message").DefaultValue = message_text.Text
        adsContact.Insert()
    End Sub

    Protected Sub UploadFile(ByVal sender As Object, ByVal e As System.EventArgs) Handles fileupload.Click

        upload_report.SaveAs(Server.MapPath("~/Uploads/") & Path.GetFileName(upload_report.FileName))
        lbluploaded.Text = Path.GetFileName(upload_report.FileName) + " has been uploaded."

    End Sub
End Class
