<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Online_Consultation.aspx.vb" Inherits="Online_Consultation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Online_Consultation.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="online_consult">

     <section class="consult-frame">
        <asp:Image ID="appointment_img" runat="server" CssClass="online-img" 
        ImageUrl="~/images/doctor-online.png"></asp:Image>
        <h2>Make an Online Appointment Now</h2>
        <p>Do you live abroad and queries?<br />
            Create an Online Appointment with us now!</p>
        <section class="create-online-appointment">
            <h3 style="text-align: center; position: relative">Online Appointment</h3>
                    <section class="row">
                    <strong>Speciality:</strong>
                        <asp:DropDownList ID="speciality" runat="server" 
        AppendDataBoundItems="True" CssClass="input">
                            <asp:ListItem>Surgery</asp:ListItem>
                            <asp:ListItem>Gynocolgy</asp:ListItem>
                            <asp:ListItem>Orthopedics</asp:ListItem>
                            <asp:ListItem>Physiotherapy</asp:ListItem>
                            <asp:ListItem>Ultrasound</asp:ListItem>
                            <asp:ListItem>Dental</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="specialityvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="speciality" ForeColor="Red"></asp:RequiredFieldValidator>
                    </section class="row">
                    <section class="row">
                        <asp:TextBox ID="reason" runat="server" 
        TextMode="MultiLine" placeholder="Reason" CssClass="input"></asp:TextBox>
                    </section>
                <section class="row">
                    <asp:TextBox ID="input_date" runat="server" TextMode="Date" CssClass="input"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="datevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="input_date" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="input_time" runat="server" CssClass="input" TextMode="Time"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="timevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="input_time" ForeColor="Red"></asp:RequiredFieldValidator>
                </section>
            
            </section>
            <asp:Button ID="online_appointment_btn" runat="server" 
        Text="Create Online Appointment" CssClass="online-btn"></asp:Button>
        </section>
    <asp:Label ID="lblonlineAppointment" runat="server" Text=""></asp:Label>
    <br />
 </section>
    <asp:AccessDataSource ID="Onlineconsultation" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [Online_Consultation] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Online_Consultation] ([Speciality], [Reason], [Consultation_date], [Consultation_time]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Online_Consultation]" 
        UpdateCommand="UPDATE [Online_Consultation] SET [Speciality] = ?, [Reason] = ?, [Consultation_date] = ?, [Consultation_time] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Consultation_date" Type="DateTime" />
            <asp:Parameter Name="Consultation_time" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Consultation_date" Type="DateTime" />
            <asp:Parameter Name="Consultation_time" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

