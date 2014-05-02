<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron">
        <div class="container form-group">
            <h1>Välkommen till LuffarJobb!</h1>
            <h3>Arbetsgivare</h3>
            <p>
                Är du trött på att klippa gräsmattan själv? Laga bilen? Måla om? Fixa farmors dator? Skriva dikter till kärringen? Titta hit då! Vi erbjuder en förmedling av just
                sådana tjänster. Dem arbetare vi förmedlar är kanske långt ifrån adliga och luktar illa, men ni slipper all interagering med dem, vi sköter allt och kostnaden är
                lägre än våra konkurenter!
            </p>
            <a href="LogInEmployer.aspx">
                <button type="button" class="btn btn-success" id="LogInEmp" runat="Server">Logga in som arbetsgivare</button>
            </a>
            <a href="RegEmployer.aspx">
                <button type="button" class="btn btn-success" id="RegEmp" runat="Server">Registrera dig som arbetsgivare</button>
            </a>

            <h3>Arbetare</h3>
            <p>
                Hit kommer du som är för motbjudande och lortig för att kunna skaffa ett vanligt jobb. Vi hjälper dig via vår onlinetjänst att hitta jobb som ni kan utföra hemma
           i lugn och ro alternativt på plats men utan några som helst interaktioner med andra människor.
            </p>
            <a href="LogInWorker.aspx">
                <button type="button" class="btn btn-success" id="LogInUser" runat="Server">Logga in som arbetare</button>
            </a>
            <a href="RegWorker.aspx">
                <button type="button" class="btn btn-success" id="RegUser" runat="Server">Registrera dig som arbetare</button>
            </a>
        </div>
    </div>
</asp:Content>

