
Partial Class Review
    Inherits System.Web.UI.Page

    Protected Sub submit_review_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit_review.Click
        lblreview.Text = "Thanks for your feedback <br />"
        adsReview.InsertParameters("Feedback").DefaultValue = review_txt.Text
        adsReview.Insert()

    End Sub
End Class
