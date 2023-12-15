<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Home.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="logout">
    <asp:Button ID="logout" runat="server" CssClass="logout-btn" Text="Logout"></asp:Button>
   </section>
  <section>
        <h1>Excel Health Clinic</h1>
        <h3 class="slogan">Feeling well? Don't be too sure!</h3>
    </section>
    <section id="about-us">
        <figure>
            <asp:Image ID="doc" runat="server" CssClass="logo" ImageUrl="~/images/logo.jpeg"></asp:Image>
        </figure>
        
            <p class="intro">Welcome to EXCEL HEALTH CLINIC. <br />
                Compassion, Innovation & Excellence. <br />
                Dedicated to you. <br />
                <br />
                EXCEL HEALTH CLINIC, a Fiji based clinic, has been a trusted name in Fijian healthcare for more than seven decades.
                Since our foundation in 1945, we have built a reputation for regional leadership in medical excellence
                and innovation,
                based on a simple philosophy: that improving the health of our community should be driven by passion as
                well as compassion. <br />
                <br />
                We offer 260 beds – including 60 in our critical care department – across a range of spacious, modern
                rooms.
                We also accept various insurance policies while offering the best consultants, specialists and employees, all of whom are dedicated to providing
                exceptional clinical outcomes and utmost customer satisfaction.
            </p>
        
     </section>
     <main id="specialities">
        <section class="mid-grid">
            <asp:Image ID="doc1" runat="server" CssClass="doc1-img" ImageUrl="~/images/doc1.png"></asp:Image>
            <h3>To begin your medical journey browse our comprehensive directory</h3>
        </section>
        <section class="mid-grid">
            <p class="mid-txt">Our multidisciplinary team of
                specialist consultants are available to
                help you meet your Healthcare needs.
                Excel Health Clinic delivers integrated healthcare across multiple specialties.
                Our consultant specialists diagnose, evaluate, and treat patients with skill and compassion to ensure
                the best outcomes for your medical and surgical needs.</p>
        </section>
        <section class="services">
          <table class="service-list">
              <tr><th><p>Specialities</p></th></tr>
              <tr><td><asp:HyperLink ID="surgery" runat="server" CssClass="service-link" NavigateUrl="~/Surgery.aspx">Surgery</asp:HyperLink></td></tr>
              <tr><td><asp:HyperLink ID="gynocology" runat="server" CssClass="service-link" NavigateUrl="~/Gynecology.aspx">Gynocology</asp:HyperLink></td></tr>
              <tr><td><asp:HyperLink ID="orthopedics" runat="server" CssClass="service-link" NavigateUrl="~/Orthopedics.aspx">Orthopedics</asp:HyperLink></td></tr>
              <tr><td><asp:HyperLink ID="physiotherapy" runat="server" CssClass="service-link" NavigateUrl="~/Physiotherapy.aspx">Physiotherapy</asp:HyperLink></td></tr>
              <tr><td><asp:HyperLink ID="ultrasound" runat="server" CssClass="service-link" NavigateUrl="~/Ultrasound.aspx">Ultrasound</asp:HyperLink></td></tr>
              <tr><td><asp:HyperLink ID="dental" runat="server" CssClass="service-link" NavigateUrl="~/Dental.aspx">Dental</asp:HyperLink></td></tr>
          </table>
        </section>
    </main>
    <section id="signup-area">
          <section class="signup-box">
            <h2>Don't have an account? </br> 
            Sign-Up Now</h2>
            <p style="padding-bottom: 40px;">Our facilities is just one step away!</p>
            <asp:HyperLink ID="signup" runat="server" CssClass="signup-btn" 
        NavigateUrl="~/Sign_up.aspx">Sign-Up Now!</asp:HyperLink>
        </section>
    </section>
    
    <section id="map">
        <h2>Find Us</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3791.3443106283835!2d178.44541201480754!3d-18.
            148046187627003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6e1bddd1d33b500d%3A0x151b26830981d6a1!2s
            The%20University%20of%20the%20South%20Pacific!5e0!3m2!1sen!2sfj!4v1654869754146!5m2!1sen!2sfj" 
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>
 
</asp:Content>

