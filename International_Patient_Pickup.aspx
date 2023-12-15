<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="International_Patient_Pickup.aspx.vb" Inherits="International_Patient_Pickup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/International_Patient_Pickup.css" rel="stylesheet" 
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="pickup">
     <section class="pickup-frame">
        <asp:Image ID="Pickup_img" runat="server" CssClass="pickup-img" 
        ImageUrl="~/images/taxi-pickup.png"></asp:Image>
        <h2>Book a pickup schedule now!</h2>
        <p>We provide free pickup service for our international patients <br />
            Book a scehdule now!</p>
        <section class="create-scehdule">
            <h3>Scehdule</h3>
                    <section class="row">
                        <strong>Flight arrival date and time:</strong>
                <section class="row">
                    <asp:TextBox ID="input_date" runat="server" TextMode="Date" CssClass="input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="datevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="input_date" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="input_time" runat="server" CssClass="input" TextMode="Time"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="timevalidator" runat="server" 
        ErrorMessage="*Required" ControlToValidate="input_time" ForeColor="Red"></asp:RequiredFieldValidator> <br />
                                <asp:Button ID="schedule_btn" runat="server" 
                        Text="Book Schedule" CssClass="schedule-btn"></asp:Button>
                </section>
            
            <asp:Label ID="lblpickup" runat="server" Text=""></asp:Label>
            
            </section>

        <asp:AccessDataSource ID="bookpickup" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        SelectCommand="SELECT * FROM [pick_up]" 
        DeleteCommand="DELETE FROM [pick_up] WHERE [pickup_id] = ?" 
        InsertCommand="INSERT INTO [pick_up] ([Pickup_date], [Pickup_time]) VALUES (?, ?)" 
        UpdateCommand="UPDATE [pick_up] SET [Pickup_date] = ?, [Pickup_time] = ? WHERE [pickup_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="pickup_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pickup_date" Type="DateTime" />
                <asp:Parameter Name="Pickup_time" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pickup_date" Type="DateTime" />
                <asp:Parameter Name="Pickup_time" Type="DateTime" />
                <asp:Parameter Name="pickup_id" Type="Int32" />
            </UpdateParameters>
    </asp:AccessDataSource>

        </section>
 </section>
</asp:Content>

