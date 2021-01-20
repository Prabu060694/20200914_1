<%@ Page Title="QMVAR-Analysis-Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Analysis.Master" CodeBehind="Analysis_Report.aspx.vb" Inherits="Ganges33.Analysis_Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>    
    <link type="text/css" href="CSS/Common/Analysis_Report.css" rel="stylesheet" /> 
            <style type="text/css">
                
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div-background-image" style="background-image: url('pagewall_2/wall_analysis-2.png')">
      <div class="div-EntirePage">
          <table class="table-EntirePage">
              <tr>
                  <td class="td-Blank1"></td>
                  <td class="td-btnAnalysis" rowspan = "2">
                      <asp:ImageButton ID="btnAnalysis" runat="server" ImageUrl="~/icon/analysis.png" CssClass="btn-Image-Analysis" />
                  </td>
                  <td class="td-label-AnalysisActivityReport" rowspan ="2">
                      <asp:Label ID="Label5" runat="server" CssClass="label-AnalysisActivityReport" Text="Analysis Activity Report"></asp:Label>
                  </td>
                  <td class="td-Blank2" colspan =" 2">
                  </td>
                  <td>
                      <asp:Label ID="Label4" runat="server" Text="Current location : " CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10"></asp:Label>
                      <asp:Label ID="lblLoc" runat="server"></asp:Label><br />
                      <asp:Label ID="Label2" runat="server" Text="Current username : " CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10"></asp:Label>
                      <asp:Label ID="lblName" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="td-Blank3"></td>
                  <td class="td-Blank4"></td>
                  <td colspan = "2" class="td-Blank5">
                  </td>
              </tr>
              <tr>
                  <td class="td-Blank6"></td>
                  <td class="td-Blank7" colspan = "2">
                      <asp:Label ID="Label1" runat="server" CssClass="td-Blank8">Activ Month</asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblMonNow" runat="server" CssClass="lbl-Month"></asp:Label>
                      <asp:DropDownList ID="DropDownActiveMonth"  runat="server" CssClass="DropDown-Active-Month" AutoPostBack="True">
                      </asp:DropDownList>&nbsp&nbsp&nbsp
                      <asp:Label ID="lblActiveYear" runat="server" AutoPostBack="True" CssClass="td-Blank8">Year</asp:Label>
                      <asp:DropDownList ID="ddlActiveYear" OnSelectedIndexChanged="ddlActiveYear_SelectedIndexChanged" runat="server" AutoPostBack="True" CssClass="DropDown-Active-Year">
                      </asp:DropDownList>
                 </td>
                  <td class="td-Blank9">
                      
                  </td>
                  <td class="td-lbl6-Review-Report">
                      <asp:Label ID="Label6" runat="server" Text="  " CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10"></asp:Label>
                  </td>
                  <td class="td-Blank12" align = "right">
                      <asp:Label ID="Label3" runat="server" Text="Select Month & Year" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10"></asp:Label>
                      <asp:DropDownList ID="DropDownMonth" runat="server" CssClass="Drop-DownMonth" >
                      </asp:DropDownList>
                        <asp:DropDownList ID="DropDownYear" runat="server" CssClass="Drop-DownYear">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="td-Blank13"></td>
                  <td class="td-lbl8-dropdownday" colspan = "2">
                      <asp:Label ID="Label8" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Select day"></asp:Label>
                      <asp:DropDownList ID="DropDownDay" runat="server" OnSelectedIndexChanged="DropDownDay_SelectedIndexChanged" AutoPostBack="true" CssClass="Drop-DownDay">
                      </asp:DropDownList>
                  </td>
                  <td class="td-Blank14"></td>
                  <td class="td-Blank15"></td>
                  <td align = "right" class="td-Image-Button-open">
                    <asp:ImageButton ID="btnOpen" runat="server" ImageUrl="~/icon/open.png"  CssClass="btn-Image-Open" />
                  </td>
              </tr>
          </table>
          <br />
          <table class="td-textboxs-Label">
              <tr>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label9" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Customer Visit"></asp:Label>
                  </td>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label10" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Call Registered"></asp:Label>
                  </td>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label11" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Repair Completed"></asp:Label>
                  </td>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label12" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Goods Delivered"></asp:Label>
                  </td>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label13" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Pending Calls"></asp:Label>
                  </td>
                  <td class="td-lbls-CustomerVisit-CallRegister-RepairCompleted-GoodsDelivered-PendingCalls-CancelledCalls">
                      <asp:Label ID="Label14" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="Cancelled Calls"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextCustomer_Visit" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextCall_Registered" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextRepair_Completed" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextGoods_Delivered" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextPending_Calls" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
                  <td class="td-textboxs-CustomerVisit-textCallRegistered-TextRepairCompleted-TextGoodsDelivered-TextPendingCalls-TextCancelledCalls">
                      <asp:TextBox ID="TextCancelled_Calls" runat="server" CssClass="textbox-textcustomervisit-textcallRegister-repaircompleted-goodsdeleviry-pendingcalls-cancelledcalls"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="td-lbl-note-td-Blank16-td-Blank17">
                      <asp:Label ID="Label15" runat="server" Text="-note-" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10"></asp:Label>
                  </td>
                  <td class="td-lbl-note-td-Blank16-td-Blank17"></td>
                  <td class="td-lbl-note-td-Blank16-td-Blank17"></td>
                  <td class="td-Blank18-Blank19-Blank20"></td>
                  <td class="td-Blank18-Blank19-Blank20"></td>
                  <td class="td-Blank18-Blank19-Blank20"></td>
              </tr>
              <tr>
                  <td class="td-textNote" colspan = "5">
                      <asp:TextBox ID="TextNote" runat="server" CssClass="textbox-Multiline" TextMode="MultiLine"></asp:TextBox>
                  </td>
                  <td class="td-btnSend" align = "right">
                    <asp:ImageButton ID="btnSend" runat="server" ImageUrl="~/icon/send.png" CssClass="btn-image-Send" />
                  </td>
              </tr>
              <tr>
                  <td class="td-lblMessage-td-Blank21-td-Blank22">
                      <asp:Label ID="Label16" runat="server" CssClass="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10" Text="-message-"></asp:Label>
                  </td>
                  <td class="td-lblMessage-td-Blank21-td-Blank22"></td>
                  <td class="td-lblMessage-td-Blank21-td-Blank22"></td>
                  <td class="td-Blank23-Blank24-Blank25"></td>
                  <td class="td-Blank23-Blank24-Blank25"></td>
                  <td class="td-Blank23-Blank24-Blank25"></td>
              </tr>
              <tr>
                  <td class="td-listmsg" colspan = "5" >
                      <asp:ListBox ID="ListMsg" runat="server" CssClass="listbox-Message"></asp:ListBox>
                  </td>
                  <td class="labels-2-3-4-6-8-9-10-11-12-13-14-15-16-td-Blank10">&nbsp;</td>
              </tr>
          </table>
          <asp:Button ID="BtnCancel" runat="server" Text="Button" style="display:none;"/>
        <asp:Button ID="BtnOK" runat="server" Text="Button" style="display:none;" />
      </div>
    </div>
    <div id="dialog" title="message" style="display:none;"> >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
