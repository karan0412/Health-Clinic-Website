<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Administrator_login.aspx.vb" Inherits="Administrator_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Administrator_login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="login">
    <section class="login-frame">
    <h2>Administrator Login</h2>
          <section class="row">
            <asp:TextBox ID="email_txt" runat="server" placeholder="E-Mail" CssClass="input"></asp:TextBox></br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ErrorMessage="*Enter a valid email." Font-Bold="True" 
        ControlToValidate="email_txt" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </section>
        <section class="row">
        <asp:TextBox ID="password" runat="server" placeholder="Password" 
        TextMode="Password" CssClass="input"></asp:TextBox>
        </section>
        <section class="row-btn">
            <asp:Button ID="login_btn" runat="server" Text="Login" 
        CssClass="login-btn"></asp:Button></br>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
        </section>
    </section>
</section>
</asp:Content>

