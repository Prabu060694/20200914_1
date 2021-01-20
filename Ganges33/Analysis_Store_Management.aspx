<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/AnalysisSub.Master"  CodeBehind="Analysis_Store_Management.aspx.vb" Inherits="Ganges33.Analysis_Store_Management" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <style type="text/css">
        * {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 34%;
  /*padding: 10px;*/
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
        .auto-style135 {
            width: 100%;
            height: 81px;
        }

        .auto-style139 {
            width: 107px;
        }

        .auto-style141 {
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

        .auto-style175 {
            width: 470px;
            height: 36px;
        }

        .auto-style180 {
            width: 102px;
            height: 36px;
        }

        .auto-style186 {
            font-family: "Meiryo UI";
        }

        .auto-style187 {
            font-family: "Meiryo UI";
            font-size: xx-large;
        }
        .selectssc
        {
            margin-left :-28px
        }
        .paymentamount
        {
            margin-left :-28px
        }
        .targetdate
        {
            margin-left :-28px
        }
        .txtssc
        {
            margin-left :41px
        }
        .txtpaymentamount{
             margin-left :-11px
        }
        .txttargetdate
        {
            margin-left :29px
        }
        .sendbutton{
             margin-left :45px
        }
    </style>

    <style>
        .table1 {
            font-family: arial, sans-serif;
            border-collapse: collapse;
        }

        .th {
            background-color: #DEB887;
            border: 2px solid #dddddd;
            text-align: left;
            padding: 8px;
            font-size: 20px;
            width: 100px;
        }

        .auto-style313 {
            width: 101px;
            height: 13px;
        }

        .auto-style314 {
            height: 13px;
        }

        .auto-style315 {
            width: 101px;
            height: 2px;
        }

        .auto-style316 {
            height: 2px;
        }

        .auto-style319 {
            width: 102px;
            height: 23px;
        }

        .auto-style320 {
            width: 470px;
            height: 23px;
        }

        .auto-style321 {
            width: 101px;
            height: 23px;
        }

        .auto-style322 {
            height: 23px;
        }

        .auto-style323 {
            height: 4px;
        }

        .auto-style325 {
            width: 102px;
        }

        .auto-style326 {
            width: 470px;
        }

        .auto-style327 {
            width: 101px;
        }

        .auto-style330 {
            font-family: "Meiryo UI";
            margin-left: 11px;
        }

        .auto-style335 {
            width: 101px;
            height: 42px;
        }

        .auto-style336 {
            height: 42px;
            width: 366px;
        }

        .auto-style337 {
            height: 42px;
        }

        .auto-style340 {
            height: 42px;
            width: 395px;
        }

        .auto-style341 {
            width: 395px;
        }

        .auto-style345 {
            height: 42px;
            width: 28px;
        }

        .auto-style346 {
            width: 28px;
        }

        .auto-style347 {
            width: 366px;
        }

        .auto-style354 {
            width: 101px;
            height: 59px;
        }

        .auto-style355 {
            height: 59px;
            width: 366px;
        }

        .auto-style356 {
            height: 59px;
            width: 28px;
        }

        .auto-style362 {
            height: 26px;
        }

        .auto-style363 {
            height: 26px;
            width: 366px;
        }

        .auto-style364 {
            height: 26px;
            width: 28px;
        }

        .auto-style365 {
            height: 26px;
            width: 395px;
        }

        .td_Credit {
            border: 1px solid;
        }

        .td_Credit1 {
            border: 1px solid;
            width: 400px;
        }

        .auto-style367 {
            width: 101px;
        }

        .auto-style369 {
            width: 447px;
        }

        .auto-style370 {
            height: 20px;
            width: 447px;
        }

        .auto-style375 {
            width: 186px;
        }

        .auto-style377 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 585px;
        }

        .auto-style378 {
            height: 26px;
            width: 101px;
        }

        .auto-style380 {
            height: 2px;
            width: 115px;
        }

        .auto-style381 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 404px;
        }

        .auto-style382 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 460px;
        }

        .auto-style384 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 585px;
            height: 19px;
        }

        .auto-style385 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 460px;
            height: 19px;
        }

        .auto-style386 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 404px;
            height: 19px;
        }

        .auto-style387 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 400px;
            height: 19px;
        }

        .auto-style388 {
            height: 19px;
            width: 447px;
        }

        .auto-style389 {
            height: 20px;
            width: 585px;
        }

        .auto-style392 {
            height: 20px;
            width: 404px;
        }

        .auto-style393 {
            height: 2px;
            width: 238px;
        }

        .auto-style395 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 373px;
        }

        .auto-style396 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 373px;
            height: 19px;
        }

        .auto-style397 {
            height: 20px;
            width: 373px;
        }

        .auto-style398 {
            height: 2px;
            width: 414px;
        }

        .auto-style399 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 414px;
        }

        .auto-style400 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 414px;
            height: 19px;
        }

        .auto-style401 {
            height: 20px;
            width: 414px;
        }

        .auto-style407 {
            width: 2067px;
            height: 13px;
        }

        .auto-style408 {
            width: 542px;
            height: 13px;
        }

        .auto-style411 {
            width: 586px;
            height: 13px;
        }

        .auto-style415 {
            height: 15px;
            width: 132px;
        }

        .auto-style416 {
            width: 132px;
        }

        .auto-style379 {
            font-family: "Meiryo UI";
            margin-right: 0px;
        }

        .auto-style417 {
            font-family: "Meiryo UI";
            margin-left: 1px;
        }

        .auto-style418 {
            height: 201px;
            margin-top: 12px;
            margin-bottom: 5px;
        }

        .auto-style419 {
            height: 15px;
            width: 238px;
        }

        .auto-style420 {
            height: 15px;
            width: 414px;
        }

        .auto-style421 {
            height: 15px;
        }

        .auto-style422 {
            width: 325px;
        }

        .auto-style423 {
            height: 172px;
        }

        .auto-style433 {
            height: 8px;
            width: 115px;
        }

        .auto-style434 {
            height: 8px;
            width: 238px;
        }

        .auto-style435 {
            height: 8px;
            width: 414px;
        }

        .auto-style438 {
            width: 325px;
            height: 36px;
        }

        .auto-style439 {
            width: 186px;
            height: 36px;
        }

        .auto-style440 {
            height: 36px;
            width: 115px;
        }

        .auto-style441 {
            height: 36px;
            width: 132px;
        }

        .auto-style442 {
            height: 36px;
            width: 238px;
        }

        .auto-style445 {
            height: 36px;
            width: 414px;
        }

        .auto-style446 {
            font-family: "Meiryo UI";
            margin-left: 41px;
        }

        .auto-style447 {
            width: 132px;
            height: 8px;
        }

        .auto-style448 {
            width: 325px;
            height: 8px;
        }

        .auto-style449 {
            width: 186px;
            height: 8px;
        }

        .auto-style450 {
            height: 8px;
        }

        .auto-style456 {
            width: 2067px;
            height: 25px;
        }

        .auto-style458 {
            width: 542px;
            height: 25px;
        }

        .auto-style459 {
            height: 25px;
        }

        .auto-style462 {
            height: 12px;
            width: 447px;
        }

        .auto-style464 {
            width: 542px;
            height: 12px;
        }

        .auto-style465 {
            height: 12px;
        }

        .auto-style477 {
            height: 12px;
            width: 2976px;
        }

        .auto-style478 {
            width: 2976px;
            height: 25px;
        }

        .auto-style481 {
            width: 2976px;
            height: 13px;
        }

        .auto-style483 {
            width: 2067px;
            height: 10px;
        }

        .auto-style484 {
            height: 10px;
            width: 2976px;
        }

        .auto-style485 {
            height: 12px;
            width: 2067px;
        }
        .auto-style486 {
            height: 196px;
            width: 1227px;
        }
        .auto-style487 {
            height: 15px;
            width: 652px;
        }
        .auto-style488 {
            margin-left: 32px;
        }
        .auto-style489 {
            width: 82px;
        }
        .auto-style490 {
            width: 31px;
        }
        .auto-style491
        {
            margin-top: -81px;
        }
        .test123
        {
            margin-left: -29px;
        }
        .auto-style492 {
            height: 20px;
            width: 460px;
        }
       
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div>

            <table class="auto-style135">
                <tr>
                    <td class="auto-style327"></td>
                    <td class="auto-style139">
                        <asp:ImageButton ID="btnAnalysis" runat="server" Height="108px" ImageUrl="~/icon/analysis.png" Width="108px" />
                    </td>
                    <td class="auto-style141">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style187" Text="Store Management"></asp:Label>
                        <asp:Label ID="Label43" runat="server" CssClass="auto-style187" Text="Credit Info Management"></asp:Label>
                        <asp:Label ID="Label40" runat="server" CssClass="auto-style187" Text="General Info "></asp:Label>
                        <asp:Label ID="Label104" runat="server" CssClass="auto-style187" Text="Count DRS"></asp:Label>
                         <asp:Label ID="Label91" runat="server" CssClass="auto-style187" Text="Payment Value"></asp:Label>
                         <asp:Label ID="Label200" runat="server" CssClass="auto-style187" Text="Collection"></asp:Label>
                    </td>
                    <td class="auto-style325"></td>
                    <td class="auto-style326"></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style145"></td>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Current Location : " CssClass="auto-style186"></asp:Label>
                        <asp:Label ID="lblLoc" runat="server" CssClass="auto-style186"></asp:Label>

                    </td>
                    <td class="auto-style180"></td>
                    <td class="auto-style175">
                        <asp:Label ID="Label2" runat="server" Text="Current Username : " CssClass="auto-style186"></asp:Label>
                        <asp:Label ID="lblName" runat="server" CssClass="auto-style186"></asp:Label></td>
                    <td class="auto-style149"></td>
                </tr>

                <tr>
                    <td class="auto-style145"></td>
                    <td colspan="2">
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style186" Text="Process Model"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:DropDownList ID="drpManagementFunc" runat="server" AutoPostBack="true" CssClass="auto-style186" Height="33px" Width="153px">
                           <asp:ListItem Text="Select" Value="00"></asp:ListItem>
                           <asp:ListItem Text="Store Manamgenet" Value="01"></asp:ListItem>
                           <asp:ListItem Text=" Credit Info Management" Value="02"></asp:ListItem>
                           <asp:ListItem Text=" General Info " Value="03"></asp:ListItem>
                           <asp:ListItem Text="Count DRS" Value="04"></asp:ListItem>
                           <asp:ListItem Text="Payment Value" Value="05"></asp:ListItem>
                            <asp:ListItem Text="Collection" Value="06"></asp:ListItem>
                       </asp:DropDownList>
                        &nbsp;&nbsp;
                    </td>
                    <td class="auto-style180"></td>
                    <td class="auto-style175"></td>
                    <td class="auto-style149"></td>
                </tr>

            </table>
            <br />
            <table id="Getdta" runat="server" autopostback="true" >
                <tr>
                    <td class="auto-style367"></td>
                    <td >
                        <asp:GridView ID="CreitInfo" runat="server"  AutoGenerateColumns="false"   >
            <Columns>
               <asp:BoundField  DataField="BRANCH_NO" HeaderText="Service center" />
                <asp:BoundField DataField="CREDIT_LIMIT" HeaderText="Credit Limit" />
                <asp:BoundField DataField="PER_DAY" HeaderText=" Consumption Per Day"/>   
            </Columns>            
        </asp:GridView>
                    </td>
                </tr>
            </table>
            <table runat="server" id="Stored">
                <tr>
                    <td class="auto-style313"></td>
                    <td colspan="3" class="auto-style314">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style186" Text="Download Type"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:DropDownList ID="DrpDownloadExcel" runat="server" CssClass="auto-style186" Height="33px" Width="153px">
                            <asp:ListItem Text="CSV" Value="01"></asp:ListItem>
                            <asp:ListItem Text="Excel" Value="02"></asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;        
                    </td>
                    <td class="auto-style314"></td>
                    <td class="auto-style314"></td>
                </tr>
                <tr>
                    <td class="auto-style315"></td>
                    <td colspan="3" class="auto-style316">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style186" Text="Target Store"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:DropDownList ID="DropListLocation" runat="server" CssClass="auto-style186" Height="33px" Width="155px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;     
                    </td>
                    <td class="auto-style316"></td>
                    <td class="auto-style316"></td>
                </tr>
                <tr>
                    <td class="auto-style321"></td>
                    <td colspan="2" class="auto-style322">
                        <asp:Label ID="Label6" runat="server" Text="Select Type" CssClass="auto-style186"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;   
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      <asp:DropDownList ID="DrpType" runat="server" CssClass="auto-style330" Height="24px" Width="155px" AutoPostBack="true">
                          <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                          <asp:ListItem Text="4week" Value="01"></asp:ListItem>
                          <asp:ListItem Text="Monthly" Value="02"></asp:ListItem>
                          <asp:ListItem Text="Specified period" Value="03"></asp:ListItem>
                      </asp:DropDownList>
                        &nbsp;<asp:Label ID="Label8" runat="server" Text="GM" CssClass="auto-style186"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtGM" runat="server" Width="68px" Text="0.88"></asp:TextBox>
                    </td>
                    <td class="auto-style319"></td>
                    <td class="auto-style320"></td>
                    <td class="auto-style322"></td>
                </tr>

                <tr>
                    <td class="auto-style323"></td>
                    <td class="auto-style323" colspan="4">
                        <asp:Label ID="lblMonth" runat="server" Text="Month" CssClass="auto-style186" Visible="false"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="DropDownMonth" runat="server" CssClass="auto-style186" Height="24px" Width="155px" Visible="false">
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
                        &nbsp;&nbsp; 
                      <asp:DropDownList ID="DropDownYear" runat="server" CssClass="auto-style186" Height="24px" Width="60px" Visible="false">
                          <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                          <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                          <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                          <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                          <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                          <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                          <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                      </asp:DropDownList>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      
                      <asp:Label ID="lblDateFrom" runat="server" CssClass="auto-style186" Text=" Date From (yyyy/mm/dd)" Visible="false"></asp:Label>
                        <asp:TextBox ID="TextDateFrom" runat="server" CssClass="auto-style186" Visible="false" Width="100px"></asp:TextBox>&nbsp;
                      <ajaxToolkit:CalendarExtender ID="TextDateFrom_CalendarExtender" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="TextDateFrom" PopupPosition="Left" Format="yyyy/MM/dd"></ajaxToolkit:CalendarExtender>
                        <asp:Label ID="lblDateTo" runat="server" CssClass="auto-style186" Text="To" Visible="false"></asp:Label>
                        <asp:TextBox ID="TextDateTo" runat="server" CssClass="auto-style186" Visible="false" Width="100px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextDateTo_CalendarExtender" runat="server" BehaviorID="TextDateTo_CalendarExtender" TargetControlID="TextDateTo" PopupPosition="right" Format="yyyy/MM/dd"></ajaxToolkit:CalendarExtender>
                        &nbsp;&nbsp;
                     
                    </td>
                    <td style="text-align: left" class="auto-style323"></td>
                </tr>
                <tr>
                    <td class="auto-style150"></td>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      &nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                      <asp:ImageButton ID="btnSend" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" CssClass="auto-style186" />
                    </td>

                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="6" style="padding-left: 100px; vertical-align: text-top;">
                        <br />

                    </td>
                </tr>
            </table>
            <p style="font-weight: bold" id="LblINFO" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; CREDIT VALUE CHANGE</p>
            <table id="Credit" runat="server" autopostback="true">

                <tr>
                    <td class="auto-style354"></td>
                    <td class="auto-style355">
                        <asp:Label ID="Label9" runat="server" Text="Select Service Center"></asp:Label>
                        &nbsp;
                         <asp:DropDownList ID="DropdownList1" AutoPostBack="true" runat="server" CssClass="auto-style186" Height="25px" Width="173px">
                         </asp:DropDownList>
                    </td>
                    <td class="auto-style356"></td>
                </tr>
                <tr>
                    <td class="auto-style362"></td>
                    <td class="auto-style363">
                        <asp:Label ID="Label10" runat="server" Text="CREDIT LIMIT" Style="font-weight: bold"></asp:Label>
                    </td>
                    <td class="auto-style364"></td>
                    <td class="auto-style365">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="CONSUMPTION PER DAY" Style="font-weight: bold"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Current Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label15" runat="server" Text="Current Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox6" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style335"></td>
                    <td class="auto-style336">&nbsp;<asp:Label ID="Label12" runat="server" Text="New Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style345">&nbsp;</td>
                    <td class="auto-style340">&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label16" runat="server" Text="New Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style337">&nbsp;</td>

                    <td class="auto-style337"></td>

                    <td class="auto-style337"></td>
                </tr>
                <tr>
                    <td class="auto-style327"></td>
                    <td class="auto-style347">&nbsp;</td>
                    <td class="auto-style346">&nbsp;</td>
                    <td class="auto-style341">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                      
                      <asp:ImageButton ID="ImageButton2" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px"  OnClick="ImageButton2_Click" CssClass="auto-style186"   />           
                    </td>
                    <td class="auto-style312">&nbsp;</td>
                </tr>

            </table>

            <table id="Table1" runat="server">
                <tr>
                    <td class="auto-style367"></td>
                    <td class="td_Credit">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"  >
            <Columns>
               <asp:BoundField  DataField="ship_Name" HeaderText="Service center" />
                <asp:BoundField DataField="GSTIN" HeaderText="GSTIN" />                 
            </Columns>            
           </asp:GridView>
                    </td>

                </tr>

            </table>





            <p style="font-weight: bold" id="P1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; GSTIN VALUE CHANGE</p>
            <table id="Table2" runat="server">

                <tr>
                    <td class="auto-style354"></td>
                    <td class="auto-style355">
                        <asp:Label ID="Label41" runat="server" Text="Select Service Center"></asp:Label>
                        &nbsp;
                         <asp:DropDownList ID="DropDownList2" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="auto-style186" Height="25px" Width="173px">
                         </asp:DropDownList>
                    </td>
                    <td class="auto-style356"></td>
                </tr>

                <tr>
                    <td class="auto-style378"></td>
                    <td class="auto-style363">
                        <asp:Label ID="Label42" runat="server" Text="GSTIN " Style="font-weight: bold"></asp:Label>
                    </td>
                    <td class="auto-style364"></td>
                    <td class="auto-style365">&nbsp;&nbsp;&nbsp;&nbsp; </td>

                </tr>
                <tr>
                    <td class="auto-style327"></td>
                    <td>
                        <asp:Label ID="Label63" runat="server" Text="Current Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style335"></td>
                    <td class="auto-style336">&nbsp;<asp:Label ID="Label65" runat="server" Text="New Value"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style327"></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:ImageButton ID="ImageButton3" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" OnClick="ImageButton3_Click" CssClass="auto-style186" />
                    </td>
                    <td class="auto-style340"></td>
                    <td class="auto-style337">&nbsp;</td>

                    <td class="auto-style337"></td>

                    <td class="auto-style337"></td>
                </tr>

            </table>
            <p style="font-weight: bold" id="P2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; COUNT DRS</p>
            <div>
                <table runat="server" id="Table3" class="auto-style418">
                    <tr>
                        <td class="auto-style415"></td>
                        <td colspan="3" class="auto-style421">
                            <asp:Label ID="Label105" runat="server" CssClass="auto-style186" Text="Target Store"></asp:Label>
                            <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                            <asp:DropDownList ID="DropdownList3" runat="server" CssClass="auto-style446" Height="33px" Width="155px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;     
                        </td>
                        <td class="auto-style419"></td>
                        <td class="auto-style420"></td>
                    </tr>
                    <tr>
                        <td class="auto-style415">&nbsp;</td>
                        <td colspan="3" class="auto-style421">&nbsp;</td>
                        <td class="auto-style419">&nbsp;</td>
                        <td class="auto-style420">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style441"></td>
                        <td class="auto-style438">From Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="TextFromDate" runat="server" CssClass="auto-style379" Width="137px"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="TextFromDate" PopupPosition="Left"></ajaxToolkit:CalendarExtender>
                        </td>
                        <td class="auto-style439">&nbsp;                    
                                 to&nbsp;&nbsp;
                      <asp:TextBox ID="TextToDate" runat="server" CssClass="auto-style417" Width="112px"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" BehaviorID="TextDateTo_CalendarExtender" TargetControlID="TextToDate" PopupPosition="Right"></ajaxToolkit:CalendarExtender>
                        </td>
                        <td class="auto-style440">Previous day:</td>
                        <td class="auto-style442">
                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" />                            
                        </td>
                        <td class="auto-style445"></td>
                        <td class="auto-style149"></td>
                    </tr>
                    <%--<tr>
                            <td class="auto-style369"></td>
                            <td class="auto-style376">
                                 &nbsp;</td><td class="auto-style375">
                                &nbsp;</td>


                        </tr>--%>


                    <tr>
                        <td class="auto-style447"></td>
                        <td class="auto-style448">
                            <asp:Label ID="Label106" runat="server" Text="Type"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style186" Height="33px" Width="153px">

                                <asp:ListItem Text="Select" Value="00"></asp:ListItem>
                                <asp:ListItem Text="CSV" Value="01"></asp:ListItem>
                                <asp:ListItem Text="Output" Value="02"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                        <td class="auto-style449"></td>
                        <td class="auto-style433"></td>
                        <td class="auto-style434"></td>
                        <td class="auto-style435"></td>
                        <td class="auto-style450"></td>
                    </tr>
                    <tr>
                        <td class="auto-style416">&nbsp;</td>
                        <td class="auto-style422">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:ImageButton ID="ImageButton4" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" OnClick="ImageButton4_Click" CssClass="auto-style186" />
                            &nbsp;</td>
                        <td class="auto-style375">&nbsp;</td>
                        <td class="auto-style380">&nbsp;</td>
                        <td class="auto-style393">&nbsp;</td>
                        <td class="auto-style398">&nbsp;</td>
                        <td class="auto-style316">&nbsp;</td>
                    </tr>
                </table>

                <table runat="server" id="Table5">

                    <tr>

                        <td class="auto-style369"></td>
                        <td class="auto-style377" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC1">
                            <asp:Label ID="Label44" runat="server" Text="SSC1"></asp:Label>
                        </td>
                        <td class="auto-style382" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC2">
                            <asp:Label ID="Label64" runat="server" Text="SSC2"></asp:Label>
                        </td>
                        <td class="auto-style381" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC3">
                            <asp:Label ID="Label66" runat="server" Text="SSC3"></asp:Label>
                        </td>
                        <td class="auto-style395" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC4">
                            <asp:Label ID="Label67" runat="server" Text="SSC4"></asp:Label>
                        </td>
                        <td class="auto-style399" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC5">
                            <asp:Label ID="Label68" runat="server" Text="SSC5"></asp:Label>
                        </td>
                        <td class="td_Credit1" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC6">
                            <asp:Label ID="Label69" runat="server" Text="SSC6"></asp:Label>
                        </td>
                        <td class="td_Credit1" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC7">
                            <asp:Label ID="Label70" runat="server" Text="SSC7"></asp:Label>
                        </td>
                        <td class="td_Credit1" style="background-color: yellow; text-align: center;" runat="server" id="td_SSC8">
                            <asp:Label ID="Label71" runat="server" Text="SSC8"></asp:Label>
                        </td>
                        <td class="td_Credit1" style="background-color: yellow; text-align: center;" runat="server" id="td1_SSC9">
                            <asp:Label ID="Label92" runat="server" Text="SSC9"></asp:Label>
                        </td>
                        <td class="td_Credit1" style="background-color: yellow; text-align: center;" runat="server" id="td1_SSC10">
                            <asp:Label ID="Label20" runat="server" Text="SSC10"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style388"></td>
                        <td class="auto-style384" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label72" runat="server" Text="IW"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          <asp:Label ID="Label80" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style385" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label73" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label81" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style386" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label74" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label82" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style396" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label75" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label83" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style400" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label76" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label84" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style387" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label77" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label85" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style387" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label78" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label86" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style387" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label79" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label87" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style387" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label93" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label94" runat="server" Text="OW"></asp:Label>
                        </td>
                        <td class="auto-style387" style="background-color: lightgray; text-align: center">
                            <asp:Label ID="Label250" runat="server" Text="IW"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label251" runat="server" Text="OW"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style369"></td>
                        <td class="auto-style377" style="text-align: center">
                            <asp:Label ID="lblSSC1IW" runat="server" Text=""></asp:Label>
                            |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="lblSSC1OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style382" style="text-align: center">
                            <asp:Label ID="lblSSC2IW" runat="server" Text=""></asp:Label>
                            |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="lblSSC2OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style381" style="text-align: center">
                            <asp:Label ID="lblSSC3IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC3OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style395" style="text-align: center">
                            <asp:Label ID="lblSSC4IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC4OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style399" style="text-align: center">
                            <asp:Label ID="lblSSC5IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC5OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="td_Credit1" style="text-align: center">
                            <asp:Label ID="lblSSC6IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC6OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="td_Credit1" style="text-align: center">
                            <asp:Label ID="lblSSC7IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC7OW" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="td_Credit1" style="text-align: center">
                            <asp:Label ID="lblSSC8IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC8OW" runat="server" Text=""></asp:Label>
                        </td>

                         <td class="td_Credit1" style="text-align: center">
                            <asp:Label ID="lblSSC9IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC9OW" runat="server" Text=""></asp:Label>
                        </td>
                         <td class="td_Credit1" style="text-align: center">
                            <asp:Label ID="lblSSC10IW" runat="server" Text=""></asp:Label>|
                             <asp:Label ID="lblSSC10OW" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style370">&nbsp;</td>
                        <td class="auto-style389" style="text-align: center;">
                            <asp:Label ID="lblIO1" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style492" style="text-align: center;">
                            <asp:Label ID="lblIO2" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style392" style="text-align: center;">
                            <asp:Label ID="lblIO3" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style397" style="text-align: center;">
                            <asp:Label ID="lblIO4" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style401" style="text-align: center;">
                            <asp:Label ID="lblIO5" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style370" style="text-align: center;">
                            <asp:Label ID="lblIO6" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style370" style="text-align: center;">
                            <asp:Label ID="lblIO7" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style370" style="text-align: center;">
                            <asp:Label ID="lblIO8" runat="server" Text=""></asp:Label>
                        </td>
                         <td class="auto-style370" style="text-align: center;">
                            <asp:Label ID="lblIO9" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style370" style="text-align: center;">
                            <asp:Label ID="lblI10" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table id="tblSingle" runat="server" class="auto-style423">

                    <tr>
                        <td class="auto-style484"></td>
                        <td class="auto-style483" style="background-color: yellow; text-align: center; border: groove; font-weight: 600">
                            <asp:Label runat="server" ID="lblBranchname"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style477" style="text-align: center; border: 5px; font-weight: 600;"></td>
                        <td class="auto-style485" style="border: groove;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IW&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OW</td>
                        <td class="auto-style465"></td>
                        <td class="auto-style465"></td>
                        <td class="auto-style462"></td>
                        <td class="auto-style465"></td>
                        <td class="auto-style464">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>


                        <td class="auto-style465"></td>


                    </tr>
                    <tr>
                        <td class="auto-style478">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style456" style="text-align: center; border: groove;">
                            <asp:Label ID="lblSSCSIW" runat="server" Text="" Style="text-align: center"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Label ID="lblSSCSOW" runat="server" Text=""></asp:Label>
                            &nbsp;</td>
                        <td class="auto-style459"></td>
                        <td class="auto-style458">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                     
                        </td>


                    </tr>
                    <tr>
                        <td class="auto-style481">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        </td>
                        <td class="auto-style407" style="text-align: center; border: groove;">&nbsp;&nbsp;&nbsp;TotalCounts :<asp:Label runat="server" ID="lblTotalSingle"></asp:Label>
                            &nbsp;</td>
                        <td class="auto-style314"></td>
                        <td class="auto-style408">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                        <td class="auto-style411"></td>
                    </tr>
                </table>

            </div>
        </div>

            
        <div class="row">
            <div class="column">
               <table id="Table6" runat="server" class="auto-style486">
                    <tr>
                        <td class="auto-style415"></td>
                        <td colspan="3" class="auto-style487">
                            <asp:Label ID="Label88" runat="server" CssClass="auto-style186 selectssc"  Text="Select SSC"></asp:Label>
                            <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                            <asp:DropDownList ID="DropdownList5" runat="server" CssClass="auto-style446 txtssc" Height="33px" Width="155px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;     
                        </td>
                        <td class="auto-style419"></td>
                        <td class="auto-style420"></td>
                    </tr>
                    <tr>
                        <td class="auto-style415"></td>
                        <td colspan="3" class="auto-style487">
                            <asp:Label ID="Label89" runat="server" CssClass="auto-style186 paymentamount" Text="Payment Amount"></asp:Label>
                            <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                            <asp:TextBox ID="txtPaymentAmount" class="txtpaymentamount" runat="server" ></asp:TextBox>
                            &nbsp;&nbsp;     
                        </td>
                        <td class="auto-style419"></td>
                        <td class="auto-style420"></td>
                    </tr>
                     <tr>
                        <td class="auto-style415"></td>
                        <td colspan="3" class="auto-style487">
                            <asp:Label ID="Label90" runat="server" CssClass="auto-style186 targetdate" Text="Target Date"></asp:Label>
                            <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                            <asp:TextBox ID="txtTargetDate" runat="server" CssClass="auto-style488 txttargetdate" ></asp:TextBox>
                            &nbsp;&nbsp;     
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="txtTargetDate" PopupPosition="Left"></ajaxToolkit:CalendarExtender>

                        </td>
                        <td class="auto-style419"></td>
                        <td class="auto-style420"></td>
                    </tr>
                    <tr>
                        <td class="auto-style416">&nbsp;</td>
                        <td class="auto-style422">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px"  OnClick="ImageButton1_Click" CssClass="auto-style186 sendbutton" />
                            &nbsp;</td>
                        <td class="auto-style375">&nbsp;</td>
                        <td class="auto-style316">&nbsp;</td>
                        <td class="auto-style393">&nbsp;</td>
                        <td class="auto-style398">&nbsp;</td>
                        <td class="auto-style316">&nbsp;</td>
                    </tr>
                    </table>

            </div>

            <div class="column">

             <table id="tblPaymentGrid" runat="server" class="auto-style491">
                <tr style="float: right; margin-right: 100px;">
                    <td class="auto-style489">&nbsp;</td>
                    <td class="auto-style490">&nbsp;</td>
                    <td class="auto-style505">
                        <b>
                            <asp:Label ID="lbltotal" runat="server"> </asp:Label>
                        </b>
                        <br />
                        <b>
                            <asp:Label ID="lblPagesize" runat="server">Page Size:</asp:Label></b><asp:TextBox ID="txtPageSize" runat="server" MaxLength="4" Style="width: 40px" AutoPostBack="true" OnTextChanged="txtPageSize_TextChanged"></asp:TextBox>
                        <asp:Label ID="lblErrorMessage" Style="color: red;" runat="server">Please enter a valid Page Size Range betwwwn 1 to 9999</asp:Label>
                        <asp:GridView ID="gvDisplayPaymentValue" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                            AllowSorting="true" OnSorting="OnSorting" OnPageIndexChanging="OnPageIndexChanging"
                            PageSize="10" RowStyle-Wrap="false" ShowHeaderWhenEmpty="true" HeaderStyle-Wrap="false"
                            DataKeyNames="unq_no" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" CssClass="auto-style494" Width="768px" Height="10px" style="margin-top: 0px">

                            <Columns>
                                <asp:TemplateField HeaderText="unq_no" ItemStyle-Width="150" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lblunq_no1" runat="server" Text='<%# Eval("unq_no") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtunq_no1" runat="server" Text='<%# Eval("unq_no") %>' Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Created Date" ItemStyle-Width="150" SortExpression="CREATED_DATE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblcreateddate1" runat="server" Enabled="false" Text='<%# Eval("CREATED_DATE") %>' ></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtcreateddate1" runat="server" Enabled="false" Text='<%# Eval("CREATED_DATE") %>' Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Target SSC" ItemStyle-Width="150" SortExpression="TargetSSC">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltargetssc1" runat="server"   Text='<%# Eval("TargetSSC") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <%--<asp:TextBox ID="txttargetssc1" runat="server"  Text='<%# Eval("TargetSSC") %>' Width="140"></asp:TextBox>--%>
                                       <asp:HiddenField ID="HiddenField1" runat="server" 
            Value='<%# Eval("TargetSSC") %>' />
                                        <asp:DropDownList ID="drpdowntargetssc" runat="server">  
                                        </asp:DropDownList>  
                                    </EditItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Payment Amount" ItemStyle-Width="150" SortExpression="PaymentAmount">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpaymentamount1" runat="server" Text='<%# Eval("PaymentAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtpaymentamount1" runat="server" Text='<%# Eval("PaymentAmount") %>' Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Target Date" ItemStyle-Width="150" SortExpression="Target_Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltargetdate1" runat="server" Text='<%# Eval("Target_Date") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txttargetdate1" runat="server" Text='<%# Eval("Target_Date") %>' Width="140" ClientIDMode="AutoID"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtendertxttargetdate1" runat="server" BehaviorID="txttargetdate1_CalendarExtender" TargetControlID="txttargetdate1" Format="yyyy/MM/dd"></ajaxToolkit:CalendarExtender>
                                     
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Link" ShowEditButton="true"
                                    ItemStyle-Width="150" />
                            </Columns>




                            <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
                            <EmptyDataRowStyle HorizontalAlign="Center" />
                            <AlternatingRowStyle BackColor="#e2e2e2" ForeColor="Black" />
                            <HeaderStyle BackColor="#b9b7b8" Font-Bold="True" ForeColor="Black" />
                            <RowStyle ForeColor="Black" BackColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
 </div>
        </div>

        
        <div>

            <table id="TableCollections" runat="server" class="auto-style486">
                <tr>
                    <td class="auto-style415"></td>
                    <td colspan="3" class="auto-style487">
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style186" Text="Select SSC"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                        <asp:DropDownList ID="DropdownList6" runat="server" CssClass="auto-style446" Height="33px" Width="155px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;     
                    </td>
                    <td class="auto-style419"></td>
                    <td class="auto-style420"></td>
                </tr>

                <tr>
                    <td class="auto-style415"></td>
                    <td colspan="3" class="auto-style487">
                        <asp:Label ID="Label18" runat="server" CssClass="auto-style186" Text="Target Date"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                        <asp:TextBox ID="TextBoxTargetDate" runat="server" CssClass="auto-style488"></asp:TextBox>
                        &nbsp;&nbsp;     
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="TextBoxTargetDate" PopupPosition="Left"></ajaxToolkit:CalendarExtender>

                    </td>
                    <td class="auto-style419"></td>
                    <td class="auto-style420"></td>
                </tr>
                <tr>
                    <td class="auto-style415"></td>
                    <td colspan="3" class="auto-style487">
                        <asp:Label ID="Label17" runat="server" CssClass="auto-style186" Text="Daily Deposit"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                        <asp:TextBox ID="TextBoxDeposit" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;     
                    </td>
                    <td class="auto-style419"></td>
                    <td class="auto-style420"></td>
                </tr>
                <tr>
                    <td class="auto-style415"></td>
                    <td colspan="3" class="auto-style487">
                        <asp:Label ID="Label19" runat="server" CssClass="auto-style186" Text="Credit Sales"></asp:Label>
                        <span class="auto-style186">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                        <asp:TextBox ID="TextBoxCreditSales" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;     
                    </td>
                    <td class="auto-style419"></td>
                    <td class="auto-style420"></td>
                </tr>
                <tr>
                    <td class="auto-style416">&nbsp;</td>
                    <td class="auto-style422">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:ImageButton ID="ImageButton5" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" OnClick="ImageButton5_Click" CssClass="auto-style186" />
                        &nbsp;</td>
                    <td class="auto-style375">&nbsp;</td>
                    <td class="auto-style380">&nbsp;</td>
                    <td class="auto-style393">&nbsp;</td>
                    <td class="auto-style398">&nbsp;</td>
                    <td class="auto-style316">&nbsp;</td>
                </tr>
            </table>
        </div>

        <asp:Button ID="BtnCancel" runat="server" Text="Button" Style="display: none;" />
        <asp:Button ID="BtnOK" runat="server" Text="Button" Style="display: none;" />

    </div>


    <div id="dialog" title="message" style="display: none;">
        >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>



</asp:Content>
