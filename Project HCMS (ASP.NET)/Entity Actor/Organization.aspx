<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="false" CodeFile="Organization.aspx.vb" Inherits="Pages_Organization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <telerik:RadGrid ID="RG_1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="MyLogin">
        <MasterTableView CommandItemDisplay="Top" PageSize="10" DataKeyNames="HRMOrganizationID" DataSourceID="MyLogin" EditMode="PopUp">
            <Columns>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="HRMOrganizationID" DataField="HRMOrganizationID">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Description" DataField="Description">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="PIC" DataField="PIC">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="ParentId" DataField="ParentId">
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
                 <EditFormSettings EditFormType="Template" CaptionDataField="Name" CaptionFormatString="Editing : {0}">
                <PopUpSettings Modal="true" ZIndex="20000" Width="500px" />
                <FormTemplate>
                    <asp:Label runat="server" ID="lblInfo" Visible="True" CssClass="info"></asp:Label>

                    <table cellpadding="3" style="width: 100%; background-color: lightyellow">
                        <tr>
                            <td>HRMOrganizationID
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt1" Text='<%# Bind("HRMOrganizationID")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt1" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>Name
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt2" TextMode="SingleLine" Text='<%# Bind("Description")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt2" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>PIC
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt3" TextMode="MultiLine" Text='<%# Bind("PIC")%>'>
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt3" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>Birthplace
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt4" TextMode="SingleLine" Text='<%# Bind("ParentID")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt4" ForeColor="Red" />
                            </td>
                        </tr>
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
    
    <asp:SqlDataSource ID="MyLogin" runat="server" ConnectionString="<%$ ConnectionStrings:PMMBDBConnectionString %>"
        SelectCommand="SP_HRMOrganization_CRUD_Command" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Select" Name="Action" Type="String" />
            <asp:Parameter DefaultValue="1" Name="HRMOrganizationID" Type="String" />
            <asp:Parameter DefaultValue="1" Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="PIC" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ParentId" Type="String" />
            <asp:Parameter DefaultValue="1" Name="StartDate" Type="int32" />
            <asp:Parameter DefaultValue="1" Name="EndDate" Type="int32" />
            <asp:Parameter DefaultValue="1" Name="created_by" Type="String" />
            <asp:Parameter DefaultValue="1" Name="updated_by" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>