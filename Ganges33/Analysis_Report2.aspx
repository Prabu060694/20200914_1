<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Analysis.Master" CodeBehind="Analysis_Report2.aspx.vb" Inherits="Ganges33.Analysis_Report2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link href="CSS/Common/Analysis-report2.css" rel="stylesheet" />
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
                
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="div-entire-tbl" style="background-image: url('pagewall_2/wall_analysis-2.png')">
      <div class="div-analysis-report2">
          <table class="tbl-analysis-report2">
              <tr>
                  <td class="td-blank1"></td>
                  <td class="td-blank3" rowspan = "2">
                      &nbsp;</td>
                  <td class="td-lbl-review" rowspan ="2" >
                      <asp:Label ID="Label5" runat="server" CssClass="lbl-font-xx-large" Text="Review Activity Report"></asp:Label>
                  </td>
                  <td class="td-blank4"></td>
                  <td class="td-lbl-activitymonth" colspan =" 2">
                      <asp:Label ID="Label6" runat="server" CssClass="lbl-font-xx-large">Activity Month</asp:Label>
                  &nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblMonNow" runat="server" CssClass="lbl-font-month-now"></asp:Label>
                      <br />
                  </td>
              </tr>
              <tr>
                  <td class="td-blank1"></td>
                  <td class="td-blank4"></td>
                  <td colspan = "2">
                  </td>
              </tr>
              <tr>
                  <td class="td-blank1"></td>
                  <td class="td-blank2" colspan = "2">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </td>
                  <td class="td-blank4"></td>
                  <td class="td-blank4">
                      &nbsp;</td>
                  <td class="td-blank4" align = "right">
                      &nbsp;</td>
              </tr>
          </table>
          <table align = "center">
              <tr>
                  <td>
                    <asp:ImageButton ID="btnDown" runat="server"  ImageUrl="~/icon/download.png"  CssClass="btn-img-download-back" />
                  </td>
                  <td align = "right">
                    <asp:ImageButton ID="btnBack" runat="server"  ImageUrl="~/icon/back.png" CssClass="btn-img-download-back" />
                  </td>
              </tr>
              <tr>
                  <td colspan = "2">
                      <asp:GridView ID="GridInfo" runat="server" PageSize="31" EmptyDataText="There was no relevant information">
                       <HeaderStyle BackColor="#66FFFF" />
                       <RowStyle Height="25px" Width ="150px" Wrap="False"/>
                      </asp:GridView>
                  </td>
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
