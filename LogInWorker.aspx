<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogInWorker.aspx.cs" Inherits="LogInWorker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-3">
        <h3>Luffare <small>loggar in här</small></h3>
        <div class="form-group">
            <label for="LogEmailUser">Email</label>
            <input id="LogEmailUser" runat="server" class="form-control" placeholder="Email" type="email" />
        </div>
        <div class="form-group">
            <label for="LogPasswordUser">Lösenord</label>
            <input id="LogPasswordUser" runat="server" class="form-control" placeholder="Lösenord" type="password" />
        </div>

        <button id="SubmitLogUserBtn" runat="server" class="btn btn-success" type="submit" OnServerClick="LogInWork">Logga in</button>
        <asp:Label ID="ErrorMsgLbl" runat="server" Visible="False" Text="Vi kunde inte hitta dig, pröva igen!"></asp:Label>
    </div>
</asp:Content>

