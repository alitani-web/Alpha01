<%@ Page language="c#" Codebehind="Maintain.aspx.cs" AutoEventWireup="false" Inherits="career.Maintain" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Maintain</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="includes/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" style="Z-INDEX: 101; LEFT: 120px; POSITION: absolute; TOP: 40px" runat="server"
				Width="408px" Height="200px">
				<P>
					<asp:Image id="Image1" runat="server" ImageUrl="./images/logo.jpg"></asp:Image></P>
				<P class="data">Career Website is offline for maintenance purposes.</P>
				<P>&nbsp;</P>
				<P class="data">Please Visit the Website later.</P>
				<P><A onclick="javascript:history.back()" href="#">Back to previous page</A></P>
			</asp:Panel>
		</form>
	</body>
</HTML>
