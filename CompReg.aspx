<%@ Page language="c#" Codebehind="CompReg.aspx.cs" AutoEventWireup="false" Inherits="career.CompReg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>How to Register as a Company?</title>
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
			<TABLE style="WIDTH: 568px; HEIGHT: 317px">
				<TR>
					<TD style="HEIGHT: 17px">
						<TABLE border="0" style="WIDTH: 243px; HEIGHT: 24px">
							<TR>
								<TD style="WIDTH: 234px" noWrap class="pagename">
									Companies Registration</TD>
								<TD class="data"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD class="data">
						<P>Employers can register in the FAFS Career Website.<BR>
							the service is free and allows companies to search candiates cv, communicate 
							with them and track all applications online.</P>
						<P>To register your company, please send an email to <A href="mailto:fafs.careers@aub.edu.lb">fafs.careers@aub.edu.lb</A>
							with the following information about your company:<BR>
							1) Company brief descritption<BR>
							2) Company contact person, phone number, address and PO.BOX<BR>
							3) The job type required (i.e. CCE,Civil,Electrical,Arhitecture,etc...)<BR>
							<BR>
							Please allow maximum 2 working days for creation of your account.<BR>
							you will receive an automated email with all necessary information on how to 
							login and use the website.<BR>
						</P>
					</TD>
				</TR>
				<TR>
					<TD class="data">
						for website questions and inquiries please contact&nbsp;: <A href="mailto:fafs.careers@aub.edu.lb">
							fafs.careers@aub.edu.lb</A></TD>
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
