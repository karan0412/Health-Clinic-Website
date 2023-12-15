<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Physiotherapy.aspx.vb" Inherits="Physiotherapy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Specialities.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<nav class="breadcrumb">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
    &lt;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Physiotherapy.aspx">Physiotherapy</asp:HyperLink>
    </nav>

     <section class="heading">
          <h2>OUR PHYSIOTHERAPISTS</h2>
          We physiotherapists promote, maintain and restore health through <br />physical examination, diagnosis, prognosis, patient education, physical intervention, 
          rehabilitation, disease prevention, and health promotion.
        </section>

        <section class="doctor">
            
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="pdoc1" runat="server" CssClass="img" ImageUrl="~/images/pdoc1.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Mary Alumeci</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Physiotherapists<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Fijian<br/>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults      
                            </p>
                        </section>
                </section>
    
                 <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="pdoc2" runat="server" CssClass="img" ImageUrl="~/images/pdoc2.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Nick Jordan</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Physiotherapists<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English<br/>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults 
                            </p>
                        </section>
                </section>

                 <section class="doctor-box1">
                       <section class="user">
                            <asp:Image ID="pdoc3" runat="server" CssClass="img" ImageUrl="~/images/pdoc3.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Mehul Nand</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Physiotherapists<br />
                                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Hindi</br>
                                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults   
                            </p>
                        </section>
                </section>
     </section>
</asp:Content>

