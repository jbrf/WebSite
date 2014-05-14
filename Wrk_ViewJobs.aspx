<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Wrk_ViewJobs.aspx.cs" Inherits="Wrk_ViewJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="form jbdevsevilmasterplan">
        Här finns alla jobb som är till gängliga!<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id_Job" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" CssClass="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id_Job" HeaderText="ss" SortExpression="Id_Job" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol"/>
                <asp:BoundField DataField="Type" HeaderText="Jobbtyp" SortExpression="Type" />
                <asp:BoundField DataField="Description" HeaderText="Beskrivning" SortExpression="Description" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="CurrentBid" HeaderText="Nuvarande bud " SortExpression="CurrentBid" />

            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CurrentBid], [Id_Job], [Id_Employer], [Type], [Description], [Region] FROM [Jobs]"></asp:SqlDataSource>
    </div>

</asp:Content>

