<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Emp_AddJob.aspx.cs" Inherits="Emp_AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-group col-md-3">
        Inloggad som: <asp:Label ID="loggedInAsLbl" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="LogOutBtn" runat="server" Text="Logga ut" OnClick="LogOutBtn_Click" />
        <h3>Registrera ett nytt jobb <small>som du önskar ha hjälp med</small></h3>
        <br />
        <div class="form-group">
            <label for="JobbTyp">Typ av jobb</label>
            <input id="JobbTyp" runat="server" class="form-control" placeholder="" type="text" />
            <label for="JobbBeskrivning">Beskrivning av jobb</label>
            <textarea id="JobbBeskrivning" runat="server" class="form-control textarea" cols="40" rows="4" maxlength="400"></textarea>
            <label for="Community">Kommun jobbet ska utföras i</label>
            <input id="Community" runat="server" class="form-control" placeholder="Kommun" type="text" />
        </div>
        <asp:FileUpload ID="FileUpload" runat="server" />
        <br />
        <button id="SubmitNewJobBtn" runat="server" class="btn btn-success" type="submit" OnServerClick="AddNewJob">Lägg till nytt jobb</button>
        <asp:Label ID="StatusLbl" runat="server" Text=""></asp:Label>
        
    </div>
</asp:Content>

