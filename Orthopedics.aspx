<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Orthopedics.aspx.vb" Inherits="Orthopedics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Specialities.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<nav class="breadcrumb">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
    &lt;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Orthopedics.aspx">Orthopedics</asp:HyperLink>
    </nav>

     <section class="heading">
            <h2>OUR ORTHOPEDISTS</h2>
            We focuses on the<br /> diagnosis, correction, prevention, and treatment of patients with disorders of the <br />
            bones, joints, muscles, ligaments, tendons, nerves and skin.        
      </section>
       
    <section class="doctor">
            
                <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="odoc1" runat="server" CssClass="img" ImageUrl="~/images/Odoc1.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Amilia Wakham</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Orthopedic Surgent<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English</br>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults    
                            </p>
                        </section>
                </section>
    
         <section class="doctor-box">
                       <section class="user">
                            <asp:Image ID="odoc2" runat="server" CssClass="img" ImageUrl="~/images/Odoc2.jpg"></asp:Image>
                                <strong class="doc-name">Dr.Christoper Lee</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p> SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Orthopedic Surgent<br />
                SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Chineese<br/>
                AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Infants , Teenagers , Adults 
                            </p>
                        </section>
                </section>

                  
                 <section class="doctor-box1">
               
                       <section class="user">
                            <asp:Image ID="odoc3" runat="server" CssClass="img" ImageUrl="~/images/Odoc3.jpg"></asp:Image>
                                <strong class="doc-name">Dr. Natasha Chung</strong>
                        </section>
                       
                        <section class="text">
                         <hr/>
                            <p>  SPECIALITY&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;: Orthopedic Surgent<br />
                                 SPEAKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: English , Chineese<br/>
                                 AGES SEEN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Teenagers , Adults      
                            </p>
                        </section>
                </section>
     </section>
</asp:Content>

