<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Contact_Us.aspx.vb" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Contact_Us.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact">
        <h2>Contact Us</h2>
        <p class="contact-us-txt">
            Excel health clinic is always looking for best ways to serve its patients. 
            Please fill up the form given below if you would like to meet a specific doctor, 
            or would like some specific information about the services provided at excel health clinic.
        </p>
            <section class="contact-frame">
                <section class="row">
                    <asp:TextBox ID="name_txt" runat="server" placeholder="Name" 
        CssClass="input" ControlToValidate="name_txt"></asp:TextBox> </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
        runat="server" ValidationExpression="^[a-zA-Z\s]+$" 
        ErrorMessage="*Invalid name" ForeColor="Red" 
        style="font-weight: 700" ControlToValidate="name_txt"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="namevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="name_txt" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>

        <section class="row">
                    <asp:TextBox ID="email_txt" runat="server" placeholder="Email" 
        CssClass="input"></asp:TextBox> </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ErrorMessage="*Enter a valid email." Font-Bold="True" 
        ControlToValidate="email_txt" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="emailvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="email_txt" ForeColor="Red"></asp:RequiredFieldValidator>
                </section>

                <section class="row">
                    <asp:TextBox ID="num" runat="server" 
        placeholder="Phone Contact" CssClass="input"></asp:TextBox> </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="*Invalid number" ValidationExpression="^\d+" 
        ControlToValidate="num" ForeColor="Red" style="font-weight: 700"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="numbervalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="num" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>

        <section class="row">
                    <asp:TextBox ID="country_txt" runat="server" 
        placeholder="Country of residence" CssClass="input"></asp:TextBox>
                </section>
                 <section class="row">
                 <strong>Select Speciality:</strong>
                    <asp:DropDownList ID="speciality_list" runat="server" 
        CssClass="input">
                        <asp:ListItem>Surgey</asp:ListItem>
                        <asp:ListItem>Gynocology</asp:ListItem>
                        <asp:ListItem>Orthopedics</asp:ListItem>
                        <asp:ListItem>Physiotherapy</asp:ListItem>
                        <asp:ListItem>Ultrasound</asp:ListItem>
                        <asp:ListItem>Dental</asp:ListItem>
                    </asp:DropDownList>
                </section>
                <section class="row">
                    <asp:TextBox ID="message_text" runat="server" 
                    TextMode="MultiLine" placeholder="Reason" CssClass="input"></asp:TextBox>
                </section>

                <section class="row">
                <p>Attach medical report</p>
                <asp:FileUpload ID="upload_report" runat="server" /> 
                <asp:Button ID="fileupload" runat="server" Text="Upload" OnClick="UploadFile" />  </br>
                <asp:Label ID="lbluploaded" runat="server" ForeColor="Lime"></asp:Label>
                </section>
                <section class="row">
                    <asp:Button ID="Send_btn" runat="server" Text="Send" 
        CssClass="send-btn"></asp:Button> </br>
                    <asp:Label ID="lblsent" runat="server" Text=""></asp:Label>
                </section>



          </section>
    <asp:AccessDataSource ID="adsContact" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [contact_us] WHERE [Contact_id] = ?" 
        InsertCommand="INSERT INTO [contact_us] ([User_name], [User_email], [Country], [Speciality], [Message], [User_phn]) VALUES (?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [contact_us]" 
        UpdateCommand="UPDATE [contact_us] SET [User_name] = ?, [User_email] = ?, [Country] = ?, [Speciality] = ?, [Message] = ?, [User_phn] = ? WHERE [Contact_id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Contact_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="User_email" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="User_phn" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="User_email" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="User_phn" Type="String" />
            <asp:Parameter Name="Contact_id" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </section>
</asp:Content>

