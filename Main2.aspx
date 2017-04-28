<%@ Page language="c#" culture="en-GB" Codebehind="Main2.aspx.cs" AutoEventWireup="false" Inherits="career.Main2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>FAFS Career Center - Faculty of Agricultural and Food Sciences</title>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
		<LINK rel="stylesheet" type="text/css" href="fafs_files/style.css">
	</HEAD>
	<body>
		<div style="DISPLAY: none" id="popup">
			<div style="Z-INDEX: 2001; POSITION: absolute; TEXT-ALIGN: center; DISPLAY: block; TOP: 0px; LEFT: 0px"></div>
			<div style="Z-INDEX: 2000; POSITION: absolute; FILTER: alpha(opacity=70); BACKGROUND-COLOR: #d7d7d7; DISPLAY: block; TOP: 0px; LEFT: 0px; opacity: 0.7"></div>
		</div>
		<form id="form1" method="post" runat="server">
			<table style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid"
				border="0" cellSpacing="0" cellPadding="0" width="994" align="center" height="486">
				<tbody>
					<tr>
						<td colSpan="2"><IMG style="WIDTH: 100%" border="0" alt="" src="fafs_files/top_fafs.gif">
						</td>
					</tr>
					<tr>
						<td vAlign="top" width="194">
							<table border="0" cellSpacing="0" cellPadding="0" width="194">
								<tbody>
									<tr>
										<td vAlign="top"></td>
									</tr>
								</tbody></table>
						</td>
						<td vAlign="top" rowSpan="2" width="795">
							<table border="0" cellSpacing="0" cellPadding="0" width="796">
								<tbody>
									<tr id="bread">
										<td class="textbrown3" bgColor="#e8e3dd" height="20" colSpan="4"><a href="http://www.aub.edu.lb/">AUB 
												Website</a> &gt; <a href="http://www.aub.edu.lb/fafs">Faculty of Agricultural 
												and Food Sciences</a> &gt; FAFS Career Center
										</td>
									</tr>
									<tr>
										<td width="15">&nbsp;</td>
										<td width="554"><IMG alt="" src="fafs_files/spacer.gif" width="1" height="1"></td>
										<td width="3">&nbsp;
										</td>
									</tr>
									<tr>
										<td><IMG alt="" src="fafs_files/spacer.gif" width="15" height="1"></td>
										<td class="normal" vAlign="top" width="554">
											<TABLE id="Table2" border="0" cellSpacing="1" cellPadding="1" width="400" align="center"
												height="228">
												<TR>
													<TD>
														<TABLE style="Z-INDEX: 0" id="Table1" class="box_table" width="392" height="5">
															<TR>
																<TD  align="left">
																	<H3 align="left">Login</H3>
																</TD>
															</TR>
														</TABLE>
														<TABLE id="Table3" border="0" cellSpacing="1" cellPadding="0" width="300">
															<TR>
																<TD>
																	<TABLE id="Table4" border="0" cellSpacing="1" cellPadding="1" width="300">
																		<TR>
																			<TD class="normal" height="19" width="84">Username</TD>
																			<TD height="19"><asp:textbox style="Z-INDEX: 0" id="txtlogin" runat="server" Width="100" MaxLength="15"></asp:textbox><asp:requiredfieldvalidator style="Z-INDEX: 0" id="RequiredFieldValidator1" runat="server" ErrorMessage="*"
																					ControlToValidate="txtlogin" Font-Size="X-Small">*</asp:requiredfieldvalidator></TD>
																		</TR>
																		<TR>
																			<TD class="normal" width="84">Password</TD>
																			<TD><asp:textbox style="Z-INDEX: 0" id="txtpassword" runat="server" Width="100" MaxLength="20" TextMode="Password"></asp:textbox><asp:requiredfieldvalidator style="Z-INDEX: 0" id="RequiredFieldValidator2" runat="server" ErrorMessage="*"
																					ControlToValidate="txtpassword" Font-Size="X-Small">*</asp:requiredfieldvalidator></TD>
																		</TR>
																		<TR>
																			<TD width="84"></TD>
																			<TD><asp:button style="Z-INDEX: 0" id="btnLogin1" runat="server" Text="Login"></asp:button></TD>
																		</TR>
																		<TR>
																			<TD width="84"></TD>
																			<TD>&nbsp;
																			</TD>
																		</TR>
																	</TABLE>
																	<asp:label style="Z-INDEX: 0" id="lblregnote" runat="server" ForeColor="Red" CssClass="validation"></asp:label>&nbsp;</TD>
															</TR>
														</TABLE>
														<TABLE id="Table5" border="0" cellSpacing="1" cellPadding="1" width="300">
															<TR>
																<TD height="28"><asp:hyperlink style="Z-INDEX: 0" id="HyperLink1" runat="server" NavigateUrl="forgot.aspx" Target="_blank"
																		Font-Italic="True" CssClass="hyperlinkcolorOfFafs">Forgot login info? Click here</asp:hyperlink></TD>
															</TR>
															<TR>
																<TD>
																	<P align="left">&nbsp;</P>
																</TD>
															</TR>
															<TR>
																<TD></TD>
															</TR>
															<TR>
																<TD>&nbsp;</TD>
															</TR>
															<TR>
																<TD >
																	<H3>Register</H3>
																</TD>
															</TR>
														</TABLE>
														<TABLE id="Table6" border="0" cellSpacing="1" cellPadding="1" width="314" height="16">
															<TR>
																<TD width="102"><asp:dropdownlist style="Z-INDEX: 0" id="ddlChoice" runat="server" AutoPostBack="True">
																		<asp:ListItem Value="Register" Selected="True">Select</asp:ListItem>
																	</asp:dropdownlist></TD>
															</TR>
														</TABLE>
														<BR>
														<asp:label id="lblusers" CssClass="normal" Runat="server">User(s) currently online: </asp:label>
														<span class="normal" id="sp">
															<%=Application["ActiveUsers"]%>
														</span><br>
													</TD>
												</TR>
											</TABLE>
										</td>
										<td vAlign="top" width="3">
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
										</td>
										<td class="txtgreen" vAlign="top" width="223" align="center"></td>
									</tr>
								</tbody></table>
						</td>
					</tr>
					<tr>
						<td height="24" align="center"></td>
					</tr>
				</tbody></table>
		</form>
		<div class="normal" align="center"><a href="http://www.aub.edu.lb/">AUB</a> claims 
			no <a href="http://www.aub.edu.lb/main/aub_files/Pages/disclaimer.aspx">responsibility</a>
			for the material published on its site. All photographs and images are <a href="http://www.aub.edu.lb/main/aub_files/Pages/copyright.aspx">
				copyright</a> © American University of Beirut unless otherwise noted.<br>
			If you have any comments or suggestions about AUB, <a href="http://www.aub.edu.lb/main/aub_files/Pages/contacts.aspx">
				please contact us</a>. Technical contact: <A href="mailto:fafs.careers@aub.edu.lb">
				fafs.careers@aub.edu.lb</A>
			<br>
			<br>
			Last updated:
			<%=dt.ToString()%>
			- <A href="administrator/Login1.aspx">Admin Login</A> - Developed by <a href="http://webfea.aub.edu.lb/fea/">
				FEA</a> (<a href="http://www.aub.edu.lb/fafs/fafs_home/Pages/careercenter.aspx"><strong>Credits</strong></a>). 
			Customized for <a href="http://www.aub.edu.lb/fafs/">FAFS</a> by <a href="http://www.softkube.com/">
				SOFTKUBE</a>
		</div>
	</body>
</HTML>
