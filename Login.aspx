<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="login-frame">
    <h2>Login</h2>
          <section class="row">
            <asp:TextBox ID="email_txt" runat="server" placeholder="E-Mail" CssClass="input"></asp:TextBox></br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ErrorMessage="*Enter a valid email." Font-Bold="True" 
        ControlToValidate="email_txt" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="emailvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="email_txt" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row">
        <asp:TextBox ID="password" runat="server" placeholder="Password" 
        TextMode="Password" CssClass="input"></asp:TextBox> </br>
         <asp:RequiredFieldValidator ID="passwordvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row-btn">
            <asp:Button ID="login_btn" runat="server" Text="Login" 
        CssClass="login-btn"></asp:Button></br>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
        </section>
        <section class="row-btn">
            <asp:HyperLink ID="account_not_exist" runat="server" 
        CssClass="not-exist_and_admin" NavigateUrl="~/Sign_up.aspx">Don't have an account?</asp:HyperLink>
        </section>
        <section class="row-btn">
        <asp:HyperLink ID="administrator" runat="server" 
        NavigateUrl="~/Administrator_login.aspx" CssClass="not-exist_and_admin">Login as Administrator</asp:HyperLink>
        </section>
    </section>
</asp:Content>

