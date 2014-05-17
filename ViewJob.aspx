<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewJob.aspx.cs" Inherits="ViewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="imageholderDiv" class="col-md-6 form-group" visible="true">
         <div class="row">
            <div class='list-group gallery'>
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <asp:HyperLink ID="ImageHprLnk" runat="server" CssClass="thumbnail fancybox" rel="lightbox" NavigateUrl="">
                        <asp:Image ID="ImageJob" runat="server" CssClass="img-responsive" />
                    </asp:HyperLink>
                    
                </div>
            </div>
        </div>
        <div>
            Jobbtyp:
    <asp:Label ID="TypeLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Beskrivning:
    <asp:Label ID="DescLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Region:
    <asp:Label ID="RegionLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Nuvarande bud:
    <asp:Label ID="CurrentbidLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Arbetsgivare:
    <asp:Label ID="Id_Employer" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div id="theDiv" class="container col-md-6" runat="server" visible="true">
       
    </div>
    <div class="col-md-6">

        <div class="">
            Lägg ett bud på detta jobb<br />
            <asp:TextBox ID="Bidtxtbox" runat="server" placeholder="SEK"></asp:TextBox>
        </div>
        <br />
        <div class="">
            <asp:Button ID="SubmitBid" runat="server" Text="Lägg bud" OnClick="SubmitBid_Click" />
        </div>
            <asp:Label ID="ErrorInBidLbl" runat="server" Text=""></asp:Label>

    </div>





</asp:Content>

