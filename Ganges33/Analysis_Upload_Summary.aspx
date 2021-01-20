<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AnalysisSub.Master" CodeBehind="Analysis_Upload_Summary.aspx.vb" Inherits="Ganges33.Analysis_Upload_Summary" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
	 <link href="Styles/bootstrap.min.css"  rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/bootstrap-multiselect.css" rel="stylesheet" type="text/css"/>
    <script src="Scripts/bootstrap-multiselect.js" type="text/javascript"></script>
	 <script type="text/javascript">
    $(function () {
        $('[id*=lstLocation]').multiselect({
            includeSelectAllOption: true
        });
        });
        

         
    
      window.onload = function () {
        var GridId = "<%=gvExportReport.ClientID %>";
    var ScrollHeight = 500;
        var grid = document.getElementById(GridId);
        var gridWidth = grid.offsetWidth;
        var gridHeight = grid.offsetHeight;
        var headerCellWidths = new Array();
        for (var i = 0; i < grid.getElementsByTagName("TH").length; i++) {
            headerCellWidths[i] = grid.getElementsByTagName("TH")[i].offsetWidth;
        }
        grid.parentNode.appendChild(document.createElement("div"));
        var parentDiv = grid.parentNode;
 
        var table = document.createElement("table");
        for (i = 0; i < grid.attributes.length; i++) {
            if (grid.attributes[i].specified && grid.attributes[i].name != "id") {
                table.setAttribute(grid.attributes[i].name, grid.attributes[i].value);
            }
        }
        table.style.cssText = grid.style.cssText;
        table.style.width = gridWidth + "px";
        table.appendChild(document.createElement("tbody"));
        table.getElementsByTagName("tbody")[0].appendChild(grid.getElementsByTagName("TR")[0]);
        var cells = table.getElementsByTagName("TH");
 
        var gridRow = grid.getElementsByTagName("TR")[0];
        for (var i = 0; i < cells.length; i++) {
            var width;
            if (headerCellWidths[i] > gridRow.getElementsByTagName("TD")[i].offsetWidth) {
                width = headerCellWidths[i];
            }
            else {
                width = gridRow.getElementsByTagName("TD")[i].offsetWidth;
            }
    
               cells[i].style.width = parseInt(width) + "px";
            gridRow.getElementsByTagName("TD")[i].style.width = parseInt(width) + "px";
        }
        parentDiv.removeChild(grid);
 
        var dummyHeader = document.createElement("div");
        dummyHeader.appendChild(table);
        parentDiv.appendChild(dummyHeader);
        var scrollableDiv = document.createElement("div");
        if(parseInt(gridHeight) > ScrollHeight){
             gridWidth = parseInt(gridWidth) + 17;
        }
        scrollableDiv.style.cssText = "overflow:auto;height:" + ScrollHeight + "px;width:" + gridWidth + "px";
        scrollableDiv.appendChild(grid);
        parentDiv.appendChild(scrollableDiv);
    }
</script>
     <style type="text/css">
            .auto-style135 {
                width: 100%;
                height: 300px;
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
            .auto-style141 {
                height: 50px;
                width: 363px;
            }
            .auto-style145 {
                width: 101px;
                height: 36px;
            }
            .auto-style149 {
                height: 36px;
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
            .auto-style186 {
                font-family: "Meiryo UI";
            }
            .auto-style187 {
                font-family: "Meiryo UI";
                font-size: xx-large;
            }
               .auto-style312 {
                float: left;
                align-items:flex-start;
                margin-top: 23px;
             margin-left: 5px;
         }
             .auto-style314 {
            float: left;
            margin-top: 24px;
        }
			.Row
            {
                display: table-row;
            }
            .Cell
            {
                display: table-cell;
                
                /*border: solid;
                border-width: thin;
                padding-left: 5px;
                padding-right: 5px;*/
            }

            .body  
			{  
            font-family: Times New Roman;  
            font-size: 13pt;  
			}  
        </style>

    <style>
		.table1 {
              font-family: arial, sans-serif;
              border-collapse: collapse;
        
		}
		.th{
			 background-color: #DEB887;
			 border: 2px solid #dddddd;			
             text-align: left;
             padding: 8px;
			 font-size: 20px;
			 width: 100px;
		}
		
	    .auto-style313 {
            display: table-cell;
            width: 208px;
            margin-right: 20px;
        }
        .lbl5-Active{
            display: table-cell;
            width: 208px;
            margin-right: 20px;
            width:150px;
        }
		
	    .auto-style315 {
            display: table-cell;
            width: 208px;
            margin-right: 20px;
            width: 153px;
            height: 60px;
            margin-top: 23px;
        }
		
	    .auto-style316 {
            display: table-cell;
            width: 602px;
            height: 146px;
        }
		
	</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"  >  </asp:ScriptManager>
   
      <div >
          <br />
       
                <div>
                    </br></br></br>
          <table class="auto-style135">
             <tr>
                  <td class="auto-style137"></td>
                  <td class="auto-style139">
                      <asp:ImageButton ID="btnAnalysis" runat="server" Height="108px" ImageUrl="~/icon/analysis.png" Width="108px" />
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="lblSummary" runat="server" CssClass="auto-style187" Text="Upload Summary"></asp:Label>
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
                  <td class="auto-style175">
				  
				  </td>
                  <td class="auto-style149">
				  
				  </td>
              </tr>
               </table>
                     <div class="Row" style="width:1225px">
                         <div class="Cell" style="width:100px;">
                         </div>
                         <div class="Cell" style="width:225px;">
                             <asp:Label ID="Label4" runat="server" CssClass="auto-style186" Text="Target Store"></asp:Label>
                      <span class="auto-style186">&nbsp;&nbsp; </span>
                             <br />
                      <asp:ListBox ID="lstLocation" runat="server" CssClass="auto-style186" Height="133px" Width="200px" SelectionMode="Multiple">

                      </asp:ListBox>
                         </div>
                         
                         <div class="Cell" style="width:225px;">
                               <asp:Label ID="Label7" runat="server" CssClass="auto-style186" Text="Create Stat Date"></asp:Label>  
                      
                      <asp:TextBox ID="TextDateFrom" runat="server" CssClass="auto-style186"></asp:TextBox>&nbsp;
                      <ajaxToolkit:CalendarExtender ID="TextDateFrom_CalendarExtender" runat="server" BehaviorID="TextDateFrom_CalendarExtender" TargetControlID="TextDateFrom" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                        </div>
                      <div class="Cell" style="width:225px;">
                              <asp:Label ID="Label8" runat="server" CssClass="auto-style186" Text="End Date"></asp:Label>
                      <asp:TextBox ID="TextDateTo" runat="server" CssClass="auto-style186"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="TextDateTo_CalendarExtender" runat="server" BehaviorID="TextDateTo_CalendarExtender" TargetControlID="TextDateTo" PopupPosition="right">
                      </ajaxToolkit:CalendarExtender> 
                              </div>
                         
                         <div class="auto-style315"> 
                             
                               <asp:Label ID="Label5" runat="server" CssClass="auto-style186" Text="Active"></asp:Label>
                <br />
                         <asp:DropDownList ID="drpStatus" runat="server" Height="32px" Width="70px" AutoPostBack="true"  >
                              <asp:ListItem Text="All" Value="0,1" Enabled="false" ></asp:ListItem>
                             <asp:ListItem Text="Active" Value="0" selected="True"></asp:ListItem>
                              <asp:ListItem Text="In Active" Value="1"></asp:ListItem>
                       </asp:DropDownList>

                      <asp:CheckBox  ID="chkIndividual" runat="server" Text="Current User" Visible="false"/>
                             </div>
                         
                         <div class="auto-style313">
                            
	                 <asp:ImageButton ID="btnExport" runat="server" Height="35px" ImageUrl="~/icon/btnExport.png" Width="80px" CssClass="auto-style314" Visible="false"/>&nbsp
                     <asp:ImageButton ID="btnSearch" runat="server" Height="36px" ImageUrl="~/icon/search.png" Width="80px" CssClass="auto-style312" />
                             
                         </div>
                          <div class="Cell" style="width:150px;"> 
			
                         </div>
                     </div>
                  
                    <br />
		   <div class="Row" style="width:1225px">
         <div class="Cell" style="width:100px;">
                         </div>
                <div class="Cell" style="width:200px;">
            <b>
     <asp:Label ID="lblReccount" runat="server" Text="" Visible="false"></asp:Label>
          </b>
        </div>
        <div class="auto-style316"  >

       
                    
               <asp:GridView ID="gvExportReport" runat="server" AutoGenerateColumns="false"
             RowStyle-Wrap="false"  ShowHeaderWhenEmpty="false" HeaderStyle-Wrap="false"  >
            <Columns>
               <asp:BoundField  DataField="Target_Store" HeaderText="Target Store"  ControlStyle-Width="85px" Visible="false" />
                <asp:BoundField DataField="Seq" HeaderText="Seq No"  ControlStyle-Width="52px"/>
                <asp:BoundField DataField="Report_Name" HeaderText="Report Name"  ControlStyle-Width="300px" />
                
                <asp:HyperLinkField HeaderText="No of Records" runat="server" Target="_blank" DataNavigateUrlFields="Target_Store,Seq"
                DataNavigateUrlFormatString="~/Analysis_Upload_Details.aspx?Store_ID={0}&Seq={1}" DataTextField="Cnt"/>
          
                <asp:BoundField DataField="Create_Date_From" HeaderText="Start Date Time"  ControlStyle-Width="100px"/>
                <asp:BoundField DataField="Create_Date_To" HeaderText="End Date Time"  ControlStyle-Width="100px"/>
            </Columns>
                 
            
                 <AlternatingRowStyle BackColor="#e2e2e2" ForeColor="Black"  />
            <HeaderStyle BackColor="#b9b7b8" Font-Bold="True" ForeColor="Black" />
            <RowStyle ForeColor="Black" BackColor="White" />
        </asp:GridView>
                      
          
        </div>
             
        <div class="Cell" style="width:300px">
            
        </div>
    </div>
   <br />
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
		 
        </div>
                    
  
      </div>
   
    
    <div id="dialog" title="message" style="display:none;"> >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>
   

         
        
</asp:Content>