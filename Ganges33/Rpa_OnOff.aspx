<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/RpaSub.Master" CodeBehind="Rpa_OnOff.aspx.vb" Inherits="Ganges33.Rpa_OnOff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <table>
        <tr>
            <td><asp:Label ID="lblInfo" runat="server"></asp:Label></td><td></td>
        </tr>
        <tr>
            <td style="vertical-align:top">
                <asp:Button ID="btnAllTaskEnable" runat="server" Text="Update Enable Scheduler" Width="282px" />
                <br />
                <br />
                <asp:Button ID="btnAllTaskDisable" runat="server" Text="Update Disable Scheduler" Width="284px" />
                 <br />
                <br />
                <asp:Button ID="btnLoadAutoChecker" runat="server" Text="Load Auto Task Checker (ATC)" Width="280px" />
                   <br />
                <br />
                <asp:Button ID="btnEnableAutoChecker" runat="server" Text="Enable Auto Task Checker (ATC)" Width="279px" />
                    <br />
                <br />
                <asp:Button ID="btnDisableAutoChecker" runat="server" Text="Disable Auto Task Checker (ATC)" Width="277px"   OnClientClick="return confirm('Are you sure you want to disable the auto checker scheduler?');" />
                     <br />
                <br />
                <asp:Button ID="btnSuspendScheduler" runat="server" Text="Suspend Scheduler" Width="287px" />
                     <br />
                <br />
                <asp:Button ID="btnSuspendTask" runat="server" Text="Suspend Tasks" Width="283px" />
            </td>
            <td> <div class="GridviewDiv">

                <asp:GridView runat="server" ID="gvDetails" AllowPaging="true"   AutoGenerateColumns="false" Width="420px" >
<HeaderStyle BackColor="#F0F0F0" />
<Columns>
 <asp:TemplateField HeaderText="Select">  
<ItemTemplate>  
 <asp:CheckBox ID="chk" runat="server" />  
 </ItemTemplate>  
</asp:TemplateField>  
<asp:BoundField DataField="ship_code" HeaderText="ship_code" Visible="false" />
 <asp:TemplateField HeaderText="ship_code"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Id") %>'></asp:Label>   
                            <asp:Label ID="lblStatus" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem, "Column3") %>'></asp:Label>   

                        </ItemTemplate>
                    </asp:TemplateField>

<asp:BoundField DataField="Column2" HeaderText="Scheduler/Task Name" />
<asp:BoundField DataField="Column3" HeaderText="Status"  />
</Columns>
</asp:GridView>
<br />
                  <asp:Button ID="btnUpdate" runat="server" Text="" Visible="false" />
</div></td>
        </tr>
    </table>
</asp:Content>

