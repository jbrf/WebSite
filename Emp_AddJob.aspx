<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Emp_AddJob.aspx.cs" Inherits="Emp_AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-12">
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
        <div class="col-md-6">

            <asp:GridView ID="GridView1" GridLines="None" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-hover" DataKeyNames="Id_Job">
                <Columns>
                    <asp:BoundField DataField="Id_Job" HeaderText="Id_Job" SortExpression="Id_Job" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" InsertVisible="False" ReadOnly="True">
<HeaderStyle CssClass="hiddencol"></HeaderStyle>

<ItemStyle CssClass="hiddencol"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Id_Employer" HeaderText="Id_Employer" SortExpression="Id_Employer" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" >
<HeaderStyle CssClass="hiddencol"></HeaderStyle>

<ItemStyle CssClass="hiddencol"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="CurrentBid" HeaderText="CurrentBid" SortExpression="CurrentBid" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Välj vinnare" ShowHeader="True" Text="Acceptera bud" />
                </Columns>
            </asp:GridView>
                

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id_Job], [Type], [Description], [Region], [CurrentBid], [Id_Employer] FROM [Jobs] WHERE ([Id_Employer] = @Id_Employer)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="Id_Employer" SessionField="Owner" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>



        </div>
    </div>
</asp:Content>

