<%@ Page Title="" Language="vb" AutoEventWireup="true" MasterPageFile="~/RpaSub.Master" CodeBehind="rpa_scheduler.aspx.vb" Inherits="Ganges33.rpa_scheduler" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    <link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <style type="text/css">
            .auto-style135 {
                width: 928%;
                height: 74px;
            }
            .auto-style137 {
                width: 101px;
                }
            .auto-style139 {
                width: 107px;
            }
            .auto-style141 {
                width: 363px;
            }
            ./*auto-style145*/ {
                width: 101px;
                height: 36px;
            }
            .auto-style174 {
                width: 470px;
            }
            .auto-style179 {
                width: 102px;
            }
            .auto-style187 {
                font-family: "Meiryo UI";
                font-size: xx-large;
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
             



          <table class="auto-style135">
              <tr>
                  <td class="auto-style137"></td>
                  <td class="auto-style139">
                      <asp:ImageButton ID="btnAnalysis" runat="server" Height="50px" ImageUrl="~/icon/analysis.png" Width="75px" />
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="Label3" runat="server" CssClass="auto-style187" Text="RPA Scheduler"></asp:Label>
                  </td>
                  <td class="auto-style179"></td>
                  <td class="auto-style174"></td>
                  <td></td>
              </tr>
          
            
              <tr>
                  <td class="td-Blank23" colspan="5"></td>

                     <table width="800px" align="center">
            <tr>
                <td colspan="2" align="center"></td>
            </tr>          
            <tr>
            <td colspan="2">
            <asp:GridView ID="gvRPADetails" runat="server" Width="100%" 
                    AutoGenerateColumns="false" ShowFooter="true"
                    onrowcommand="gvRPADetails_RowCommand" 
                    
                    onrowdeleting="gvRPADetails_RowDeleting" 
                    onrowupdating="gvRPADetails_RowUpdating" 
                    onrowcancelingedit="gvRPADetails_RowCancelingEdit" 
                    onrowediting="gvRPADetails_RowEditing">
                <AlternatingRowStyle BackColor="#F0F0F0" VerticalAlign="Top" />
                <RowStyle VerticalAlign="Top" />
                <EditRowStyle VerticalAlign="Top" />
                <FooterStyle VerticalAlign="Top" />
                <Columns>            
                    <asp:TemplateField HeaderText="RPA ID" Visible="false">
                        <ItemTemplate >
                            <asp:Label ID="lblRPASCHID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RPASCHID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:Label ID="lblEditRPASCHID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RPASCHID") %>'></asp:Label>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddRPASCHID" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Scheduler Name" >
                        <ItemTemplate>
                            <asp:Label ID="lblSCHEDULER_NAME" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SCHEDULER_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSCHEDULER_NAME" runat="server" Enabled="false"  Text='<%#DataBinder.Eval(Container.DataItem, "SCHEDULER_NAME") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSCHEDULER_NAME" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="TASK_SOURCE"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblTASK_SOURCE" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TASK_SOURCE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditTASK_SOURCE" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TASK_SOURCE") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddTASK_SOURCE" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
 
 
                         <asp:TemplateField HeaderText="TASK_NAME"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblTASK_NAME" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TASK_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditTASK_NAME" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TASK_NAME") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddTASK_NAME" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                  
                    <asp:TemplateField HeaderText="Select SSC"  >
                    <ItemTemplate>
                         <asp:CheckBoxList ID="chkLstSsc" runat="server" DataSource="<%# SelectSSC() %>"
                              DataTextField="ship_name"  DataValueField="ship_code"  
                             RepeatDirection="Horizontal" RepeatColumns="4"  Width="432px">  
                            </asp:CheckBoxList>   
                    </ItemTemplate>
                          <EditItemTemplate>
                              <asp:CheckBoxList ID="chkLstEditSsc" runat="server" DataSource="<%# SelectSSC() %>"  
                                   DataTextField="ship_name"  DataValueField="ship_code"
                                  RepeatDirection="Horizontal" RepeatColumns="4" Width="432px">  
                            </asp:CheckBoxList>  
                          </EditItemTemplate>
                         <FooterTemplate>
                               <asp:CheckBoxList ID="chkLstAddSsc" runat="server" DataSource="<%# SelectSSC() %>"  
                                   DataTextField="ship_name"  DataValueField="ship_code"
                                   RepeatDirection="Horizontal" RepeatColumns="4" Width="432px">  
                            </asp:CheckBoxList>  
                          </FooterTemplate>
                </asp:TemplateField>


                      <asp:TemplateField HeaderText="Task Name">
                        <ItemTemplate>
                            <asp:DropDownList ID="drpTASK_NAME" runat="server"  Enabled="false" DataSource="<%# SelectTask() %>" 
                                 DataTextField="TASK_NAME"  DataValueField="TASKID">
                            </asp:DropDownList>
                        </ItemTemplate>
                        <EditItemTemplate> 
                            <asp:DropDownList ID="drpEditTASK_NAME" runat="server"   DataSource="<%# SelectTask() %>" 
                                 DataTextField="TASK_NAME"  DataValueField="TASKID">                                
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="drpAddTASK_NAME" runat="server"  DataSource="<%# SelectTask() %>" 
                             DataTextField="TASK_NAME"  DataValueField="TASKID">
                                </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Start DateTime">
                        <ItemTemplate>
                            <asp:Label ID="lblSTART_DATETIME" runat="server"  Text='<%#DataBinder.Eval(Container.DataItem, "START_DATETIME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSTART_DATETIME"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "START_DATETIME") %>'></asp:TextBox>  
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" Format="yyyy/MM/dd" runat="server" BehaviorID="txtEditSTART_DATETIME" TargetControlID="txtEditSTART_DATETIME" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                    </ajax:CalendarExtender>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSTART_DATETIME"   runat="server" ></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" Format="yyyy/MM/dd" runat="server" BehaviorID="txtAddSTART_DATETIME" TargetControlID="txtAddSTART_DATETIME" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                    </ajax:CalendarExtender>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="End DateTime">
                        <ItemTemplate>
                            <asp:Label ID="lblEND_DATETIME" runat="server"  Text='<%#DataBinder.Eval(Container.DataItem, "END_DATETIME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditEND_DATETIME"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "END_DATETIME") %>'></asp:TextBox>  
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" Format="yyyy/MM/dd" runat="server" BehaviorID="txtEditEND_DATETIME" TargetControlID="txtEditEND_DATETIME" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                    </ajax:CalendarExtender>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEND_DATETIME"   runat="server" ></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender4" Format="yyyy/MM/dd" runat="server" BehaviorID="txtAddEND_DATETIME" TargetControlID="txtAddEND_DATETIME" PopupPosition="Left">
                      </ajaxToolkit:CalendarExtender>
                    </ajax:CalendarExtender>
                        </FooterTemplate>
                    </asp:TemplateField>

 
                    <asp:TemplateField HeaderText="Recurring Type (Daily/Weekly/10 Days/Monthly)" Visible ="false">
                        <ItemTemplate>
                            <asp:Label ID="lblRECURRING_TYPE" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RECURRING_TYPE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditRECURRING_TYPE" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RECURRING_TYPE") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddRECURRING_TYPE" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>


                     


                      <asp:TemplateField HeaderText="Repeat Time (Minutes)" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblREPEAT_TIME" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "REPEAT_TIME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditREPEAT_TIME" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "REPEAT_TIME") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddREPEAT_TIME" runat="server" Text="0" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>


                       <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblSTATUS" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "STATUS") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>



                      <asp:TemplateField HeaderText="LAST_RUN_DATETIME" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblLAST_RUN_DATETIME" runat="server"  Text='<%#DataBinder.Eval(Container.DataItem, "LAST_RUN_DATETIME") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>

                       <asp:TemplateField HeaderText="LAST_RUN_STATUS" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblLAST_RUN_STATUS" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "LAST_RUN_STATUS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="BATCH_FILE" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblBATCH_FILE" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "BATCH_FILE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
 
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                           <asp:ImageButton ID="imgbtnEdit" runat="server" CommandName="Edit" ImageUrl="~/Image/icon-edit.png" Height="32px" Width="32px" OnClientClick="return confirm('Are you sure you want to edit this task?');"/>
                           <asp:ImageButton ID="imgbtnPause" runat="server" CommandName="Pause" CommandArgument="<%# Container.DataItemIndex %>" ImageUrl="~/Image/pause.png"  Height="32px" Width="32px" OnClientClick="return confirm('Are you sure you want to disable this task?');"/>
                            <asp:ImageButton ID="imgbtnRun" runat="server" CommandName="Run" CommandArgument="<%# Container.DataItemIndex %>" ImageUrl="~/Image/icon-run.png"  Height="32px" Width="32px" OnClientClick="return confirm('Are you sure you want to run this task?');"/>
                           <asp:ImageButton ID="imgbtnDelete" runat="server" CommandName="Delete" ImageUrl="~/Image/Delete.png"  Height="32px" Width="32px"  OnClientClick="return confirm('Are you sure you want to delete this task from the scheduler?');"/>
                             
                        </ItemTemplate>
                        <EditItemTemplate>
                           <asp:ImageButton ID="imgbtnUpdate" runat="server" CommandName="Update" ImageUrl="~/Image/icon-update.png"  Height="32px" Width="32px"/>
                           <asp:ImageButton ID="imgbtnCancel" runat="server" CommandName="Cancel" ImageUrl="~/Image/pause.png"  Height="32px" Width="32px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                           <asp:LinkButton ID="lbtnAdd" runat="server" CommandName="ADD" Text="Add" Width="100px"></asp:LinkButton> 
                        </FooterTemplate>
                    </asp:TemplateField>                    
                </Columns>            
                <HeaderStyle BackColor="#F0F0F0" />
            </asp:GridView> 
            </td>
            </tr>
        </table>
              
              </tr>
            
          </table>


    <div id="dialog" title="message" style="display:none;"> >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>



     
    </div>
</asp:Content>
