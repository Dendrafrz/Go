<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="Pages_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <telerik:RadGrid ID="RG_1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SQL_Employee">
        <MasterTableView CommandItemDisplay="Top" PageSize="10" DataKeyNames="EMPLID" DataSourceID="SQL_Employee" EditMode="PopUp">
            <Columns>
                <telerik:GridButtonColumn UniqueName="DELETE" CommandName="DELETE" ConfirmText="It will delete Program permanently, Are you sure?"
                    ButtonType="ImageButton" ImageUrl="~/Images/erase.png" Visible="true">
                    <ItemStyle Width="10px" HorizontalAlign="Center" />
                </telerik:GridButtonColumn>
                <telerik:GridButtonColumn UniqueName="Edit" CommandName="Edit"
                    ButtonType="ImageButton" ImageUrl="~/Images/Edit.png" Visible="true">
                    <ItemStyle Width="10px" HorizontalAlign="Center" />
                </telerik:GridButtonColumn>

                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="EMPLID" DataField="EMPLID">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Name" DataField="Name">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Description" DataField="Description">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Address" DataField="Address">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn ShowFilterIcon="false" AutoPostBackOnFilter="false" HeaderText="Birthplace" DataField="Birthplace">
                    <ItemStyle Width="100%" />
                </telerik:GridBoundColumn>
                <telerik:GridDateTimeColumn ShowFilterIcon="false" AllowFiltering="false" AutoPostBackOnFilter="false" HeaderText="BirthDate" DataField="BirthDate" DataFormatString="{0:dd MMMM yyyy}">
                    <ItemStyle Width="100" />
                </telerik:GridDateTimeColumn>
            </Columns>
            <EditFormSettings EditFormType="Template" CaptionDataField="Name" CaptionFormatString="Editing : {0}">
                <PopUpSettings Modal="true" ZIndex="20000" />
                <FormTemplate>
                    <asp:Label runat="server" ID="lblInfo" Visible="True" CssClass="info"></asp:Label>

                    <table cellpadding="3" style="width: 100%; background-color: lightyellow">
                        <tr>
                            <td>EMPLID
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt1" Text='<%# Bind("EMPLID")%>' Width="400px">
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
                                <telerik:RadTextBox runat="server" ID="txt2" TextMode="SingleLine" Text='<%# Bind("Name")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt2" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>Address
                            </td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txt3" TextMode="MultiLine" Text='<%# Bind("Address")%>'>
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
                                <telerik:RadTextBox runat="server" ID="txt4" TextMode="SingleLine" Text='<%# Bind("Birthplace")%>' Width="400px">
                                </telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="txt4" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>BirthDate</td>
                            <td>:
                            </td>
                            <td>
                                <telerik:RadDatePicker runat="server" ID="rdpBirthDate" DbSelectedDate='<%# Bind("BirthDate")%>' 
                                    DateInput-DisplayDateFormat="dd MMMM yyyy">
                                </telerik:RadDatePicker>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="input"
                                    ErrorMessage="* required" Display="Dynamic" ControlToValidate="rdpBirthDate" ForeColor="Red" />
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
    </telerik:RadGrid>

    <asp:SqlDataSource ID="SQL_Employee" runat="server" ConnectionString="<%$ ConnectionStrings:PMMBDBConnectionString %>"
        SelectCommand="SP_tPersonel_Info_CRUD_Command" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Select" Name="Action" Type="String" />
            <asp:Parameter DefaultValue="1" Name="emplid" Type="String" />
            <asp:Parameter DefaultValue="1" Name="Name" Type="String" />
            <asp:Parameter DefaultValue="1" Name="address" Type="String" />
            <asp:Parameter DefaultValue="1" Name="birthplace" Type="String" />
            <asp:Parameter DefaultValue="1" Name="birthdate" Type="int32" />
            <asp:Parameter DefaultValue="1" Name="created_by" Type="String" />
            <asp:Parameter DefaultValue="1" Name="updated_by" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

