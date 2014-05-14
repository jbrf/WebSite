<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewJob.aspx.cs" Inherits="ViewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-6 form-group">
    <div>Jobbtyp:
    <asp:Label ID="TypeLbl" runat="server" Text="Label"></asp:Label></div>
    <div>
        Beskrivning:
    <asp:Label ID="DescLbl" runat="server" Text="Label"></asp:Label></div>
    <div>
        Region:
    <asp:Label ID="RegionLbl" runat="server" Text="Label"></asp:Label></div>
    <div>
        Nuvarande bud:
    <asp:Label ID="CurrentbidLbl" runat="server" Text="Label"></asp:Label></div>
    <div>
        Arbetsgivare:
    <asp:Label ID="Id_Employer" runat="server" Text="Label"></asp:Label></div>
        </div>
    <div id="theDiv" class="container" runat="server" visible="true">
        <div class="row">
            <div class='list-group gallery'>
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <asp:HyperLink ID="ImageHprLnk" runat="server" CssClass="thumbnail fancybox" rel="lightbox" NavigateUrl="">
                        <asp:Image ID="ImageJob" runat="server" CssClass="img-responsive" />
                    </asp:HyperLink>
                    <div class='text-right'>
                        <small class='text-muted'>Image Title</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="col-md-7">
        <asp:TextBox ID="Bidtxtbox" runat="server"></asp:TextBox> kr
        </div>
        <br />
        <div class="col-md-5">
        <asp:Button ID="SubmitBid" runat="server" Text="Lägg bud" OnClick="SubmitBid_Click" />
        </div>
    </div>





</asp:Content>

