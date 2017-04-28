<%@ Register TagPrefix="cc1" Namespace="sstchur.web.SmartNav" Assembly="sstchur.web.SmartNav" %>
<%@ Page language="c#" culture="en-GB" Codebehind="studentreg.aspx.cs" AutoEventWireup="false" Inherits="career.studentreg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>studentreg</title>
		<LINK href="./includes/style.css" type="text/css" rel="stylesheet">
		<meta content="False" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE class="data" id="Table2" borderColor="graytext" cellSpacing="0" cellPadding="0"
				border="2">
				<TR>
					<TD class="TABLEHEADERS" style="WIDTH: 767px; HEIGHT: 17px" colSpan="4"><FONT size="4">Personal 
							Information</FONT>
						<cc1:smartscroller id="SmartScroller1" runat="server"></cc1:smartscroller></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px">First Name</TD>
					<TD style="WIDTH: 316px; HEIGHT: 25px"><asp:textbox id="Txt_Fname" runat="server" MaxLength="20"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 25px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_FName" runat="server" ErrorMessage="First Name Required" ControlToValidate="Txt_Fname"
							CssClass="myvalidation">*</asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 16px">Middle Initial</TD>
					<TD style="WIDTH: 316px; HEIGHT: 16px"><asp:textbox id="Txt_MI" runat="server" MaxLength="1"></asp:textbox>&nbsp;</TD>
					<TD style="WIDTH: 248px; HEIGHT: 16px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_MI" runat="server" ErrorMessage="Middle Initial Required" ControlToValidate="Txt_MI"
							CssClass="myvalidation">*</asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 21px">Last Name</TD>
					<TD style="WIDTH: 316px; HEIGHT: 21px"><asp:textbox id="Txt_Lname" runat="server" MaxLength="20"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 21px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name Required" ControlToValidate="Txt_Lname"
							CssClass="myvalidation">*</asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 16px">Country of Citizenship</TD>
					<TD style="WIDTH: 316px; HEIGHT: 16px"><asp:dropdownlist id="DDL_Cntry" runat="server" Width="230px"></asp:dropdownlist></TD>
					<TD style="WIDTH: 248px; HEIGHT: 16px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_Cntry" runat="server" ErrorMessage="Country Required" ControlToValidate="DDL_Cntry"
							CssClass="myvalidation" InitialValue="0">*</asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 35px">Gender</TD>
					<TD style="WIDTH: 316px; HEIGHT: 35px"><asp:radiobuttonlist id="rblgender" runat="server" CssClass="data" Width="144px" RepeatDirection="Horizontal"
							Height="8px"></asp:radiobuttonlist></TD>
					<TD style="WIDTH: 248px; HEIGHT: 35px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="Gender Required" ControlToValidate="rblgender"
							CssClass="myvalidation">*</asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 22px">Major</TD>
					<TD style="WIDTH: 316px; HEIGHT: 22px"><asp:dropdownlist id="ddlmajor" runat="server" Width="250px"></asp:dropdownlist></TD>
					<TD style="WIDTH: 248px; HEIGHT: 22px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ErrorMessage="Major Required" ControlToValidate="ddlmajor"
							CssClass="myvalidation" InitialValue="NA">*</asp:requiredfieldvalidator>
						<asp:dropdownlist id="Dropdownlist5" runat="server" Width="33px" Visible="False">
							<asp:ListItem Value="NA">Select</asp:ListItem>
							<asp:ListItem Value="Agribusiness">Agribusiness</asp:ListItem>
							<asp:ListItem Value="Ecosystem Management and the Diploma of Ing&#233;nieur Agricole">Ecosystem Management and the Diploma of Ing&#233;nieur Agricole</asp:ListItem>
							<asp:ListItem Value="Agricultural Economics">Agricultural Economics</asp:ListItem>
							<asp:ListItem Value="Animal Science">Animal Science</asp:ListItem>
							<asp:ListItem Value="Plant Science ">Plant Science </asp:ListItem>
							<asp:ListItem Value="Food Technology">Food Technology</asp:ListItem>
							<asp:ListItem Value="Irrigation">Irrigation</asp:ListItem>
							<asp:ListItem Value="Mechanization">Mechanization</asp:ListItem>
							<asp:ListItem Value="Plant Protection">Plant Protection</asp:ListItem>
							<asp:ListItem Value="Poultry Science">Poultry Science</asp:ListItem>
							<asp:ListItem Value="Soil Science">Soil Science</asp:ListItem>
							<asp:ListItem Value="Nutrition">Nutrition</asp:ListItem>
							<asp:ListItem Value="Eco-system Management">Eco-system Management</asp:ListItem>
						</asp:dropdownlist></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 20px">Email</TD>
					<TD style="WIDTH: 316px; HEIGHT: 20px"><asp:textbox id="Txt_email" runat="server" MaxLength="30"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 20px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ErrorMessage="Email Required" ControlToValidate="Txt_email"
							CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:regularexpressionvalidator id="Val_Email" runat="server" ErrorMessage="Not a valid email address" ControlToValidate="Txt_email"
							CssClass="myvalidation" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Not a valid email address</asp:regularexpressionvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 21px">Date of Birth</TD>
					<TD style="WIDTH: 316px; HEIGHT: 21px"><asp:dropdownlist id="ddlDay" runat="server" Width="64px" Height="24px"></asp:dropdownlist><asp:dropdownlist id="ddlMonth" runat="server" Width="64px"></asp:dropdownlist><asp:dropdownlist id="ddlYear" runat="server" Width="70px"></asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator7" runat="server" ErrorMessage="Year Of Birth Required"
							ControlToValidate="ddlYear" CssClass="myvalidation" InitialValue="0">*</asp:requiredfieldvalidator><asp:requiredfieldvalidator id="Requiredfieldvalidator8" runat="server" ErrorMessage="Month Of Birth Required"
							ControlToValidate="ddlMonth" CssClass="myvalidation" InitialValue="0">*</asp:requiredfieldvalidator><asp:requiredfieldvalidator id="Requiredfieldvalidator10" runat="server" ErrorMessage="Day Of Birth Required"
							ControlToValidate="ddlDay" CssClass="myvalidation" InitialValue="0">*</asp:requiredfieldvalidator></TD>
					<TD style="WIDTH: 248px; HEIGHT: 21px" colSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="lbldate" runat="server" CssClass="myvalidation"></asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 50px">Permanent Address</TD>
					<TD style="WIDTH: 316px; HEIGHT: 50px"><asp:textbox id="txt_P_Address" runat="server" MaxLength="100" CssClass="tac" Width="240px" Height="48px"
							TextMode="MultiLine"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 50px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" ErrorMessage="Permanent Address required"
							ControlToValidate="txt_P_Address" CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Max 100 characters for permenant address. "
							ControlToValidate="txt_P_Address" CssClass="myvalidation" Width="149px" ValidationExpression="^[\s\S]{0,3999}$"
							Display="Dynamic">Max  100 characters. </asp:regularexpressionvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 52px">Current Address</TD>
					<TD style="WIDTH: 316px; HEIGHT: 52px"><asp:textbox id="txt_CurAddress" runat="server" MaxLength="100" CssClass="tac" Width="240px"
							Height="48px" TextMode="MultiLine"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 52px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Current Address required"
							ControlToValidate="txt_CurAddress" CssClass="myvalidation" Width="7px">*</asp:requiredfieldvalidator>&nbsp;
						<asp:regularexpressionvalidator id="Regularexpressionvalidator3" runat="server" ErrorMessage="Max 100 characters for current address"
							ControlToValidate="txt_CurAddress" CssClass="myvalidation" ValidationExpression="^[\s\S]{0,3999}$" Display="Dynamic">Max  100 characters. </asp:regularexpressionvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 33px">Phone(s)</TD>
					<TD style="WIDTH: 316px; HEIGHT: 33px"><asp:textbox id="Txt_Phone" runat="server" MaxLength="12"></asp:textbox><asp:button id="But_AddPhone" runat="server" Width="96px" CausesValidation="False" Text="Add Phone(s)"></asp:button>&nbsp;</TD>
					<TD style="WIDTH: 248px; HEIGHT: 33px" colSpan="2">&nbsp;
						<asp:label id="Lbl_Phone" runat="server" CssClass="myvalidation" Width="302px">Add at least one phone before  submitting the page.</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 28px"></TD>
					<TD style="WIDTH: 316px; HEIGHT: 28px"><asp:datagrid id="dgphone" runat="server" Width="122px">
							<ItemStyle CssClass="data"></ItemStyle>
							<HeaderStyle CssClass="TableHeaders"></HeaderStyle>
						</asp:datagrid></TD>
					<TD style="WIDTH: 248px; HEIGHT: 28px" colSpan="2"></TD>
				</TR>
				<TR>
					<TD class="TABLEHEADERS" style="WIDTH: 767px; HEIGHT: 9px" colSpan="4"><FONT size="4"><asp:label id="lbldegearned" runat="server" CssClass="TABLEHEADERS" Font-Size="13pt">Degrees Earned</asp:label></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 18px"><asp:label id="lbldeg" runat="server">Degree</asp:label></TD>
					<TD style="WIDTH: 316px; HEIGHT: 19px"><asp:dropdownlist id="ddlDegree" runat="server" Width="252px"></asp:dropdownlist></TD>
					<TD style="WIDTH: 248px; HEIGHT: 19px" colSpan="2"></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 18px"><asp:label id="lbluniv" runat="server">University</asp:label></TD>
					<TD style="WIDTH: 316px; HEIGHT: 19px"><asp:dropdownlist id="ddlUniv" runat="server" Width="252px"></asp:dropdownlist></TD>
					<TD style="WIDTH: 248px; HEIGHT: 19px" colSpan="2"><asp:label id="lbldegr" runat="server" CssClass="myvalidation" Width="314px">Add at least one degree before submitting the page.</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 3px"><asp:label id="lblgrad" runat="server">Graduation Year</asp:label></TD>
					<TD style="WIDTH: 316px; HEIGHT: 3px"><asp:dropdownlist id="ddlgradyr" runat="server"></asp:dropdownlist><asp:button id="But_Adddeg" runat="server" Width="258px" CausesValidation="False" Text="Add Degree(s) from all universities attended"></asp:button></TD>
					<TD style="WIDTH: 248px; HEIGHT: 3px" colSpan="2"></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 3px"></TD>
					<TD style="WIDTH: 316px; HEIGHT: 3px"><asp:datagrid id="dgdegrees" runat="server" Width="199px" Height="95px" CellPadding="0">
							<ItemStyle CssClass="data"></ItemStyle>
							<HeaderStyle CssClass="TableHeaders"></HeaderStyle>
							<Columns>
								<asp:ButtonColumn Text="Remove" CommandName="Delete"></asp:ButtonColumn>
							</Columns>
						</asp:datagrid></TD>
					<TD style="WIDTH: 248px; HEIGHT: 3px" colSpan="2"></TD>
				</TR>
				<TR class="TABLEHEADERS">
					<TD style="WIDTH: 197px; HEIGHT: 26px" colSpan="4"><FONT size="4">Registration&nbsp;Information</FONT>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 20px">ID&nbsp;Number</TD>
					<TD style="WIDTH: 316px; HEIGHT: 20px"><asp:textbox id="Txt_ID" runat="server" MaxLength="9"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 20px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_ID" runat="server" ErrorMessage="ID required" ControlToValidate="Txt_ID"
							CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" ErrorMessage="ID is 9 digits." ControlToValidate="Txt_ID"
							CssClass="myvalidation" ValidationExpression="\d{9}" ForeColor=" "></asp:regularexpressionvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 26px">Username</TD>
					<TD style="WIDTH: 316px; HEIGHT: 26px"><asp:textbox id="Txt_UserN" runat="server" MaxLength="12"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 26px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_User" runat="server" ErrorMessage="Username Required" ControlToValidate="Txt_UserN"
							CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:label id="lblusernameexist" runat="server" CssClass="myvalidation" Visible="False" Width="143px"
							Height="4px"> Username exists.</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 18px">Password</TD>
					<TD style="WIDTH: 316px; HEIGHT: 19px"><asp:textbox id="Txt_Pass" runat="server" MaxLength="20" TextMode="Password"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 19px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_Pass" runat="server" ErrorMessage="Password Required" ControlToValidate="Txt_Pass"
							CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:label id="lblidexist" runat="server" CssClass="myvalidation" Visible="False" Width="195px">ID number already exists</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 18px">Confirm&nbsp;Password</TD>
					<TD style="WIDTH: 316px; HEIGHT: 19px"><asp:textbox id="Txt_ConPass" runat="server" MaxLength="20" TextMode="Password"></asp:textbox></TD>
					<TD style="WIDTH: 248px; HEIGHT: 19px" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Val_ConPass" runat="server" ErrorMessage="Confirm Password Required" ControlToValidate="Txt_ConPass"
							CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:comparevalidator id="ValComp_Pas" runat="server" ErrorMessage="Passwords do not match." ControlToValidate="Txt_ConPass"
							CssClass="myvalidation" ForeColor=" " ControlToCompare="Txt_Pass"></asp:comparevalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 30px" vAlign="top">Secret Number</TD>
					<TD style="WIDTH: 316px; HEIGHT: 30px" vAlign="top"><asp:textbox id="Txt_Secr" runat="server" MaxLength="6"></asp:textbox><asp:image id="Image1" runat="server" ImageUrl="image.aspx"></asp:image></TD>
					<TD style="WIDTH: 248px; HEIGHT: 30px" vAlign="top" colSpan="2">&nbsp;
						<asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" ErrorMessage="Secret Number Required"
							ControlToValidate="Txt_Secr" CssClass="myvalidation">*</asp:requiredfieldvalidator>&nbsp;
						<asp:label id="Lb_Img" runat="server" CssClass="myvalidation"></asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 177px; HEIGHT: 26px">&nbsp;</TD>
					<TD style="WIDTH: 316px; HEIGHT: 26px"><asp:button id="But_Submit" runat="server" Text="Submit"></asp:button>&nbsp;</TD>
					<TD style="WIDTH: 248px; HEIGHT: 26px" colSpan="2"><asp:label id="Label2" runat="server" CssClass="myvalidation"></asp:label>&nbsp;</TD>
				</TR>
			</TABLE>
			</TR><TR>
				<TD style="WIDTH: 149px; HEIGHT: 18px" colSpan="4">&nbsp;</TD>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:validationsummary id="ValidationSummary1" runat="server" CssClass="myvalidation" Width="292px" Height="26px"
					ForeColor=" " BorderStyle="Dotted"></asp:validationsummary><TD style="WIDTH: 300px; HEIGHT: 15px" colSpan="2"></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 149px; HEIGHT: 23px"></TD>
				<TD style="WIDTH: 274px; HEIGHT: 23px"></TD>
				<TD style="WIDTH: 300px; HEIGHT: 23px" colSpan="2"></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 562px; HEIGHT: 24px" colSpan="4"></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 787px; HEIGHT: 20px" colSpan="4"></TD>
			</TR>
			</TABLE></form>
	</body>
</HTML>
