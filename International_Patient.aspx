<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="International_Patient.aspx.vb" Inherits="International_Patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/International_Patient.css" rel="stylesheet" 
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="international">
    <h2>Not from Fiji? </br>
        We got you!
    </h2>
    <section class="international-intro">
        <section class="achievements">
            <section class="trusted">
                <asp:Image ID="Earth" runat="server" ImageUrl="~/images/earth.png"></asp:Image>
                <strong>Trusted by INTERNATIONAL PATIENTS</strong>
            </section>
             <section class="achieve">
                    <asp:Image ID="Flight" runat="server" 
            ImageUrl="~/images/departures.png" CssClass="achievements-img"></asp:Image>
            <strong class="achievement-txt">Airport Pickup</strong>
                </section>
                <section class="achieve">
                    <asp:Image ID="Language" runat="server" 
            ImageUrl="~/images/languages.png" CssClass="achievements-img"></asp:Image>
            <strong class="achievement-txt">Translator Access</strong>
                </section>
                <section class="achieve">
                    <asp:Image ID="Trust" runat="server" 
            ImageUrl="~/images/trust.png" CssClass="achievements-img"></asp:Image>
            <strong class="achievement-txt">Loyal Customers from 40+ Countries</strong>
                </section>
         </section>
        <section>
            <p class="details">The Excel Health Clinic International Patient Center offers state-of-the-art comprehensive care and dedicated services for patients from around the world.
            The International Patient Center at Excel Health Clinic is a full-service office that helps patients and their families navigate care and logistics with Excel 
            Health Clinic. Explore our center of excellence, plus commonly requested treatments for our international patients.
            </p>
        </section>
    </section>

<section class="services">
<h3>Our Services</h3>
    <section class="service-frame">

        <section class="service-box">
            <section class="service-name">
                <asp:Image ID="Online" runat="server" CssClass="service-img" 
                ImageUrl="~/images/videoconference.png"></asp:Image>
                <strong class="name-txt">Online Consultation</strong>     
             </section>
            <section class="service-detail">
                <p class="service-detail-txt">We help drive digital transformation & adoption of patient-centric care pathways. We offers subscription-based health plans and the patients 
                also get a digital prescription. Doctors 24x7 focuses on providing teleconsultation to patients
                provides diagnosis along with a free follow up within 3 days of the consulation.</p>
            </section>
            <section>
                <asp:HyperLink ID="Online_link" runat="server" CssClass="link" NavigateUrl="~/Online_Consultation.aspx">Book Online Consultation</asp:HyperLink>
            </section>
        </section>

        <section class="service-box">
            <section class="service-name">
                <asp:Image ID="Offline" runat="server" CssClass="service-img" 
                ImageUrl="~/images/conversation.png"></asp:Image>
                <strong class="name-txt">Offline Consultation</strong>     
             </section>
            <section class="service-detail">
                <p class="service-detail-txt">We offer healthcare service appointment, which facilitates and simplifies offline-visit for patients and provide Prescription and maintain docotor-patient interaction.</p>
            </section>
            <section>
                <asp:HyperLink ID="Offline_Link" runat="server" CssClass="link" 
        NavigateUrl="~/Create_Appointment.aspx">Book Offline Consultation</asp:HyperLink>
            </section>
        </section>

        <section class="service-box">
            <section class="service-name">
                <asp:Image ID="Pickup" runat="server" CssClass="service-img" 
                ImageUrl="~/images/taxi.png"></asp:Image>
                <strong class="name-txt">Pick-Up</strong>     
             </section>
            <section class="service-detail">
                <p class="service-detail-txt">We’re committed to your safety at Excel Health Clinic. We’ve established a Door-to-Door Safety Standard to help you feel safe every time you ride.
                    And with our pick-up service, your destination is at your fingertips.Your scheduled pickup driver will help you get to us reliably.</p>
            </section>
            <section>
                <asp:HyperLink ID="PickUp_Link" runat="server" CssClass="link" NavigateUrl="~/International_Patient_Pickup.aspx">Book Pick-Up</asp:HyperLink>
            </section>
        </section>

        <section class="service-box">
            <section class="service-name">
                <asp:Image ID="Image3" runat="server" CssClass="service-img" 
                ImageUrl="~/images/online-booking.png"></asp:Image>
                <strong class="name-txt">Book Flight Tickets</strong>     
             </section>
            <section class="service-detail">
                <p class="service-detail-txt">get inspired and learn more about our unique travelling experience with FIJI AIRWAYS and Book your Flight for an 
                offline consultation with us at Excel Health Clinic.</p>
            </section>
            <section>
                <asp:HyperLink ID="Book_Link" runat="server" CssClass="link" 
        NavigateUrl="https://www.fijiairways.com/en-au/book">Book Tickets</asp:HyperLink>
            </section>
        </section>

    </section>
 </section>
 <section class="international-reviews">
     <h3>We are a 5 star rated Health Clinic!</h3>
    <section class="review-int">
        <section class="row-star">
            <asp:Image ID="Star1" runat="server" ImageUrl="~/images/star.png" CssClass="star-img"></asp:Image>
            <asp:Image ID="Star2" runat="server" ImageUrl="~/images/star.png" CssClass="star-img"></asp:Image>
            <asp:Image ID="Star3" runat="server" ImageUrl="~/images/star.png" CssClass="star-img"></asp:Image>
            <asp:Image ID="Star4" runat="server" ImageUrl="~/images/star.png" CssClass="star-img"></asp:Image>
            <asp:Image ID="Star5" runat="server" ImageUrl="~/images/star.png" CssClass="star-img"></asp:Image>
        </section>
        <section class="row-txt">
            <p class= "review-detail">
                World class patient care, cutting edge medical technologies, expert consultants, Excel Health Clinic has it all.
               Find out why people from around the world trust Excel Health Clinic to deliver medical excellence.
               Preventive Health Checkups Excel Health Clinic provide advanced health scans and offers individualised and comprehensive physical examinations. 
               Preventive healthcare is of great importance. <br />Click below to find out what our experienced patients has to say.
            </p>
            <asp:HyperLink ID="Review_link" runat="server" CssClass="review-link" NavigateUrl="~/Review.aspx">Reviews</asp:HyperLink>
        </section>
    </section>
 </section>
</section>
</asp:Content>

