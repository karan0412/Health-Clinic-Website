<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Gynecology.aspx.vb" Inherits="Gynecology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Specialities.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<nav class="breadcrumb">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
    &lt;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/gynecology.aspx">Gynocology</asp:HyperLink>
    </nav>

     <section class="heading">
            <h2>OUR GYNECOLOGISTS</h2>
            We are dedicated to female health care concerns <br />including the development, diagnosis, prevention, and therapy of disorders and 
            diseases distinct to the female reproductive system.
      </section>
      
       <section class="doctor">
            
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="gdoc1" runat="server" CssClass="img" ImageUrl="~/images/gdoc1.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Jane Depp</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Gyneclogist<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English, Fijian<br/>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults 
                            </p>
                        </section>
                </section>

                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="gdoc2" runat="server" CssClass="img" ImageUrl="~/images/gdoc2.jpg"></asp:Image>
                                <strong class="doc-name">Dr.Vanya Singh</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Gyneclogist<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English, Hindi<br/>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults
                            </p>
                        </section>
                </section>
     </section>
</asp:Content>

