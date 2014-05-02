<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegEmployer.aspx.cs" Inherits="RegEmployer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-3">
         <h3>Arbetsgivare <small>registrerar sig här</small></h3>
        <div class="form-group">
            <label for="RegEmailEmployer">Email</label>
            <input id="RegEmailEmployer" runat="server" class="form-control" placeholder="Email" type="email" />
        </div>
        <div class="form-group">
            <label for="RegPasswordEmployer">Lösenord</label>
            <input id="RegPasswordEmployer" runat="server" class="form-control" placeholder="Lösenord" type="password" />
        </div>
        <div class="form-group">
            <label for="RegPasswordRptEmployer">Bekräfta lösenord</label>
            <input id="RegPasswordRptEmployer" runat="server" class="form-control" placeholder="Bekräfta lösenord" type="password" />
            <asp:Label ID="WrongPwLblEmployer" runat="server" Text="Ditt lösenord matchade inte, gör om gör rätt!" Visible="false"></asp:Label>
        </div>
        <button id="SubmitRegEmployerBtn" runat="server" class="btn btn-success" type="submit" OnServerClick="SubmitRegEmployerBtn_OnServerClick">Registrera</button>
        <asp:Label ID="ConfirmationLblEmployer" runat="server" Text="Din registrering genomfördes!" Visible="false"></asp:Label>
    </div>
</asp:Content>

