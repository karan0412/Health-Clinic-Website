<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Patient_Admin.aspx.vb" Inherits="Patient_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet" />
    <link href="Styles/admin.css" rel="stylesheet" type="text/css" />
    <script src="https://kit.fontawesome.com/703ce498ac.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device=width, initial-scale=1.0">
    <meta charset="UTF-8">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <nav class="admintop-nav">
       
            <input id="hamburger-menu-admin-toggle" type="checkbox" />
            <label class="hamburger-menu-admin-button-container" for="hamburger-menu-admin-toggle">
  
            <section class="hamburger-menu-admin-button"></section>
            </label>
   
            <ul class="hamburger-menu-admin">
                <li><asp:HyperLink ID="int_patient" runat="server" CssClass="adminheader-link" NavigateUrl="~/Patient_admin.aspx">Patients</asp:HyperLink></li>
                <li><asp:HyperLink ID="book" runat="server" CssClass="adminheader-link" NavigateUrl="~/appointment_admin.aspx">Appointments</asp:HyperLink></li>
                <li><asp:HyperLink ID="review" runat="server" CssClass="adminheader-link" NavigateUrl="~/Messages_admin.aspx">Message</asp:HyperLink></li>
                <li><asp:HyperLink ID="contact" runat="server" CssClass="adminheader-link" NavigateUrl="~/Pickup_admin.aspx">pick-Up Details</asp:HyperLink></li>
                <li><asp:HyperLink ID="blog" runat="server" CssClass="adminheader-link" NavigateUrl="~/Online_Consulations_admin.aspx">Online Consulations</asp:HyperLink></li>
            </ul>
    
  </nav>
</asp:Content>

