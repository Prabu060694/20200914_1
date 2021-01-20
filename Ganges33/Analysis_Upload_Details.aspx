<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master"  CodeBehind="Analysis_Upload_Details.aspx.vb" Inherits="Ganges33.Analysis_Upload_Details" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
<%--<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>--%>
    <link href="Styles/bootstrap.min.css"  rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/bootstrap-multiselect.css" rel="stylesheet" type="text/css"/>
    <script src="Scripts/bootstrap-multiselect.js" type="text/javascript"></script>
<%--<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>--%>

        <style type="text/css">
        .auto-style6 {
            z-index: 1;
            left: 38px;
            top: 122px;
            position: absolute;
            height: 400px;
            width: 1255px;
            background-size: contain;
            }
            .auto-style7 {
                height: 60%;
                background: rgba(255,255,255,0.8);
                /*opacity: 0.5;*/
            }
            .auto-style135 {
                width: 100%;
                height: 200px;
            }
            .auto-style137 {
                width: 101px;
                height: 70px;
            }
            .auto-style138 {
                height: 70px;
            }
            .auto-style139 {
                height: 70px;
                width: 107px;
            }
            .auto-style141 {
                height: 70px;
                width: 263px;
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
            .auto-style174 {
                height: 70px;
                width: 470px;
            }
            .auto-style175 {
                width: 470px;
                height: 36px;
            }
            .auto-style179 {
                height: 70px;
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
            .auto-style194 {
                width: 370px;
                height: 36px;
                float: right;
                font-family: "Meiryo UI";
                margin-left: 0px;
            }
            .Row
            {
                display: table-row;
            }
            .Cell
            {
                display: table-cell;
 
            }
                  body  
        {  
            font-family: Times New Roman;  
            font-size: 13pt;  
        }  
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server"  >  </asp:ScriptManager>
    <div class="auto-style6">
      <div class="auto-style7">
        <br />
          
                <div>
          <table class="auto-style135">
              <tr>
                  <td class="auto-style137"></td>
                  <td class="auto-style139">
                      <asp:ImageButton ID="btnAnalysis" runat="server" Height="70px" ImageUrl="~/icon/analysis.png" Width="108px" />
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="lblSummary" runat="server" CssClass="auto-style187" Text="Upload Details"></asp:Label>
                  </td>
                  <td class="auto-style179"></td>
                  <td class="auto-style174"></td>
                  <td class="auto-style138"></td>
              </tr>
              <tr>
                  <td class="auto-style145"></td>
                  <td colspan = "2">
                      <asp:Label ID="Label1" runat="server" Text="Current Location : " CssClass="auto-style141"></asp:Label>
                      <asp:Label ID="lblLoc" runat="server" CssClass="auto-style186"></asp:Label>
                  </td>
                  <td class="auto-style180"></td>
                  <td class="auto-style175"></td>
                  <td class="auto-style149"></td>
              </tr>
              <tr>
                  <td class="auto-style145"></td>
                  <td colspan = "2">
                      <asp:Label ID="Label2" runat="server" Text="Current Username : " CssClass="auto-style141"></asp:Label>
                      <asp:Label ID="lblName" runat="server" CssClass="auto-style186"></asp:Label>
                  </td>
                  <td class="auto-style180"></td>
                  <td class="auto-style175">
                       <asp:ImageButton ID="btnExport" runat="server" Height="29px" ImageUrl="~/icon/btnExport.png" Width="81px" style="float: right;" CssClass="auto-style186" Visible="false"/>
                  </td>
                  <td class="auto-style149">
                      <asp:ImageButton ID="btnClose" runat="server" Height="29px" ImageUrl="~/icon/close.png" Width="81px" style="float: left;" OnClientClick="window.close();" CssClass="auto-style194" />
                     
                  </td>
              </tr>
              <%--<tr>
                  <td class="auto-style150"></td>
                  <td colspan="5">
                
                  </td>
                  <td  style="white-space:nowrap">
                      
                   </td>
                   <td style="white-space:nowrap">
                       
                   </td>
                  <td class="auto-style181" style="white-space:nowrap">
                      
                   </td>
                 
                  <td class="auto-style181" style="white-space:nowrap">
                      
                  </td>
                  <td class="auto-style154">
                         
                  </td>
              </tr>--%>
          </table>
      
       
     
          
            <div style="width:1000px">
                 <table>
                          <tr>
                              <td style="width:10%"></td>
                              <td style="width:15%" >
                                  <asp:Label ID="lblLocationValue" runat="server" CssClass="auto-style186"  ></asp:Label>
                              </td>
                              <td style="width:25%;">
                                  <asp:Label ID="lblDateFrom" runat="server" CssClass="auto-style186" ></asp:Label>
                              </td>
                              <td style="width:20%">
                                  <asp:Label ID="lblDateTo" runat="server" CssClass="auto-style186" ></asp:Label>
                              </td>
                              <td style="width:20%">
                                  <asp:Label ID="lblActive" runat="server" CssClass="auto-style186" ></asp:Label>
                                  <asp:CheckBox  ID="chkIndividual" runat="server" Text="Current User" Enabled="false" Visible="false"/>
                              </td>
                          </tr>
                      </table>
            </div>

       <br />
       
         <div class="Row" style="width:1225px">
        <div class="Cell" style="width:300px">
            <b>
     <asp:Label ID="lblReccount" runat="server" Text="" Visible="false"></asp:Label>
          </b>
        </div>
        <div class="Cell" style="width:600px">
            <b>
             <table class="auto-style136">
                 <tr>
                     <td class="auto-style136" colspan = "6" align="left">
                         <asp:Label ID="lblTitle" runat="server"  Width="700px"   ></asp:Label>
                     </td>
                 </tr>
             </table>
             
         <asp:Label ID ="lbltotal" runat="server"> </asp:Label>

             </b>
          <br />
          <b><asp:Label ID ="lblPagesize" runat="server" Visible="false">Page Size:</asp:Label></b><asp:TextBox ID="txtPageSize" runat="server" MaxLength="4"  Style="Width: 40px"  AutoPostBack="true" OnTextChanged="txtPageSize_TextChanged"></asp:TextBox>
          <asp:Label ID ="lblErrorMessage" style="color: red;" runat="server">Please enter a valid Page Size Range betwwwn 1 to 9999</asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvExportReport" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            AllowSorting="true" OnSorting="OnSorting" OnPageIndexChanging="OnPageIndexChanging"
            PageSize="10"  RowStyle-Wrap="false"  ShowHeaderWhenEmpty="true" HeaderStyle-Wrap="false">
       
                 
            <EmptyDataTemplate >No Record Available</EmptyDataTemplate> 
            <EmptyDataRowStyle HorizontalAlign="Center" />
                 <AlternatingRowStyle BackColor="#e2e2e2" ForeColor="Black"  />
            <HeaderStyle BackColor="#b9b7b8" Font-Bold="True" ForeColor="Black" />
            <RowStyle ForeColor="Black" BackColor="White" />
        </asp:GridView>
           
        </div>
        <div class="Cell" style="width:300px">
            
        </div>
    </div>
                    <br />
        <asp:HiddenField  runat="server" ID ="hdnStoreValue" />
        <asp:HiddenField  runat="server" ID ="hdnStoreName" />
        <asp:HiddenField  runat="server" ID ="hdnColumnName" />
        <asp:HiddenField  runat="server" ID ="hdnDateFrom" />
        <asp:HiddenField  runat="server" ID ="hdnDateTo" />
        <asp:HiddenField  runat="server" ID ="hdnActiveFlag" />
        <asp:HiddenField  runat="server" ID ="hdnCurrentUser" />
        <asp:HiddenField  runat="server" ID ="hdnUserLevel" />
        <asp:HiddenField  runat="server" ID ="hdnAdminFlag" />
        <asp:HiddenField  runat="server" ID ="hdnUserId" />
        <asp:HiddenField  runat="server" ID ="hdnSeqNo" />
        <asp:HiddenField  runat="server" ID ="hdnStoreID" />
        <asp:HiddenField  runat="server" ID ="hdnStoreIDValue" />
   </div>
      
    <div id="dialog" title="message" style="display:none;">
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>
    </div>
  </div>
</asp:Content>