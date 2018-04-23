<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement custom date validation in Batch Edit mode</title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript" language="javascript">
            function OnValidation(s, e) {
                if (!clientChkb.GetChecked()) {
                    return;
                }
                var grid = ASPxClientGridView.Cast(s);
                var cellInfo1 = e.validationInfo[grid.GetColumnByField("BirthDate").index];
                var cellInfo2 = e.validationInfo[grid.GetColumnByField("HireDate").index];
                var years = CheckYears(cellInfo1.value, cellInfo2.value);
                if (years == null || years < 18) {
                    cellInfo1.isValid = false;
                    cellInfo2.isValid = false;
                    cellInfo2.errorText = "Invalid difference between Hire Date and Birth Date";
                    cellInfo1.errorText = "Invalid difference between Hire Date and Birth Date";
                } else {
                    cellInfo1.isValid = true;
                    cellInfo2.isValid = true;
                }
            }
            function CheckYears(date1, date2) {
                if (!date1 || !date2)
                    return null;
                var msecPerYear = 1000 * 60 * 60 * 24 * 365;
                var years = (date2.getTime() - date1.getTime()) / msecPerYear;
                return years;
            }
        </script>
        <div>
            <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" ClientInstanceName="clientChkb"
                Checked="true" Text="ClientValidation">
            </dx:ASPxCheckBox>
            <dx:ASPxCheckBox runat="server" ID="ASPxCheckBox2" AutoPostBack="true" OnCheckedChanged="ASPxCheckBox2_CheckedChanged" Checked="false" Text="Validate on the Save Changes button click"></dx:ASPxCheckBox>
            <dx:ASPxGridView ID="ASPxGridView1"  OnRowValidating="ASPxGridView1_RowValidating"    ClientInstanceName="grid" runat="server" AutoGenerateColumns="False"
                DataSourceID="AccessDataSource1" KeyFieldName="EmployeeID">
                <SettingsEditing Mode="Batch" />
                <Columns>
                    <dx:GridViewCommandColumn  ShowNewButton="true" VisibleIndex="0" ></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="EmployeeID"  ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Width="120" FieldName="BirthDate" VisibleIndex="5">
                        <PropertiesDateEdit>
                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                            </ValidationSettings>
                        </PropertiesDateEdit>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn Width="120" FieldName="HireDate" VisibleIndex="6">
                        <PropertiesDateEdit>
                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                            </ValidationSettings>
                        </PropertiesDateEdit>
                    </dx:GridViewDataDateColumn>
                </Columns>            
                 
                <ClientSideEvents BatchEditRowValidating="OnValidation" />
            </dx:ASPxGridView>
        </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Address], [BirthDate], [HireDate] FROM [Employees]"></asp:AccessDataSource>        
    </form>
</body>
</html>
