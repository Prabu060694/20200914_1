<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AnalysisSub.Master" CodeBehind="Analysis_Parts_Compare.aspx.vb" Inherits="Ganges33.Analysis_Parts_Compare" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
     <style type="text/css">
        .auto-style6 {
            z-index: 1;
            left: 38px;
            top: 362px;
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
		
	</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"  >  </asp:ScriptManager>
   
      <div >
        <br />
           <br /> <br /> <br /> <br /> <br />
                <div>

          <table class="auto-style135">
             <tr>
                  <td class="auto-style137"></td>
                  <td class="auto-style139">
                      <asp:ImageButton ID="btnAnalysis" runat="server" Height="108px" ImageUrl="~/icon/analysis.png" Width="108px" />
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="Label3" runat="server" CssClass="auto-style187" Text="Parts Compare"></asp:Label>
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
                  <td colspan = "3">
                      <asp:Label ID="Label4" runat="server" CssClass="auto-style186" Text="Target Store"></asp:Label>
                      <span class="auto-style186">&nbsp;&nbsp; </span>
                      <asp:DropDownList ID="DropListLocation" runat="server" CssClass="auto-style186" Height="33px" Width="153px" >
                   
                          </asp:DropDownList>
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
                              <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                              <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                             <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                              <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                               <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                             <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                         
                      </asp:DropDownList>
                      </td>

                    <td>
                     
                    <asp:ImageButton ID="btnSend" runat="server" Height="29px" ImageUrl="~/icon/send.png" Width="81px" CssClass="auto-style186"  />
                     
                          <asp:ImageButton ID="btnExport" runat="server" Height="29px" ImageUrl="~/icon/btnExport.png" Width="81px" CssClass="auto-style186" />

                  </td>
                 <td></td>
                  
              </tr>
           
           
              <tr><td colspan="6" style="padding-left:100px;vertical-align:text-top;">
                  <br />
                  <table class="table1"  id="tblPartsCompare" runat="server" visible="false" style="width:80%"  border="1" >
		<tr>
		<td colspan="6">
			<table  ><tr>
			<td  style="background-color: #E3E3E3" width="200px;">Result</td>
			<td  width="200px;"><asp:Label ID="lblResultMont" runat="server"></asp:Label></td>
			<td  style="background-color: #E3E3E3" width="200px;">Last Updated User:</td>
			<td  width="200px;"><asp:Label ID="lblLastUpdatedUser" runat="server"></asp:Label></td>
				<td  style="background-color: #E3E3E3" width="200px;">Last update date</td>
			<td  width="200px;"><asp:Label ID="lblUpdatedDate" runat="server"></asp:Label></td>
				</tr>
			</table>
			</td>
        </tr>		
		<tr>
			<td style="background-color: #E3E3E3" width="400px;">Total count record</td>
			<td width="200px;"></td>
			<td width="100px;"></td>
			<td style="text-align:right"><asp:Label ID="lblTotalRecords" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>		
		<tr>
			<td  style="background-color: #E3E3E3 ">Total count parts</td>
			<td></td>
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblTotalCountParts" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			


                      	<tr>
			<td style="background-color: #E3E3E3 ">Stockoverview number(GSPN)</td>
			<td></td>
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblStockOverView" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			
                      	<tr>
			<td  style="background-color: #E3E3E3 ">Match parts record</td>
			<td></td>
			<td> </td>
			<td  style="text-align:right"><asp:Label ID="lblMatchPartsRecord" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			
                      	<tr>
			<td style="background-color: #E3E3E3 ">Unmatch parts record</td>
			<td></td>
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblUnmatchPartsRecord" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			
            
            <tr>
			<td style="background-color: #E3E3E3;text-align:right"> Different record +</td>
			<td> </td>
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblPositiveRecord" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>		

          		<tr>
			<td style="background-color: #E3E3E3;text-align:right" colspan="2">Different number + </td>
			
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblPositiveRecordSum" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			

          		<tr>
			<td style="background-color: #E3E3E3;text-align:right">Different record- </td>
			<td> </td>
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblNegativeRecord" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			

          		<tr>
			<td style="background-color: #E3E3E3;text-align:right" colspan="2">Different number - </td>
			
			<td></td>
			<td  style="text-align:right"><asp:Label ID="lblNegativeRecordSum" runat="server"></asp:Label></td>
			<td colspan="2"></td>			
		 	</tr>			

	</table>	






               





             
    

                  </td></tr>

            
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

         
        
</asp:Content>
