<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogInEmployer.aspx.cs" Inherits="LogInEmployer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-3 content">
        <h3>Arbetsgivare <small>loggar in här</small></h3>
        <div class="form-group">
            <label for="LogEmailEmployer">Email</label>
            <input id="LogEmailEmployer" runat="server" class="form-control" placeholder="Email" type="email" />
        </div>
        <div class="form-group">
            <label for="LogPasswordEmployer">Lösenord</label>
            <input id="LogPasswordEmployer" runat="server" class="form-control" placeholder="Lösenord" type="password" />
        </div>

        <button id="SubmitLogEmployerBtn" runat="server" class="btn btn-success" type="submit" OnServerClick="LogInEmpBtn_Click">Logga in</button>
        <asp:Label ID="ErrorMsgLbl" runat="server" Text="Vi kunde inte hitta dig, pröva igen!" Visible="False"></asp:Label>
    </div>
</asp:Content>

