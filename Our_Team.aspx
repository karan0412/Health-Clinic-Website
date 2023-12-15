<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Our_Team.aspx.vb" Inherits="Our_Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Our_Team.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="container">
    <h1 class="heading"><strong>meet</strong>Our Team</h1>
    <section class="profiles">
      <section class="profile">
        <asp:Image ID="Karan" runat="server" CssClass="profile-img" 
        ImageUrl="~/images/img1.jpg"></asp:Image>

        <h3 class="user-name">Karan</h3>
        <h5>Creative Director</h5>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum eveniet soluta hic sunt sit reprehenderit.</p>
      </section>
      <section class="profile">
        <asp:Image ID="Savindya" runat="server" CssClass="profile-img" 
        ImageUrl="~/images/img2.jpg"></asp:Image>

        <h3 class="user-name">Savindya</h3>
        <h5>Managing Partner</h5>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam facilis sint quod.</p>
      </section>
      <section class="profile">
        <asp:Image ID="Aditi" runat="server" CssClass="profile-img" ImageUrl="~/images/img3.jpg"></asp:Image>

        <h3 class="user-name">Aditi</h3>
        <h5>Project Manager</h5>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, eveniet!</p>
      </section>
    </section>
  </section>
 
</asp:Content>

