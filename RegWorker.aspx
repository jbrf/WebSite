<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegWorker.aspx.cs" Inherits="RegWorker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-3">
         <h3>Luffare <small>registrerar sig här</small></h3>
        <div class="form-group">
            <label for="RegEmailUser">Email</label>
            <input id="RegEmailUser" runat="server" class="form-control" placeholder="Email" type="email" />
        </div>
        <div class="form-group">
            <label for="RegPasswordUser">Lösenord</label>
            <input id="RegPasswordUser" runat="server" class="form-control" placeholder="Lösenord" type="password" />
        </div>
        <div class="form-group">
            <label for="RegPasswordRptUser">Bekräfta lösenord</label>
            <input id="RegPasswordRptUser" runat="server" class="form-control" placeholder="Bekräfta lösenord" type="password" />
            <asp:Label ID="WrongPwLblUser" runat="server" Text="Ditt lösenord matchade inte, gör om gör rätt!" Visible="false"></asp:Label>
        </div>
        <button id="SubmitRegUserBtn" runat="server" class="btn btn-success" type="submit" OnServerClick="RegLuffare">Registrera</button>
        <asp:Label ID="ConfirmationLblUser" runat="server" Text="Din registrering genomfördes!" Visible="false"></asp:Label>
    </div>
</asp:Content>

