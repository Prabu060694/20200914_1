<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Analysis.Master" CodeBehind="Analysis_Export.aspx.vb" Inherits="Ganges33.Analysis_Export" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>

        <style type="text/css">
        .auto-style6 {
            z-index: 1;
            left: 38px;
            top: 122px;
            position: absolute;
            height: 560px;
            width: 1255px;
            background-size: contain;
            }
            .auto-style7 {
                height: 100%;
                background: rgba(255,255,255,0.8);
                /*opacity: 0.5;*/
            }
            .auto-style135 {
                width: 100%;
                height: 481px;
            }
            .auto-style136 {
                width: 101px;
            }
            .auto-style137 {
                width: 101px;
                height: 99px;
            }
            .auto-style138 {
                height: 99px;
            }
            .auto-style139 {
                height: 99px;
                width: 107px;
            }
            .auto-style140 {
                width: 107px;
                font-family: "Meiryo UI";
            }
            .auto-style141 {
                height: 99px;
                width: 363px;
            }
            .auto-style145 {
                width: 101px;
                height: 36px;
            }
            .auto-style149 {
                height: 36px;
            }
            .auto-style150 {
                width: 101px;
                height: 51px;
            }
            .auto-style154 {
                height: 51px;
            }
            .auto-style160 {
                width: 101px;
                height: 9px;
            }
            .auto-style161 {
                width: 107px;
                height: 9px;
            }
            .auto-style168 {
                height: 51px;
                width: 470px;
            }
            .auto-style173 {
                width: 363px;
                font-family: "Meiryo UI";
            }
            .auto-style174 {
                height: 99px;
                width: 470px;
            }
            .auto-style175 {
                width: 470px;
                height: 36px;
            }
            .auto-style179 {
                height: 99px;
                width: 102px;
            }
            .auto-style180 {
                width: 102px;
                height: 36px;
            }
            .auto-style181 {
                width: 102px;
                height: 51px;
            }
            .auto-style184 {
                width: 102px;
                font-family: "Meiryo UI";
            }
            .auto-style185 {
                width: 470px;
            }
            .auto-style186 {
                font-family: "Meiryo UI";
            }
            .auto-style187 {
                font-family: "Meiryo UI";
                font-size: xx-large;
            }
            .auto-style193 {
                height: 9px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server"  >  </asp:ScriptManager>
    <div class="auto-style6" style="background-image: url('pagewall_2/wall_analysis-2.png')">
      <div class="auto-style7">
        <br />
          
                <div>
          <table class="auto-style135">
              <%--<tr>--%>
                  <td class="auto-style137"></td>
                  <td class="auto-style139">
                      <asp:ImageButton ID="btnAnalysis" runat="server" Height="108px" ImageUrl="~/icon/analysis.png" Width="108px" />
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="Label3" runat="server" CssClass="auto-style187" Text="Analysis File Export"></asp:Label>
                  </td>
                  <td class="auto-style179"></td>
                  <td class="auto-style174"></td>
                  <td class="auto-style138"></td>
              </tr>
              <tr>
                  <td class="auto-style145"></td>
                  <td colspan = "2">
                      <asp:Label ID="Label1" runat="server" Text="Current Location : " CssClass="auto-style186"></asp:Label>
                      <asp:Label ID="lblLoc" runat="server" CssClass="auto-style186"></asp:Label>
                  </td>
                  <td class="auto-style180"></td>
                  <td class="auto-style175"></td>
                  <td class="auto-style149"></td>
              </tr>
              <tr>
                  <td class="auto-style145"></td>
                  <td colspan = "2">
                      <asp:Label ID="Label2" runat="server" Text="Current Username : " CssClass="auto-style186"></asp:Label>
                      <asp:Label ID="lblName" runat="server" CssClass="auto-style186"></asp:Label>
                  </td>
                  <td class="auto-style180"></td>
                  <td class="auto-style175"></td>
                  <td class="auto-style149"></td>
              </tr>
                          <tr>
                  <td class="auto-style150"></td>
                  <td colspan = "2">
                      <asp:Label ID="Label4" runat="server" CssClass="auto-style186" Text="Target Store"></asp:Label>
                      <span class="auto-style186">&nbsp;&nbsp; </span>
                      <asp:DropDownList ID="DropListLocation" runat="server" CssClass="auto-style186" Height="33px" Width="303px" >
                   
                          </asp:DropDownList>
                  </td>
                  <td class="auto-style181"></td>
                  <td class="auto-style168">
                      <asp:Label ID="Label5" runat="server" CssClass="auto-style186" Text="Export File"></asp:Label>
                      <span class="auto-style186">&nbsp;&nbsp; </span>
                    
                      <asp:DropDownList ID="DropDownExportFile" runat="server" CssClass="auto-style186" Height="33px" Width="303px" Visible="false" >
                      </asp:DropDownList>
                           
                         <asp:DropDownList ID="drpTaskExport" runat="server" Height="32px" Width="380px"  AutoPostBack="true"  >
                              <asp:ListItem Text="Select..." Value="-1"></asp:ListItem>
                             <asp:ListItem Text="0.PL_Tracking_Sheet" Value="0"></asp:ListItem>
                              <asp:ListItem Text="1.DailyRepairStatement" Value="1"></asp:ListItem>
                              <asp:ListItem Text="2A.Sales Register from GSPIN software for In warranty" Value="2.1"></asp:ListItem>
                              <asp:ListItem Text="2B.Sales Register from GSPIN software for Out warranty" Value="2.2"></asp:ListItem>
                              <asp:ListItem Text="2C.Sales Register from GSPIN software for Other Sales" Value="2.3"></asp:ListItem>

                             <asp:ListItem Text="3A.Sales Register from GSPN Samsung_C IW" Value="3"></asp:ListItem>
                               <asp:ListItem Text="3B.Sales Register from GSPN Samsung_EXC IW" Value="-3"></asp:ListItem>
                              <asp:ListItem Text="4.Sales Register from GSPN OOW" Value="4"></asp:ListItem>
                               <asp:ListItem Text="5.Debit Note" Value="5"></asp:ListItem>
                             <asp:ListItem Text="6.Purchase Register Summary" Value="6"></asp:ListItem>
                              <asp:ListItem Text="7.Purchase Register Detail" Value="7"></asp:ListItem>
                              <asp:ListItem Text="8.Goods Receiving" Value="8"></asp:ListItem>
                              <asp:ListItem Text="9.Stockoverview" Value="9"></asp:ListItem>
                              <asp:ListItem Text="9A.StockoverView Count" Value="9A"></asp:ListItem>
                              <asp:ListItem Text="10.SAW Discount" Value="10"></asp:ListItem>
                             <asp:ListItem Text="11.Parts In and Out History" Value="11"></asp:ListItem>
                              <asp:ListItem Text="12.Fixed Asset" Value="12"></asp:ListItem>
                              <asp:ListItem Text="13.Consumable Purchase List" Value="13"></asp:ListItem>
                             <asp:ListItem Text="14.GSS Paid to Samsung" Value="14"></asp:ListItem>
                             <asp:ListItem Text="15.Return Credit" Value="15"></asp:ListItem>
                              <asp:ListItem Text="16.Samsung Ledger" Value="16"></asp:ListItem>
                             <%--<asp:ListItem Text="18.Debit Note Register & Service Part Return" Value="18A"></asp:ListItem>-VJ 2019/10/14--%>
                             <asp:ListItem Text="18.Debit Note Register" Value="18"></asp:ListItem><%--VJ 2019/10/14--%>
                             <asp:ListItem Text="19.Service Part Return" Value="19"></asp:ListItem><%--VJ 2019/10/14--%>
                            <asp:ListItem Text="19A.PO Confirmation" Value="19A"></asp:ListItem>
                             <asp:ListItem Text="19B.HSN Code" Value="19B"></asp:ListItem><%--VJ 2019/10/18--%>
                            <asp:ListItem Text="20.OtherSalesExtendedWarranty" Value="20"></asp:ListItem>
                            <asp:ListItem Text="21.PO Status" Value="21"></asp:ListItem>
                            <asp:ListItem Text="22.Activity Report" Value="22"></asp:ListItem>
                             <asp:ListItem Text="23.PO Confirmation" Value="23"></asp:ListItem>
                            <asp:ListItem Text="24.Samsung to GSS paid (BOI)" Value="24"></asp:ListItem>							 
							 <asp:ListItem Text="25.Account Report" Value="25"></asp:ListItem>
                             <asp:ListItem Text="99.Final_Report" Value="99"></asp:ListItem> <%--VJ 2019/10/14--%>
                             
                            
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style154"></td>
              </tr>
           
              <tr>
                  <td class="auto-style160"></td>
                  <td class="auto-style161" colspan = "4">
                      <asp:Label ID="Label6" runat="server" Text="Month：" CssClass="auto-style186"></asp:Label>   
                      &nbsp;&nbsp;
                      <asp:DropDownList ID="DropDownMonth" runat="server" CssClass="auto-style186" Height="24px" Width="169px" >
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
                      <asp:DropDownList ID="DropDownYear" runat="server" CssClass="auto-style186" Height="24px" Width="60px" >
                            <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                              <asp:ListItem Text="2020" Value="2020" Selected="True"></asp:ListItem>
                              <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                             <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                              <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                               <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                             <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                         
                      </asp:DropDownList>
                      		<asp:DropDownList ID="DropDownDaySub" runat="server" CssClass="auto-style186" Height="24px" Width="60px" Visible="false">
                              <asp:ListItem Text="Select Day..." Value="0"></asp:ListItem>
                            <asp:ListItem Text="01" Value="01"></asp:ListItem>
                              <asp:ListItem Text="11" Value="11"></asp:ListItem>
                              <asp:ListItem Text="21" Value="21"></asp:ListItem>
               </asp:DropDownList>
                      <asp:DropDownList ID="DropDownDTSub" runat="server" CssClass="auto-style186" Height="24px" Width="60px" Visible="false" >
                              <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                            <asp:ListItem Text="DT1" Value="DT1"></asp:ListItem>
                              <asp:ListItem Text="DT2" Value="DT2"></asp:ListItem>
                 </asp:DropDownList>
                          <asp:DropDownList ID="DropDownGR" runat="server" CssClass="auto-style186" Height="24px" Width="100px" Visible="false" >
                            <asp:ListItem Text="Summary" Value="GR"></asp:ListItem>
                              <asp:ListItem Text="Detail" Value="GD"></asp:ListItem>
                 </asp:DropDownList>

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
                      <asp:Label ID="Label7" runat="server" CssClass="auto-style186" Text=" Date：　From"></asp:Label>
                      <asp:TextBox ID="TextDateFrom" runat="server" CssClass="auto-style186"></asp:TextBox>&nbsp;
                      <ajaxToolkit:CalendarExtender ID="TextDateFrom_CalendarExtender" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="TextDateFrom" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                      <asp:Label ID="Label8" runat="server" CssClass="auto-style186" Text="To"></asp:Label>
                      <asp:TextBox ID="TextDateTo" runat="server" CssClass="auto-style186"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="TextDateTo_CalendarExtender" runat="server" BehaviorID="TextDateTo_CalendarExtender" TargetControlID="TextDateTo" PopupPosition="right">
                      </ajaxToolkit:CalendarExtender> 
                  &nbsp;
                     
                  </td>
                  <td style="text-align:left" class="auto-style193">
                          <asp:ImageButton ID="btnExport" runat="server" Height="29px" ImageUrl="~/icon/btnExport.png" Width="81px" CssClass="auto-style186" />
                    <asp:ImageButton ID="btnSend" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" CssClass="auto-style186" Visible="false" />
                       </td>
              </tr>
                                  
         
              <tr>
                  <td class="auto-style136">&nbsp;</td>
                  <td class="auto-style140">&nbsp;</td>
                  <td class="auto-style173">&nbsp;</td>
                  <td class="auto-style184">&nbsp;</td>
                  <td class="auto-style185" align = "right">
                     
                  
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
    <div>

         
        </div>
    </div>
</asp:Content>
