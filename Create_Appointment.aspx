<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Create_Appointment.aspx.vb" Inherits="Create_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Create_Appointment.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="appointment">

     <section class="appointment-frame">
        <asp:Image ID="appointment_img" runat="server" CssClass="appoint-img" 
        ImageUrl="~/images/appointment.png"></asp:Image>
        <h2>Make an Appointment Now</h2>
        <p>Don't want to wait in the queue? <br />
            Create an Appointment with us now!</p>
        <section class="create-appointment">
            <h3>Appointment</h3>
                 
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
                    </section>
                    <section class="row">
                        <asp:TextBox ID="reason" runat="server" 
        TextMode="MultiLine" placeholder="Reason" CssClass="input"></asp:TextBox> </br>
        <asp:RequiredFieldValidator ID="reasonvalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="reason" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Button ID="appointment_btn" runat="server" 
        Text="Create Appointment" CssClass="book-btn"></asp:Button>
         <asp:Label ID="lblAppointment" runat="server" Text=""></asp:Label>
         <asp:AccessDataSource ID="adsAppointment" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [Appointment] WHERE [Appointment_id] = ?" 
        InsertCommand="INSERT INTO [Appointment] ([Reason], [Appointment_date], [Speciality], [Appointment_time]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Appointment]" 
        
        UpdateCommand="UPDATE [Appointment] SET [Reason] = ?, [Appointment_date] = ?, [Speciality] = ?, [Appointment_time] = ? WHERE [Appointment_id] = ?">
             <DeleteParameters>
                 <asp:Parameter Name="Appointment_id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Reason" Type="String" />
                 <asp:Parameter Name="Appointment_date" Type="DateTime" />
                 <asp:Parameter Name="Speciality" Type="String" />
                 <asp:Parameter Name="Appointment_time" Type="DateTime" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Reason" Type="String" />
                 <asp:Parameter Name="Appointment_date" Type="DateTime" />
                 <asp:Parameter Name="Speciality" Type="String" />
                 <asp:Parameter Name="Appointment_time" Type="DateTime" />
                 <asp:Parameter Name="Appointment_id" Type="Int32" />
             </UpdateParameters>
    </asp:AccessDataSource>
        </section>
 </section>
</asp:Content>

