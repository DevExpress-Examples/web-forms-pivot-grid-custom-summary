<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577628/19.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1877)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Pivot Grid for WebForms - How to Implement Custom Summary

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

## Files to Review

* [EventExample.aspx](./CS/ASPxPivotGrid_CustomSummary/EventExample.aspx) (VB: [EventExample.aspx](./VB/ASPxPivotGrid_CustomSummary/EventExample.aspx))
* [EventExample.aspx.cs](./CS/ASPxPivotGrid_CustomSummary/EventExample.aspx.cs) (VB: [EventExample.aspx.vb](./VB/ASPxPivotGrid_CustomSummary/EventExample.aspx.vb))
* [ExpressionExample.aspx](./CS/ASPxPivotGrid_CustomSummary/ExpressionExample.aspx) (VB: [ExpressionExample.aspx](./VB/ASPxPivotGrid_CustomSummary/ExpressionExample.aspx))
* [DataBindingApiExample.aspx](./CS/ASPxPivotGrid_CustomSummary/DataBindingApiExample.aspx) (VB: [DataBindingApiExample.aspx](./VB/ASPxPivotGrid_CustomSummary/DataBindingApiExample.aspx))

## Documentation

- [Bind Pivot Grid Fields to Data Columns](https://docs.devexpress.com/AspNet/403969/components/pivot-grid/binding-to-data/bind-pivot-grid-fields-to-data-source-columns)
- [Bind Pivot Grid Fields to Calculated Expressions](https://docs.devexpress.com/AspNet/7259/components/pivot-grid/binding-to-data/bind-pivot-grid-field-to-calculated-expression)
- [Bind Pivot Grid Fields to Window Calculations](https://docs.devexpress.com/AspNet/403970/components/pivot-grid/binding-to-data/bind-pivot-grid-fields-to-window-calculations)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=web-forms-pivot-grid-custom-summary&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=web-forms-pivot-grid-custom-summary&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
