<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/RpaSub.Master" CodeBehind="Rpa_TaskApp.aspx.vb" Inherits="Ganges33.Rpa_TaskApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <table>
        <tr>
            <td><asp:Label ID="lblInfo" runat="server"></asp:Label></td><td></td>
        </tr>
        <tr>
            <td style="vertical-align:top">
                <asp:Button ID="btnUser" runat="server" Text="Update GSPN Credentials" />
                <br />
                <br />
                <asp:Button ID="btnUploadPrg" runat="server" Text="New Task (Python Code)  " />
                <br /><br />
                <asp:Button ID="btnMailManagement" runat="server" Text="      Mail Management       "  />
            </td>
            <td> <div class="GridviewDiv" id="divGspn" runat="server" visible="false">
                
<asp:GridView runat="server" ID="gvDetails" AllowPaging="true" PageSize="10" AutoGenerateColumns="false" Width="420px" OnPageIndexChanging="gvDetails_PageIndexChanging">
<HeaderStyle BackColor="#F0F0F0" />
<Columns>
 <asp:TemplateField HeaderText="Select">  
<ItemTemplate>  
 <asp:CheckBox ID="chkChangePwd" runat="server" />  
 </ItemTemplate>  
</asp:TemplateField>  
<asp:BoundField DataField="ship_code" HeaderText="ship_code" Visible="false" />
 <asp:TemplateField HeaderText="ship_code"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblShipCode" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ship_code") %>'></asp:Label>   
                            <asp:Label ID="lblShipName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ship_name") %>'></asp:Label>            
                        </ItemTemplate>
                    </asp:TemplateField>

<asp:BoundField DataField="ship_name" HeaderText="Branch" />
<asp:BoundField DataField="RpaClientUserId" HeaderText="GSPN&nbsp;Username"  />
<asp:BoundField DataField="RpaClientPwd" HeaderText="Password" />

  <asp:TemplateField HeaderText="New GSPN Usernmae"  Visible="true">
                        <ItemTemplate>  
                            <asp:TextBox ID="txtClientUsername" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RpaClientUserId") %>'></asp:TextBox>            
                        </ItemTemplate>  
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="New Password" Visible="true">
                        <ItemTemplate>
                            <asp:TextBox ID="txtPassword" runat="server" Text=""></asp:TextBox>            
                        </ItemTemplate>
                    </asp:TemplateField>

</Columns>
</asp:GridView><br />
                <asp:Button id="btnUpDateGspnPwd" runat="server" Text="Update GSPN password"/>
                 </div>
                <br />
                <div class="GridviewDiv" id="divMailManagement" runat="server" visible="false">
                
                       <asp:GridView ID="gvRPAMail" runat="server" Width="100%" 
                    AutoGenerateColumns="false" ShowFooter="true"
                    onrowcommand="gvRPAMail_RowCommand" 
                    
                    onrowdeleting="gvRPAMail_RowDeleting" 
                    onrowupdating="gvRPAMail_RowUpdating" 
                    onrowcancelingedit="gvRPAMail_RowCancelingEdit" 
                    onrowediting="gvRPAMail_RowEditing">
                <AlternatingRowStyle BackColor="#F0F0F0" VerticalAlign="Top" />
                <RowStyle VerticalAlign="Top" />
                <EditRowStyle VerticalAlign="Top" />
                <FooterStyle VerticalAlign="Top" />
                <Columns>            
                    <asp:TemplateField HeaderText="RPA ID" Visible="false">
                        <ItemTemplate >
                            <asp:Label ID="lblEmailId" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAILID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:Label ID="lblEditEmailId" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAILID") %>'></asp:Label>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEmailId" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email Type" >
                        <ItemTemplate>
                            <asp:Label ID="lblEmailType" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_TYPE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditEmailType" runat="server" Enabled="false"  Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_TYPE") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEmailType" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                                           <asp:TemplateField HeaderText="Smtp"  >
                        <ItemTemplate>
                            <asp:Label ID="lblSmtp" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSmtp" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSmtp" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="SMTP_PORT"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblSmtpPort" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_PORT") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSmtpPort" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_PORT") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSmtpPort" runat="server" Text="587" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
 

                        <asp:TemplateField HeaderText="SMTP_SSL_ENABLE"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblSmtpSslEnable" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_SSL_ENABLE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSmtpSslEnable" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_SSL_ENABLE") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSmtpSslEnable" runat="server" Text="0" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

 
                         <asp:TemplateField HeaderText="Smtp Username"  >
                        <ItemTemplate>
                            <asp:Label ID="lblSmtpCredentialsUserName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_CREDENTIALS_USER_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSmtpCredentialsUserName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_CREDENTIALS_USER_NAME") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSmtpCredentialsUserName" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                            <asp:TemplateField HeaderText="Smtp Password"  >
                        <ItemTemplate>
                            <asp:Label ID="lblSmtpCredentialsUserPassword" Visible="false"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_CREDENTIALS_USER_PASSWORD") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSmtpCredentialsUserPassword" visible="false" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SMTP_CREDENTIALS_USER_PASSWORD") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSmtpCredentialsUserPassword" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                                               <asp:TemplateField HeaderText="Sender"  >
                        <ItemTemplate>
                            <asp:Label ID="lblSender" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SENDER") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSender" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SENDER") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSender" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField HeaderText="Email To"  >
                        <ItemTemplate>
                            <asp:Label ID="lblEmailTo" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_TO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditEmailTo" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_TO") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEmailTo" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Email Cc"  >
                        <ItemTemplate>
                            <asp:Label ID="lblEmailCc" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_CC") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditEmailCc" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_CC") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEmailCc" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>


                     <asp:TemplateField HeaderText="Email Bcc"  >
                        <ItemTemplate>
                            <asp:Label ID="lblEmailBcc" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_BCC") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditEmailBcc" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "EMAIL_BCC") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddEmailBcc" runat="server" ></asp:TextBox>
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

                        <asp:TemplateField HeaderText="Source"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblSource" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SOURCE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditSource" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SOURCE") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddSource" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                                          <asp:TemplateField HeaderText="status"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>            
                            <asp:TextBox ID="txtEditStatus" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "status") %>'></asp:TextBox>            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddStatus" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                             <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:DropDownList ID="drpStatus" runat="server" Enabled="false" >
                                 <asp:ListItem Enabled="true" Text="Active" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="1"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <EditItemTemplate> 
                            <asp:DropDownList ID="drpEditStatus" runat="server">
                                 <asp:ListItem Enabled="true" Text="Active" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="1"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="drpAddStatus" runat="server">
                             <asp:ListItem Enabled="true" Text="Active" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="1"></asp:ListItem>
                                </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
 
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                           <asp:ImageButton ID="imgbtnEdit" runat="server" CommandName="Edit" ImageUrl="~/Image/icon-edit.png" Height="32px" Width="32px" OnClientClick="return confirm('Are you sure you want to edit this email type?');"/>
                           <asp:ImageButton ID="imgbtnDelete" runat="server" CommandName="Delete" ImageUrl="~/Image/Delete.png"  Height="32px" Width="32px"  OnClientClick="return confirm('Are you sure you want to delete this email type from the email managements?');"/>
                             
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
                    <br />
                    
                    </div>

            </td>
        </tr>
    </table>

     <div id="dialog" title="message" style="display:none;"> >
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
