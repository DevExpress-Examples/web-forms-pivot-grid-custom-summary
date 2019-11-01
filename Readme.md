<!-- default file list -->
*Files to look at*:

* [EventExample.aspx](./CS/ASPxPivotGrid_CustomSummary/EventExample.aspx) (VB: [EventExample.aspx](./VB/ASPxPivotGrid_CustomSummary/EventExample.aspx))
* [EventExample.aspx.cs](./CS/ASPxPivotGrid_CustomSummary/EventExample.aspx.cs) (VB: [EventExample.aspx.vb](./VB/ASPxPivotGrid_CustomSummary/EventExample.aspx.vb))
* [ExpressionExample.aspx](./CS/ASPxPivotGrid_CustomSummary/ExpressionExample.aspx) (VB: [ExpressionExample.aspx](./VB/ASPxPivotGrid_CustomSummary/ExpressionExample.aspx))
* [DataBindingApiExample.aspx](./CS/ASPxPivotGrid_CustomSummary/DataBindingApiExample.aspx) (VB: [DataBindingApiExample.aspx](./VB/ASPxPivotGrid_CustomSummary/DataBindingApiExample.aspx))
<!-- default file list end -->

# How to Implement Custom Summary

This example demonstrates different approaches to calculate a custom summary.

The task is to calculate the percentage of units that cost over $50 and show that value in the total columns.

## CustomSummary Event

A custom summary is calculated for the "Unit Price" field. The field's [SummaryType](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPivotGrid.PivotGridFieldBase.SummaryType) property is set to **PivotSummaryType.Custom**. The [ASPxPivotGrid.CustomSummary](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ASPxPivotGrid.CustomSummary) event is handled to count the records whose total sum exceeds $50. The ratio of these records to all the records is assigned to the [e.CustomValue](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPivotGrid.Data.PivotGridCustomSummaryEventArgsBase-1.CustomValue) parameter.

## Unbound Expression

A field is an [unbound field](https://docs.devexpress.com/AspNet/7259) with an expression that calculates the ratio.

## Data Binding API

In [Optimized mode](https://docs.devexpress.com/CoreLibraries/401367) create a field bound to the [ExpressionDataBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ExpressionDataBinding) object with the following expression:

```
ToDecimal(Sum(iif([Extended_Price]>=500,1,0)))/Count()
```

The resulting Pivot Grid is shown below:

![](/images/screenshot.png)
