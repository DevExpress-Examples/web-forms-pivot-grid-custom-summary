<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpressionExample.aspx.cs"
    Inherits="ASPxPivotGrid_CustomSummary.CustomSummaryExpressionExample" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v19.2, Version=19.2.9.0,
    Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid"
    TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Summary Expression</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1" Theme="Office365">
                <OptionsData DataProcessingEngine="Optimized" />
                <Fields>
                    <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="0"
                        Caption="Product Name" FieldName="ProductName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldExtendedPriceNew" Area="DataArea" AreaIndex="0"
                        Caption="Percentage of Orders over $500"
                        UnboundExpression="ToDecimal(Sum(iif([Extended_Price]>=500,1,0)))/Count()"
                        UnboundType="Decimal"
                        UnboundFieldName="fieldExtendedPriceNew">
                        <CellFormat FormatString="p" FormatType="Numeric"></CellFormat>
                    </dx:PivotGridField>
                </Fields>
            </dx:ASPxPivotGrid>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/nwind.mdb"
                SelectCommand="SELECT [Extended Price] AS Extended_Price, [ProductName] FROM [OrderReports]"></asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
