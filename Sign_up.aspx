<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Sign_up.aspx.vb" Inherits="Sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Sign_up.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="signup-frame">
    <h2>Sign Up Now!</h2>
        <section class="row">
            <asp:TextBox ID="fname_txt" runat="server" placeholder="First Name" CssClass="input"></asp:TextBox></br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
        runat="server" ValidationExpression="^[a-zA-Z\s]+$" 
        ErrorMessage="*Invalid name" ControlToValidate="fname_txt" ForeColor="Red" 
        style="font-weight: 700"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="Fnamevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="fname_txt" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
            <section class="row">
            <asp:TextBox ID="lname_txt" runat="server" placeholder="Last Name" CssClass="input"></asp:TextBox></br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
        runat="server" ValidationExpression="^[a-zA-Z\s]+$" 
        ErrorMessage="*Invalid name" ControlToValidate="lname_txt" ForeColor="Red" 
        style="font-weight: 700"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="Lnamevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="lname_txt" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
          <section class="row">
            <asp:TextBox ID="email_txt" runat="server" placeholder="E-Mail" CssClass="input"></asp:TextBox></br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="email_txt" 
        ErrorMessage="*Enter a valid email." Font-Bold="True" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        BorderStyle="None"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="emailvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="email_txt" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row">
            <asp:TextBox ID="phn_num" runat="server" placeholder="Phone Number" 
        TextMode="Phone" CssClass="input"></asp:TextBox></br>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="*Invalid number" ValidationExpression="^\d+" 
        ControlToValidate="phn_num" ForeColor="Red" style="font-weight: 700"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="phonevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="phn_num" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row">
        <p>Gender:</p>
            <asp:RadioButtonList ID="gender_choice" runat="server" RepeatDirection="Horizontal" CssClass="gender-choice">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>  
           <asp:RequiredFieldValidator ID="gendervalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="gender_choice" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row">
            <p>Date of birth:</p>
            <asp:TextBox ID="birth_date" runat="server" TextMode="Date" CssClass="input"></asp:TextBox>
        </section>
        <section class="row">
        <p>Select your password:</p>
        <asp:TextBox ID="password" runat="server" placeholder="Password" 
        TextMode="Password" CssClass="input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="passwordvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
        <section class="row">
            <asp:Button ID="signup_btn" runat="server" Text="Sign Up" 
        CssClass="signup-btn"></asp:Button>
        <asp:AccessDataSource ID="adsPatient" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [Sign-up] WHERE [Patient_Email] = ?" 
        InsertCommand="INSERT INTO [Sign-up] ([Patient_FName], [Patient_LName], [Patient_Passwd], [Patient_Email], [Patient_Gender], [Patient_DOB], [Patient_Phone]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Sign-up]" 
        UpdateCommand="UPDATE [Sign-up] SET [Patient_FName] = ?, [Patient_LName] = ?, [Patient_Passwd] = ?, [Patient_Gender] = ?, [Patient_DOB] = ?, [Patient_Phone] = ? WHERE [Patient_Email] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Patient_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Patient_FName" Type="String" />
                <asp:Parameter Name="Patient_LName" Type="String" />
                <asp:Parameter Name="Patient_Passwd" Type="String" />
                <asp:Parameter Name="Patient_Email" Type="String" />
                <asp:Parameter Name="Patient_Gender" Type="String" />
                <asp:Parameter Name="Patient_DOB" Type="String" />
                <asp:Parameter Name="Patient_Phone" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Patient_FName" Type="String" />
                <asp:Parameter Name="Patient_LName" Type="String" />
                <asp:Parameter Name="Patient_Passwd" Type="String" />
                <asp:Parameter Name="Patient_Gender" Type="String" />
                <asp:Parameter Name="Patient_DOB" Type="String" />
                <asp:Parameter Name="Patient_Phone" Type="Int32" />
                <asp:Parameter Name="Patient_Email" Type="String" />
            </UpdateParameters>
    </asp:AccessDataSource>
        </section>
        <section class="row">
            <asp:HyperLink ID="account_exist" runat="server" CssClass="account-exist" NavigateUrl="~/Login.aspx">Already have an account?</asp:HyperLink>
        </section>
    </section>
</asp:Content>
