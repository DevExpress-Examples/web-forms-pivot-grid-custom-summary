<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1877)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_CustomSummary/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_CustomSummary/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_CustomSummary/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_CustomSummary/Default.aspx.vb))
<!-- default file list end -->
# How to Implement Custom Summary
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1877/)**
<!-- run online end -->


<p>The following example shows how to calculate a custom summary.</p><p>Assume that the ASPxPivotGrid control is bound to an "Invoices" table, which contains invoices information (product name, extended price, salesperson, etc). A field that displays the ratio of units cost over $50 is to be added.</p><p>In this example, a custom summary is calculated against the "Unit Price" field. Its PivotGridCustomTotalBase.SummaryType property is set to PivotSummaryType.Custom and the caption to "Percentage of units cost over $50". The PivotGridControl.CustomSummary event is handled to only count those records whose total sum exceeds $50. The ratio of these records to all the records is a custom summary value and, therefore, is assigned to the PivotGridCustomSummaryEventArgsBase.CustomValue parameter.</p>

<br/>


