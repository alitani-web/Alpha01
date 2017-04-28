<%@ Page language="c#" Codebehind="Announcements.aspx.cs" AutoEventWireup="false" Inherits="career.Announcements" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Announcements</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="includes/style.css" type="text/css" rel="STYLESHEET">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<center>
			<table width="690" cellpadding="0">
				<tr>
					<td>
						<!-- #Include File="Head.inc" -->
					</td>
				</tr>
				<tr>
					<td align="left"><form id="Form1" method="post" runat="server">
							<table>
								<tr>
									<td class="ctitle" align="left">Announcements</td>
								</tr>
								<tr>
									<td></td>
								</tr>
								<tr>
									<td></td>
								</tr>
								<tr>
									<td class="data"><asp:label ID="Label1" runat="server" Visible="False">There are 
                no announcements at the moment</asp:label></td>
								</tr>
							</table>
							<asp:datalist ID="dl" runat="server" BorderWidth="0px" CellPadding="4" CellSpacing="4">
								<itemtemplate>
									<table class="data">
										<tr>
											<td style="TEXT-DECORATION: underline"><img src="images/3_red_dots_gray.jpg" width="8" height="11">
												<%# DataBinder.Eval(Container.DataItem, "Ann_title") %>
												:</td>
										</tr>
										<tr>
											<td>
												<%# DataBinder.Eval(Container.DataItem, "Ann_Info") %>
											</td>
										</tr>
										<tr>
											<td>For more Details click here:<a href='Announcements/<%# DataBinder.Eval(Container.DataItem, "Ann_link") %>' target="_blank">
													<%# DataBinder.Eval(Container.DataItem, "Ann_link") %>
												</a>
											</td>
										</tr>
									</table>
								</itemtemplate>
							</asp:datalist>
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<!-- #Include File="Foot.inc" -->
					</td>
				</tr>
			</table>
		</center>
	</body>
</HTML>
