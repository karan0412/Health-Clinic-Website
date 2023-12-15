<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Dental.aspx.vb" Inherits="Dental" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Specialities.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<nav class="breadcrumb">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
    &lt;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Physiotherapy.aspx">Dental</asp:HyperLink>
    </nav>

     <section class="heading">
            <h2>OUR DENTISTS</h2>
            Fear of dental services and delay in seeking treatment, which allows problems to get worse. <br />
            Visit the dentist yearly for a check up on your oral health.
            </section>
        
         <section class="doctor">
            
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="ddoc1" runat="server" CssClass="img" ImageUrl="~/images/ddoc1.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Aiden Tuilevu</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Dentist<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Fijian<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Infants , Teenagers , Adults    
                          </p>
                        </section>
                </section>

                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="ddoc2" runat="server" CssClass="img" ImageUrl="~/images/ddoc2.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Laisa lal</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Dentist<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Hindi<br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Infants , Teenagers , Adults    
                          </p>
                        </section>
                </section>

                 <section class="doctor-box1">
                       <section class="user">
                            <asp:Image ID="ddoc3" runat="server" CssClass="img" ImageUrl="~/images/ddoc3.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Jacob aaron</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                         <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Dentist<br />
                             SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Fijian <br/>
                             AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults      
                          </p>
                        </section>
                </section>
     </section>
</asp:Content>

