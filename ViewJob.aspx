<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewJob.aspx.cs" Inherits="ViewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="imageholderDiv" class="col-md-3 form-group" visible="true">

        <div class='list-group gallery'>
            <div class=''>
                <asp:HyperLink ID="ImageHprLnk" runat="server" CssClass="thumbnail" rel="lightbox" NavigateUrl="">
                    <asp:Image ID="ImageJob" runat="server" CssClass="img-responsive" />
                </asp:HyperLink>

            </div>
        </div>


    </div>
    <br />
    <br />
    <div class="col-md-3">

        <div>
            <b>Jobbtyp:</b>
            <asp:Label ID="TypeLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        <div>
            <b>Beskrivning:</b>
            <asp:Label ID="DescLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        <div>
            <b>Region:</b>
            <asp:Label ID="RegionLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        <div>
            <b>Nuvarande bud:</b>
            <asp:Label ID="CurrentbidLbl" runat="server" Text="Label"></asp:Label>
            SEK;-
        </div>
        <br />
        <div>
            <b>Arbetsgivare:   </b>
            <asp:Label ID="Id_Employer" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        <br />
        <div class="form form-control-static jumbotron">
           
                <h3>Lägg ett bud på detta jobb</h3>
                <br />
                <asp:TextBox ID="Bidtxtbox" runat="server" placeholder="SEK"></asp:TextBox>

                <br /><br />

                <asp:Button CssClass="btn btn-success" ID="SubmitBid" runat="server" Text="Lägg bud" OnClick="SubmitBid_Click" />

            
        </div>
        <asp:Label ID="ErrorInBidLbl" runat="server" Text=""></asp:Label>

    </div>

    <div class="col-md-3">
        <div class="form-group">
            <div>
                <h4>Kommentera</h4>
                <div class="">
                    <div>

                        <textarea id="CommentTextArea" runat="server" class="textarea" cols="20" rows="2"></textarea>
                    </div>
                    <div>
                        <asp:Button ID="SubmitCommentBtn" runat="server" Text="Kommentera" OnClick="SubmitCommentBtn_OnClick" />
                    </div>
                </div>
            </div>
            <div class="">
                <asp:Label ID="AvailableCommentsLbl" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
    <div class="col-md-3">
    </div>





</asp:Content>

