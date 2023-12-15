<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Review.aspx.vb" Inherits="Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Review.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
   <section class="review">
        <h2>Customer Review</h2>
        <section class="star-rate   ">
            <section class="stars">
                <input id="five" type="radio" name="rate" value="5">
                <label for="five"></label>
                <input id="four" type="radio" name="rate" value="4">
                <label for="four"></label>
                <input id="three" type="radio" name="rate" value="3">
                <label for="three"></label>
                <input id="two" type="radio" name="rate" value="2">
                <label for="two"></label>
                <input id="one" type="radio" name="rate" value="1">
                <label for="one"></label>
            </section>
        </section>
        <section class="give-review">
            <section class="row">
                <p class="text">Give us your feedback</p>
            </section>
            <section class="row">
                <asp:TextBox ID="review_txt" runat="server" CssClass="input" TextMode="MultiLine"></asp:TextBox>
            </section>
            <section class="row">
                <asp:Button ID="submit_review" runat="server" Text="Submit Review" 
        CssClass="review-btn"></asp:Button>
            </section>
            
        <asp:Label ID="lblreview" runat="server" Text=""></asp:Label>
            
        </section>
    <asp:AccessDataSource ID="adsReview" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [Review] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Review] ([Feedback]) VALUES (?)" 
        SelectCommand="SELECT * FROM [Review]" 
        UpdateCommand="UPDATE [Review] SET [Feedback] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Feedback" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </section>


        



        <h3>Some Reviews</h3>

    <section class="testimonials">
                <section class="testimonial-box">
                       <section class="user">
                            <asp:Image ID="user1" runat="server" CssClass="users-img" ImageUrl="~/images/user1.jpg"></asp:Image>
                                <strong class="user-name">Deepak Smith</strong>  
                                <section class="user-stars">
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                </section>  
                        </section>
                        <section class="testimonial-text">
                            <p>I recently found myself under your care for a Dental issue. While there, accompanied by my wife, 
                            we found that the entire staff at Excel Health Clinic was exceedingly professional and efficient, 
                            from your E.R. receptionists to the Dental care team. You should be proud of your outstanding staff and service.</p>
                        </section>
                </section>

                <section class="testimonial-box">
                       <section class="user">
                            <asp:Image ID="Image1" runat="server" CssClass="users-img" ImageUrl="~/images/user2.jpg"></asp:Image>
                                <strong class="user-name">Taylor Swift</strong>  
                                <section class="user-stars">
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star-half-stroke stars"></i>
                                </section>  
                        </section>
                        <section class="testimonial-text">
                            <p>I am writing to express my gratitude from my family for the care given to my mother. during the surgery 
                            there was care, compassion, and respect. they provided professional guidance,
                            comfort, and strength to make our own decisions. Finally, I cannot praise the Care and Hospital team enough. 
                            They were patient and helpful. All our hope that you continue along this path.</p>
                        </section>
                </section>

                 <section class="testimonial-box">
                       <section class="user">
                            <asp:Image ID="Image2" runat="server" CssClass="users-img" ImageUrl="~/images/user3.jfif"></asp:Image>
                                <strong class="user-name">Raju Rastogi</strong>  
                                <section class="user-stars">
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star-half-stroke stars"></i>
                                </section>  
                        </section>
                        <section class="testimonial-text">
                            <p>We would like to let you know how much we appreciate the special care our 
                            daughter was given by the doctors and staff at your hospital. Our baby’s physician was professional, 
                            kind, understanding, and her treatment was “right on.”They made sure that my daughter’s hospitalization was very pleasant.</p>
                        </section>
                </section>

                <section class="testimonial-box">
                       <section class="user">
                            <asp:Image ID="Image3" runat="server" CssClass="users-img" ImageUrl="~/images/user4.jpg"></asp:Image>
                                <strong class="user-name">Savitri Mishra</strong>  
                                <section class="user-stars">
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                    <i class="fa-solid fa-star stars"></i>
                                </section>  
                        </section>
                        <section class="testimonial-text">
                            <p>I recently had a nine day stay at Excel Haelth Clinic and I wanted to express how impressed I was with the level of care 
                            I received from everyone I encountered. The Trauma Center saved my life! I found it amazing and I am grateful that it services my community.</p>
                        </section>
                </section>
    </section>
    
 </section>  

</asp:Content>

