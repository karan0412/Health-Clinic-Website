<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Ultrasound.aspx.vb" Inherits="Ultrasound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Specialities.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <nav class="breadcrumb">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
    &lt;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Physiotherapy.aspx">Ultrasound</asp:HyperLink>
    </nav>

     <section class="heading">
            <h2>OUR SONOGRAPHERS</h2>
           We perform diagnostic medical procedures that uses high-frequency sound waves<br />
           to produce dynamic visual images of organs, tissues or blood flow inside the body 
        </section>
       
        <section class="doctor">
            
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="udoc1" runat="server" CssClass="img" ImageUrl="~/images/Udoc1.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Leesa Windy</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Sonographer<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Infants , Teenagers , Adults    
                          </p>
                        </section>
                </section>

                 <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="udoc2" runat="server" CssClass="img" ImageUrl="~/images/Udoc2.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Nicol Linda</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Sonographer<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Fijian<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults     
                          </p>
                        </section>
                </section>

                 <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="udoc3" runat="server" CssClass="img" ImageUrl="~/images/Udoc3.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Adi Mere</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Sonographer<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Fijian<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults     
                          </p>
                        </section>
                </section>
                
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="udoc4" runat="server" CssClass="img" ImageUrl="~/images/Udoc4.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Liam David</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Sonographer<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults     
                          </p>
                        </section>
                </section>
     </section>
</asp:Content>

