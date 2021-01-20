<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Rpa_LogsDetails.aspx.vb" Inherits="Ganges33.Rpa_LogsDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr><td style="text-align:left"><asp:Button ID="btnClose" runat="server" Text="Close" /></td></tr>
                <tr><td>
                <asp:Label ID="lblInfo" runat="server"></asp:Label>
               
     <div class="GridviewDiv">
<asp:GridView runat="server" ID="gvDetails" AllowPaging="true" PageSize="10" AutoGenerateColumns="false" Width="420px" OnPageIndexChanging="gvDetails_PageIndexChanging">
<HeaderStyle BackColor="#F0F0F0" />
<Columns>
 <asp:TemplateField HeaderText="ReRun">  
                   
                    <ItemTemplate>  
                        <asp:CheckBox ID="chkReRun" runat="server" />  
                    </ItemTemplate>  
                </asp:TemplateField>  
<asp:BoundField DataField="Ssc" HeaderText="Ssc" />

<asp:BoundField DataField="TaskName" HeaderText="TaskName" />
<asp:BoundField DataField="Status" HeaderText="Status" visible="false"/>
 <asp:TemplateField HeaderText="Status" >  
        <ItemTemplate>  
        <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>  
         </ItemTemplate>  
        </asp:TemplateField>  
<asp:BoundField DataField="StartDateTime" HeaderText="StartDateTime" />
<asp:BoundField DataField="EndDateTime" HeaderText="EndDateTime" />
<asp:BoundField DataField="ProcessId" HeaderText="ProcessId" />
<asp:BoundField DataField="ReRunCount" HeaderText="ReRun Count" ItemStyle-HorizontalAlign="Center" />
<asp:BoundField DataField="SrcStatusFlg" HeaderText="Downloaded Status" Visible="false" />
       <asp:TemplateField HeaderText="Downloaded Status" >  
        <ItemTemplate>  
        <asp:Label ID="lblSrcStatusFlg" runat="server" Text='<%# Bind("SrcStatusText") %>'></asp:Label>  
         </ItemTemplate>  
        </asp:TemplateField>  
<asp:BoundField DataField="SrcRecordCount" HeaderText="Record Count" Visible="false"  ItemStyle-HorizontalAlign="Center" />
       <asp:TemplateField HeaderText="Record Count" ItemStyle-HorizontalAlign="Center" >  
        <ItemTemplate>  
        <asp:Label ID="lblSrcRecordCount" runat="server" Text='<%# Bind("SrcRecordCountTxt") %>'></asp:Label>  
         </ItemTemplate>  
        </asp:TemplateField> 
<asp:BoundField DataField="TargetStatusFlg" HeaderText="Upload Status" Visible="false" />
        <asp:TemplateField HeaderText="Upload Status" >  
        <ItemTemplate>  
        <asp:Label ID="lblTargetStatusFlg" runat="server" Text='<%# Bind("TargetStatusFlgTxt") %>'></asp:Label>  
         </ItemTemplate>  
        </asp:TemplateField> 
<asp:BoundField DataField="TargetStatusText" HeaderText="QMVAR Result" />
<asp:BoundField DataField="SrcFileName" HeaderText="Downloaded File" />
<asp:BoundField DataField="CvtFileName" HeaderText="Uploaded File" />

<asp:BoundField DataField="ErrorLogs" HeaderText="ErrorLogs" />


                    <asp:TemplateField HeaderText="ssc" Visible="false">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="lblSsc" runat="server" Text='<%# Bind("ssc") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                        <asp:TemplateField HeaderText="TaskName" Visible="false">  
                 
                    <ItemTemplate>  
                        <asp:Label ID="lblTaskName" runat="server" Text='<%# Bind("TaskName") %>'></asp:Label>  
                        <asp:Label ID="lblSchedulerName" runat="server" Text='<%# Bind("SCHEDULER_NAME") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

</Columns>
</asp:GridView></div>
        </td></tr>
               
            </table>
            <asp:Button ID="btnReRun" runat="server" OnClick="btnReRun_Click"
                Text="Selected SSC ReRun" />  
        </div>
    </form>
</body>
</html>
