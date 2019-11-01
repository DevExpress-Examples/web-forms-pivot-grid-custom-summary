<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ASPxPivotGrid_CustomSummary.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<h1>Custom Summary Examples</h1>
		<div>
			<dx:ASPxButton ID="ASPxButton1" runat="server" Text="Handle CustomSummary Event" Theme="DevEx" AutoPostBack="False" Width="200">
				<ClientSideEvents Click="function(s, e) {
							window.location = 'EventExample.aspx';
							}" />
			</dx:ASPxButton>
			<dx:ASPxButton ID="ASPxButton2" runat="server" Text="Use Summary Expression" Theme="DevEx" AutoPostBack="False" Width="200">
				<ClientSideEvents Click="function(s, e) {
							window.location = 'ExpressionExample.aspx';
							}" />
			</dx:ASPxButton>
			<dx:ASPxButton ID="ASPxButton3" runat="server" Text="Data Binding Expression" Theme="DevEx" AutoPostBack="False" Width="200">
				<ClientSideEvents Click="function(s, e) {
							window.location = 'DataBindingApiExample.aspx';
							}" />
			</dx:ASPxButton>
		</div>
	</form>
</body>
</html>