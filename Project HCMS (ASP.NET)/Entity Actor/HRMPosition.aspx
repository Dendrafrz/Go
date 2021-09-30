<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="false" CodeFile="HRMPosition.aspx.vb" Inherits="Pages_HRMPosition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            var popUp;
            function PopUpShowing(sender, eventArgs) {
                popUp = eventArgs.get_popUp();
                var gridWidth = sender.get_element().offsetWidth;
                var gridHeight = sender.get_element().offsetHeight;
                var popUpWidth = popUp.style.width.substr(0, popUp.style.width.indexOf("px"));
                var popUpHeight = popUp.style.height.substr(0, popUp.style.height.indexOf("px"));
                popUp.style.left = ((gridWidth - popUpWidth) / 2 + sender.get_element().offsetLeft).toString() + "px";
                popUp.style.top = ((gridHeight - popUpHeight) / 2 + sender.get_element().offsetTop).toString() + "px";
            }

        </script>
    </telerik:RadCodeBlock>
    <telerik:RadGrid ID="RG_1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dwilatifah">
        <MasterTableView CommandItemDisplay="Top" PageSize="10" DataKeyNames="HRMPositionID" DataSourceID="dwilatifah" EditMode="PopUp">
            <Columns>
                <telerik:GridButtonColumn UniqueName="DELETE" CommandName="Delete" ConfirmText="It will delete Program permanently, Are you sure?"
                    ButtonType="ImageButton" ImageUrl="~/Images/erase.png" Visible="true">
                    <ItemStyle Width="10px" HorizontalAlign="Center" />
                </telerik:GridButtonColumn>
                <telerik:GridButtonColumn UniqueName="Edit" CommandName="Edit"
                    ButtonType="ImageButton" ImageUrl="~/Images/Edit.png" Visible="true">
                    <ItemStyle Width="10px" HorizontalAlign="Center" />
                </telerik:GridButtonColumn>

                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="HRMPositionID" DataField="HRMPositionID">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Description" DataField="Description">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="HRMPositionStatusID" DataField="HRMPositionStatusID">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="HRMOrganizationID" DataField="HRMOrganizationID">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Active" DataField="Active">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="HRMPositionFunction" DataField="HRMPositionFunction">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AllowFiltering="false" AutoPostBackOnFilter="false" HeaderText="StartDate" DataField="StartDate" DataFormatString="{0:dd MMMM yyyy}">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AllowFiltering="false" AutoPostBackOnFilter="false" HeaderText="EndDate" DataField="EndDate" DataFormatString="{0:dd MMMM yyyy}">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Created_by" DataField="Created_by">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Created_time" DataField="Created_time">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Updated_by" DataField="Updated_by">
                        <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Updated_time" DataField="Updated_time">
                        <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings EditFormType="Template" CaptionDataField="Description" CaptionFormatString="Editing : {0}">
                <PopUpSettings Modal="true" ZIndex="20000" Width="600px" />
                <FormTemplate>
                    <asp:Label runat="server" ID="lblInfo" Visible="True" CssClass="info"></asp:Label>

                    <table cellpadding="3" style="width: 100%; background-color: lightyellow">
                        <tr>
                            <td>HRMPositionID
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt1" Text='<%# Bind("HRMPositionID")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt1" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>Description
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt2" TextMode="MultiLine" Text='<%# Bind("Description")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt2" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>HRMPositionStatusID
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt3" TextMode="SingleLine" Text='<%# Bind("HRMPositionStatusID")%>'>
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt3" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>HRMOrganizationID
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt4" TextMode="SingleLine" Text='<%# Bind("HRMOrganizationID")%>'>
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt4" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>Active
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt5" TextMode="SingleLine" Text='<%# Bind("Active")%>'>
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt5" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>HRMPositionFunction
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt6" TextMode="SingleLine" Text='<%# Bind("HRMPositionFunction")%>'>
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt6" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>StartDate
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadDatePicker runat="server" ID="rdpStartDate" DbSelectedDate='<%# Bind("StartDate")%>'
                                    DateInput-DisplayDateFormat="dd MMMM yyyy" ZIndex="22000">
                                </telerik:RadDatePicker>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="rdpStartDate" ForeColor="Red" />
                            </td>
                        </tr>
                                             
                        
                        <tr>
                            <td align="left" colspan="3">
                                <telerik:RadButton runat="server" Text='<%# IIf(DataBinder.Eval(Container, "OwnerTableView.IsItemInserted"), "Save", "Update") %>'
                                    ValidationGroup="input" CommandName='<%# IIf( DataBinder.Eval(Container, "OwnerTableView.IsItemInserted"), "PerformInsert", "Update") %>'>
                                </telerik:RadButton>
                                <telerik:RadButton ID="btnCancel" Text="Cancel" runat="server" CommandName="Cancel"></telerik:RadButton>
                            </td>
                        </tr>
                    </table>
                </FormTemplate>
            </EditFormSettings>
        </MasterTableView>
        <ClientSettings>
            <ClientEvents OnPopUpShowing="PopUpShowing" />
            <Selecting AllowRowSelect="true" />
        </ClientSettings>
    </telerik:RadGrid>
    
    <asp:SqlDataSource ID="dwilatifah" runat="server" ConnectionString="<%$ ConnectionStrings:PMMBDBConnectionString %>"
        SelectCommand="SP_HRMPosition_CRUD_Command" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Select" Name="Action" Type="String" />
            <asp:Parameter DefaultValue="1" Name="hrmpositionId" Type="String" />
            <asp:Parameter DefaultValue="1" Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="HRMPositionStatusID" Type="String" />
            <asp:Parameter DefaultValue="1" Name="HRMOrganizationID" Type="String" />
            <asp:Parameter DefaultValue="1" Name="Active" Type="String" />
            <asp:Parameter DefaultValue="1" Name="HRMPositionFunction" Type="String" />
            <asp:Parameter DefaultValue="1" Name="StartDate" Type="int32" />
            <asp:Parameter DefaultValue="1" Name="EndDate" Type="int32" />
            <asp:Parameter DefaultValue="1" Name="created_by" Type="String" />
            <asp:Parameter DefaultValue="1" Name="updated_by" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

