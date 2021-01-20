<%@ Page Title="QMVQR-AnalysisFileUpload" Language="vb" AutoEventWireup="false" MasterPageFile="~/Analysis.Master" CodeBehind="Analysis_FileUpload.aspx.vb" Inherits="Ganges33.Analysis_FileUpload" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <link type="text/css" href="CSS/Common/Analysis_FileUploaded_1.css" rel="stylesheet" />
        <style type="text/css">
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="div-background-image" style="background-image: url('pagewall_2/wall_analysis-2.png')">
      <div class="div-Entirepage">
        <br />           
                <div>
          <table class="table-EntirePage">
              <tr>
                  <td class="td-Blank1"></td>
                  <td class="td-btnAnalysis">
                      <asp:ImageButton ID="btnAnalysis" runat="server" CssClass="btn-Analysis" ImageUrl="~/icon/analysis.png" />
                  </td>
                  <td class="td-AnalysisFileUpload">
                      <asp:Label ID="Label3" runat="server" CssClass="lbl3-AnalysisFileUpload" Text="Analysis File Upload"></asp:Label>
                  </td>
                  <td class="td-Blank2"></td>
                  <td class="td-Blank3"></td>
                  <td class="td-Blank4"></td>
              </tr>
              <tr>
                  <td class="td-Blank-5-6"></td>
                  <td class="td-lbl-1-2-Currentlocation-CurrentUsername" colspan = "2">
                      <asp:Label ID="Label1" runat="server" Text="Current Location : " CssClass="fontFamily"></asp:Label>
                      <asp:Label ID="lblLoc" runat="server" CssClass="fontFamily"></asp:Label>
                  </td>
                  <td class="td-Blank-7-8"></td>
                  <td class="td-lbl4-droplistlocation-td-Blank9">
                      <asp:Label ID="Label4" runat="server" CssClass="fontFamily" Text="Upload Branch"></asp:Label>&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="DropListLocation" runat="server" CssClass="droplistlocation">
                      </asp:DropDownList>
                  </td>
                  <td class="td-Blank-9-10"></td>
              </tr>
              <tr>
                  <td class="td-Blank-5-6"></td>
                  <td class="td-lbl-1-2-Currentlocation-CurrentUsername" colspan = "2">
                      <asp:Label ID="Label2" runat="server" Text="Current Username : " CssClass="fontFamily"></asp:Label>
                      <asp:Label ID="lblName" runat="server" CssClass="fontFamily"></asp:Label>
                      <br />
                  </td>
                  <td class="td-Blank-7-8"></td>
                  <td class="td-lbl4-droplistlocation-td-Blank9"></td>
                  <td class="td-Blank-9-10"></td>
              </tr>
              <tr>
                  <td class="td-Blank23"></td>
                  <td class="td-Blank24-DropDownList" colspan = "2" rowspan = "2">
                     
                                          <asp:DropDownList ID="drpTask" runat="server" CssClass="DropDownList" AutoPostBack="true"  OnSelectedIndexChanged="OnSelectedIndexChanged">
                                           <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                             <asp:ListItem Text="1.DailyStatementReport" Value="1"></asp:ListItem>
                              <asp:ListItem Text="2.WarrantyExcel File" Value="2"></asp:ListItem>
                              <asp:ListItem Text="3A.Sales Invoice to Samsung_C IW" Value="3"></asp:ListItem>
                              <asp:ListItem Text="3B.Sales Invoice to Samsung_EXC IW" Value="-3"></asp:ListItem>
                             <asp:ListItem Text="4.Invoice Update OOW" Value="4"></asp:ListItem>
                             <asp:ListItem Text="5.Debit Note" Value="5"></asp:ListItem>
                              <asp:ListItem Text="6.PurchaseRegister summary" Value="6"></asp:ListItem>
                             <asp:ListItem Text="7.PurchaseRegister Detail" Value="7"></asp:ListItem>
                              <asp:ListItem Text="8.Good Receiving" Value="8"></asp:ListItem>
                              <asp:ListItem Text="9.StockoverView" Value="9"></asp:ListItem>
                              <asp:ListItem Text="9A.StockoverView Count" Value="9A"></asp:ListItem>
                              <asp:ListItem Text="10.SAW Discount" Value="10"></asp:ListItem>
                              <asp:ListItem Text="11.Parts In and Out History" Value="11"></asp:ListItem>
                              <asp:ListItem Text="12.Fixed Asset" Value="12"></asp:ListItem>
                              <asp:ListItem Text="13.Consumable Purchase List" Value="13"></asp:ListItem>
                              <asp:ListItem Text="14.GSS Paid to Samsung" Value="14"></asp:ListItem>
                             <asp:ListItem Text="15.Return Credit" Value="15"></asp:ListItem>
                              <asp:ListItem Text="16.Samsung Ledger" Value="16"></asp:ListItem>
                              <asp:ListItem Text="17.Service Parts Return" Value="17"></asp:ListItem><%--VJ 2019/10/10--%>
                              <asp:ListItem Text="18.Debit Note Register" Value="18"></asp:ListItem><%--VJ 2019/10/10--%>
                              <%--<asp:ListItem Text="19A.HSN Code with Purchase Detail" Value="19A"></asp:ListItem><%--VJ 2019/10/15--%>
                              <asp:ListItem Text="19B.HSN Code" Value="19B"></asp:ListItem><%--VJ 2019/10/15--%>
                              <asp:ListItem Text="20.OtherSalesExtendedWarranty" Value="20"></asp:ListItem>
                              <asp:ListItem Text="21.PO Status" Value="21"></asp:ListItem>
                              <asp:ListItem Text="22.Activity Report" Value="22"></asp:ListItem>
                              <asp:ListItem Text="23.PODC" Value="23"></asp:ListItem>
                               <asp:ListItem Text="24.Samsung to GSS paid (BOI)" Value="24"></asp:ListItem>
                             

                      </asp:DropDownList>
 
                       <asp:DropDownList ID="DropDownMonth" runat="server" CssClass="dropdownmonth" Visible ="false" >
                        		     <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                             <asp:ListItem Text="January" Value="01"></asp:ListItem>
                              <asp:ListItem Text="February" Value="02"></asp:ListItem>
                              <asp:ListItem Text="March" Value="03"></asp:ListItem>
                             <asp:ListItem Text="April" Value="04"></asp:ListItem>
                              <asp:ListItem Text="May" Value="05"></asp:ListItem>
                               <asp:ListItem Text="June" Value="06"></asp:ListItem>
                             <asp:ListItem Text="July" Value="07"></asp:ListItem>
                              <asp:ListItem Text="August" Value="08"></asp:ListItem>
                              <asp:ListItem Text="September" Value="09"></asp:ListItem>
                              <asp:ListItem Text="October" Value="10"></asp:ListItem>
                              <asp:ListItem Text="November" Value="11"></asp:ListItem>
                              <asp:ListItem Text="December" Value="12"></asp:ListItem>
                      </asp:DropDownList> 
                      <asp:DropDownList ID="DropDownYear" runat="server" CssClass="dropdownyear" Visible ="false" >
                            <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                              <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                              <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                             <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                              <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                               <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                             <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                         
                      </asp:DropDownList>
                      <br /><br />
                      <asp:Label ID="Label10" runat="server" Text="Invoice Date" CssClass="fontFamily"></asp:Label> &nbsp;&nbsp;&nbsp
                      <asp:RadioButton ID="RadioBtnMM" runat="server" CssClass="fontFamily" AutoPostBack="True" Text="mm/dd/yyyy" /><span class="fontFamily">&nbsp;&nbsp;</span>&nbsp;&nbsp;<asp:RadioButton ID="RadioBtnDD" runat="server" AutoPostBack="True" CssClass="fontFamily" Text="dd/mm/yyyy" /><br /><br />
                      <asp:FileUpload ID="FileUploadAnalysis" runat="server" CssClass="FileUploadAnalysis"/>
                  </td>
                  <td class="td-Blank11"></td>
                  <td class="td-Blank12">
                     
                      <asp:Label ID="Label7" runat="server" Text="Parts Invoice No" CssClass="fontFamily"></asp:Label>&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="TextPartsInvoiceNo" runat="server" CssClass="TextPartsInvoiceNo"></asp:TextBox> <br class="fontFamily" /><br />
                      <asp:Label ID="Label8" runat="server" Text="Labor Invoice No" CssClass="fontFamily"></asp:Label>&nbsp;&nbsp;
                      <asp:TextBox ID="TextLaborInvoiceNo" runat="server" CssClass="TextLaborInvoiceNo"></asp:TextBox><br class="fontFamily" /><br />
                      <asp:Label ID="Label9" runat="server" Text="Invoice Date(mm/dd/yyyy)" CssClass="fontFamily"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="TextInvoiceDate" runat="server" Height="23px" Width="160px"></asp:TextBox>&nbsp;&nbsp;&nbsp;<ajaxToolkit:CalendarExtender ID="TextInvoiceDate_CalendarExtender" runat="server" BehaviorID="TextInvoiceDate_CalendarExtender" TargetControlID="TextInvoiceDate" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                      &nbsp;&nbsp;&nbsp; <br />
                  </td>
                  <td class="td-Blank13"></td>
              </tr>
              <tr>
                  <td class="td-Blank14"></td>
<%--                  <td  colspan = "2">
                      <asp:Label ID="Label10" runat="server" Text="Invoice Date" CssClass="auto-style186"></asp:Label> &nbsp;&nbsp;&nbsp
                      <asp:RadioButton ID="RadioBtnMM" runat="server" CssClass="auto-style186" AutoPostBack="True" Text="mm/dd/yyyy" /><span class="auto-style186">&nbsp;&nbsp;</span>&nbsp;&nbsp;<asp:RadioButton ID="RadioBtnDD" runat="server" AutoPostBack="True" CssClass="auto-style186" Text="dd/mm/yyyy" />
                  </td>--%>
                  <td class="td-Blank15"  align = "right" >                      
                  </td>
                  <td align = "left" style="vertical-align:middle">
                       <asp:Label ID="lblDate" runat="server" CssClass="fontFamily">Date</asp:Label>
                     <asp:TextBox ID="txtDate" runat="server" Width="100px"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" Format="MM/dd/yyyy" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblAmount" runat="server" CssClass="fontFamily">Amount</asp:Label>&nbsp;&nbsp;<asp:TextBox ID="txtAmount" runat="server" Width="100px"></asp:TextBox>
                        <br /><br />
                      <asp:Label ID="lblArNo" runat="server" CssClass="fontFamily" Text="Advice Reference No"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="txtArNo" runat="server" Text="" Enabled="false" ></asp:TextBox>
                  </td>
                  <td class="td-btnUpload" align = "left"><asp:ImageButton ID="btnUpload" runat="server" ImageUrl="~/icon/import.png" CssClass="btnUpload" /></td>
              </tr>
              <tr><td colspan="4" style="padding-top:10px;"></td></tr>
              <tr>
                  <td class="td-Blank16"></td>
                  <td class="td-lbl5-listmsg" colspan = "3">
                      <asp:Label ID="Label5" runat="server" Text="Message" CssClass="fontFamily"></asp:Label> <br />
                      <asp:ListBox ID="ListMsg" runat="server" CssClass="listbox"></asp:ListBox>
                  </td>
                  <td class="td-lbl6-ListHistory">
                      <asp:Label ID="Label6" runat="server" Text="History" CssClass="fontFamily"></asp:Label> <br />
                      <asp:ListBox ID="ListHistory" runat="server" CssClass="ListHistory"></asp:ListBox>
                  </td>
                  <td class="td-Blank17"></td>
              </tr>
              <tr>
                  <td class="td-Blank18">&nbsp;</td>
                  <td class="td-Blank19">&nbsp;</td>
                  <td class="td-Blank20">&nbsp;</td>
                  <td class="td-Blank21">&nbsp;</td>
                  <td class="td-Blank22">
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
        </div>                   
        <asp:Button ID="BtnCancel" runat="server" Text="Button" style="display:none;"/>
        <asp:Button ID="BtnOK" runat="server" Text="Button" style="display:none;" />
      </div>
   </div>
    <div id="dialog" title="message" style="display:none;"> >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
