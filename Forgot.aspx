<%@ Page language="c#" Codebehind="Forgot.aspx.cs" AutoEventWireup="false" Inherits="career.Forgot" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Forgot</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="./includes/style.css" type="text/css" rel="stylesheet">
		<script language="javascript">
		function validate(){
		if (TxtUser.value=="")
		window.alert("required");
		}
		
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<FORM id="Form1" method="post" runat="server">
			<TABLE style="WIDTH: 500px; HEIGHT: 280px">
				<TR>
					<TD style="HEIGHT: 17px">
						<TABLE border="0">
							<TR>
								<TD style="WIDTH: 121px" noWrap>
									<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl="#" Width="160px">Students & Alumni</asp:HyperLink></TD>
								<TD class="data"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label3" runat="server" Width="500px" cssClass="stitle"><br>Recover your credentials by resetting your password instantly!!<br><br> Simply put  your ID number, your registered email in the FAFS Career Center and your new password in the below form:</asp:Label></TD>
				</TR>
				<TR>
					<TD class="data">Note: Fields marked with * are Required fields.</TD>
				</TR>
				<TR>
					<TD class="data" style="HEIGHT: 18px">
						<asp:Label id="Label5" runat="server" ForeColor="Red" Visible="False" Width="152px">Don't Try To hack me!</asp:Label></TD>
				</TR>
				<TR>
					<TD class="data" style="HEIGHT: 159px">
						<asp:Panel id="Panel1" runat="server" HorizontalAlign="Center" Width="500px" Height="128px">
							<TABLE style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none"
								borderColor="#ff9933" cellSpacing="0" cellPadding="0" border="1">
								<TR>
									<TD>
										<TABLE class="data" style="WIDTH: 356px; HEIGHT: 138px">
											<TR>
												<TD colSpan="3">
													<asp:Label id="lblnote" runat="server" ForeColor="Red" Font-Size="X-Small"></asp:Label></TD>
											</TR>
											<TR>
												<TD style="HEIGHT: 26px">
													<asp:Label id="Label1" runat="server" CssClass="data">Email *</asp:Label></TD>
												<TD style="HEIGHT: 26px">
													<asp:TextBox id="TxtEmail" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
												<TD style="HEIGHT: 26px"></TD>
											</TR>
											<TR>
												<TD>
													<asp:Label id="Label2" runat="server" CssClass="data">AUB ID Number *<BR>(eg. 200112345)</asp:Label></TD>
												<TD>
													<asp:TextBox id="TxtIDNum" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="TxtIDNum" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
												<TD></TD>
											</TR>
											<TR>
												<TD>New password:*</TD>
												<TD>
													<asp:TextBox id="txtpass" runat="server" Width="155px" TextMode="Password" MaxLength="20"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="required">*</asp:RequiredFieldValidator></TD>
												<TD></TD>
											</TR>
											<TR>
												<TD>Confirm new password:*</TD>
												<TD>
													<asp:TextBox id="txtcpass" runat="server" Width="158px" TextMode="Password" MaxLength="20"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txtcpass" ErrorMessage="required">*</asp:RequiredFieldValidator></TD>
												<TD></TD>
											</TR>
											<TR>
												<TD colSpan="3">
													<asp:CompareValidator id="CompareValidator1" runat="server" Width="312px" Font-Size="X-Small" ControlToValidate="txtcpass"
														ErrorMessage="password and confirm password should match" ControlToCompare="txtpass"></asp:CompareValidator></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
							<TABLE>
								<TR>
									<TD colSpan="3">
										<asp:Button id="BtnSend" runat="server" Text="Reset my login instantly"></asp:Button></TD>
								</TR>
							</TABLE>
							<BR>
						</asp:Panel>Employers contact webmaster: <A href="mailto:fafs.careers@aub.edu.lb">fafs.careers@aub.edu.lb</A></TD>
				</TR>
				<TR>
					<TD class="data" align="right">
						<a href="#" onclick="javascript:window.close();">Close Window</a>
					</TD>
				</TR>
			</TABLE>
			<BR>
		</FORM>
	</body>
</HTML>
