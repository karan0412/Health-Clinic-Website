<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Appointment_receipt.aspx.vb" Inherits="Appointment_receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Your Appointment is confirmed</h2>
    <asp:AccessDataSource ID="adsAppointment" runat="server" 
        DataFile="~/App_Data/ExcelHealth.mdb" 
        DeleteCommand="DELETE FROM [Appointment] WHERE [Patient_email] = ?" 
        InsertCommand="INSERT INTO [Appointment] ([Reason], [Appointment_date], [Speciality], [Appointment_time], [Patient_email]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Appointment]" 
        UpdateCommand="UPDATE [Appointment] SET [Reason] = ?, [Appointment_date] = ?, [Speciality] = ?, [Appointment_time] = ? WHERE [Patient_email] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Patient_email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Appointment_date" Type="DateTime" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Appointment_time" Type="DateTime" />
            <asp:Parameter Name="Patient_email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Appointment_date" Type="DateTime" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Appointment_time" Type="DateTime" />
            <asp:Parameter Name="Patient_email" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="Appointmentgrid" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="Patient_email" DataSourceID="adsAppointment">
        <Columns>
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" />
            <asp:BoundField DataField="Appointment_date" HeaderText="Appointment date" 
                SortExpression="Appointment_date" />
            <asp:BoundField DataField="Speciality" HeaderText="Speciality" 
                SortExpression="Speciality" />
            <asp:BoundField DataField="Appointment_time" HeaderText="Appointment time" 
                SortExpression="Appointment_time" />
            <asp:BoundField DataField="Patient_email" HeaderText="Patient email" 
                ReadOnly="True" SortExpression="Patient_email" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>

