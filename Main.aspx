<%@ Page language="c#" culture="en-GB" Codebehind="Main.aspx.cs" AutoEventWireup="false" Inherits="career.Main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>FAFS Career Center - Faculty of Agricultural and Food Sciences</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="fafs_files/style.css" type="text/css">
			<script language="Javascript" type="text/javascript">

//window.onload = maxWindow;

function maxWindow()
{
window.moveTo(0,0);


if (document.all)
{
top.window.resizeTo(screen.availWidth,screen.availHeight);
}

else if (document.layers||document.getElementById)
{
if (top.window.outerHeight<screen.availHeight||top.window.outerWidth<screen.availWidth)
{
top.window.outerHeight = screen.availHeight;
top.window.outerWidth = screen.availWidth;
}
}
}


function opencompreg(){
forgotwindow=window.open("./CompReg.aspx","CompanyReg","location=0,resizable=0;status=0,scrollbars=0,menubar=0,width=600,height=340");
}

function openalumni(){
alumniwindow=window.open("./findalumni.aspx","FindAlumni","location=0,resizable=1;status=0,scrollbars=1,menubar=0,width=550,height=400");
}



			</script>
			<link rel="stylesheet" href="fafs_files/nivo-slider.css" type="text/css" media="screen">
				<script src="fafs_files/jquery.js" type="text/javascript"></script>
				<script src="fafs_files/jquery.nivo.slider.pack.js" type="text/javascript"></script>
				<script src="fafs_files/browser.detect.js" type="text/javascript"></script>
				<link rel="stylesheet" href="fafs_files/menu/drop_down.css" type="text/css">
					<script src="fafs_files/menu/drop_down.js" type="text/javascript"></script>
	</HEAD>
	<body>
		<div id="popup" style="DISPLAY:none">
			<div style="Z-INDEX:2001;POSITION:absolute;TEXT-ALIGN:center;DISPLAY:block;TOP:0px;LEFT:0px">
				<div style="POSITION:relative;TEXT-ALIGN:left;PADDING-BOTTOM:20px;BACKGROUND-COLOR:#fff;MARGIN:15% auto 0px;PADDING-LEFT:20px;WIDTH:270px;PADDING-RIGHT:20px;FONT-FAMILY:verdana;PADDING-TOP:10px;border-radius:7px">
					<div style="COLOR:#537749;FONT-SIZE:12px;FONT-WEIGHT:bold">FAFS Announcements</div>
					<div onclick="document.getElementById('popup').style.display='none';" style="Z-INDEX:10;POSITION:absolute;PADDING-BOTTOM:1px;BACKGROUND-COLOR:#ccc;PADDING-LEFT:3px;PADDING-RIGHT:3px;DISPLAY:inline;COLOR:#537749;FONT-SIZE:10px;TOP:10px;CURSOR:pointer;RIGHT:10px;FONT-WEIGHT:bold;PADDING-TOP:1px;border-radius:2px">X</div>
					<div style="HEIGHT:auto;OVERFLOW:hidden">
						<div style="PADDING-BOTTOM:10px;BACKGROUND-COLOR:#d7d7d7;MARGIN-TOP:10px;PADDING-LEFT:10px;WIDTH:250px;PADDING-RIGHT:10px;FLOAT:left;HEIGHT:auto;MARGIN-RIGHT:10px;PADDING-TOP:10px;border-radius:7px">
							<div><a href="http://www.aub.edu.lb/sao/cps/OSED/Pages/osed.aspx" target="_blank" style="COLOR:#537749;FONT-SIZE:12px;FONT-WEIGHT:bold;TEXT-DECORATION:none">October 
									Special Employment Days</a></div>
							<div style="MARGIN-TOP:10px;COLOR:#777;FONT-SIZE:11px">The Career and Placement 
								Services at the Office of Student Affairs cordially invites you to the "October 
								Special Employment Days," <b>October 3 - November 4, 2011, Mondays to Fridays.</b></div>
							<div style="TEXT-ALIGN:right;MARGIN-TOP:10px"><a href="http://www.aub.edu.lb/sao/cps/OSED/Pages/osed.aspx" target="_blank" style="COLOR:#537749;FONT-SIZE:11px;TEXT-DECORATION:none">more</a></div>
						</div>
						<div style="PADDING-BOTTOM:10px;BACKGROUND-COLOR:#d7d7d7;MARGIN-TOP:10px;PADDING-LEFT:10px;WIDTH:250px;PADDING-RIGHT:10px;DISPLAY:none;FLOAT:left;HEIGHT:150px;MARGIN-RIGHT:10px;PADDING-TOP:10px;border-radius:7px">
							<div style="COLOR:#537749;FONT-SIZE:12px">title</div>
							<div style="MARGIN-TOP:10px;COLOR:#777;FONT-SIZE:11px">description.</div>
						</div>
					</div>
				</div>
			</div>
			<div style="Z-INDEX:2000;POSITION:absolute;FILTER:alpha(opacity=70);BACKGROUND-COLOR:#d7d7d7;DISPLAY:block;TOP:0px;LEFT:0px;opacity:0.7"></div>
		</div>
		<form id="form1" method="post" runat="server">
			<table align="center" border="0" cellpadding="0" cellspacing="0" width="992" style="BORDER-BOTTOM:#ccc 1px solid; BORDER-LEFT:#ccc 1px solid; BORDER-TOP:#ccc 1px solid; BORDER-RIGHT:#ccc 1px solid">
				<tbody>
					<tr>
						<td colspan="2"><img style="WIDTH:100%" src="fafs_files/top_fafs.gif" alt="" USEMAP="#top_fafs" border="0"><MAP NAME="top_fafs"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/banner" COORDS="659,-2, 709,19"><AREA SHAPE="RECT" HREF="http://moodle.aub.edu.lb/" COORDS="562,-2, 637,21"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/main/aub_files/Pages/contacts.aspx" COORDS="458,0, 541,20"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/main/admin-services/1stop" COORDS="396,-1, 439,19"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/main/aub_files/Pages/websites.aspx" COORDS="343,-1, 375,19"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/imail" COORDS="282,1, 323,18"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/" COORDS="821,35, 977,98"><AREA SHAPE="RECT" HREF="http://www.aub.edu.lb/fafs" COORDS="67,25, 137,99"></MAP></td>
					</tr>
					<tr>
						<td valign="top" width="194" bgcolor="#e8e3dd"><table border="0" cellpadding="0" cellspacing="0" width="194">
								<tbody>
									<tr>
										<td valign="top">
											<ol id="nav">
												<li>
													<a href="http://www.aub.edu.lb/fafs/Pages/index.aspx">Home</a></li>
												<li>
													<a class="parent" href="http://www.aub.edu.lb/fafs/about/Pages/index.aspx">About 
														FAFS</a>
											<ol>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/MessagefromtheDean.aspx">Message 
														from the Dean</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/History.aspx">History</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/MissionandVision.aspx">Mission and 
														Vision</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/Accreditation.aspx">Accreditation</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/StaffDirectory.aspx">Staff 
														Directory</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/AnnualReports.aspx">Annual Reports</a></li>
												<li>
													<a href="http://www.aub.edu.lb/fafs/about/Pages/ResearchReports.aspx">Research 
														Reports</a></li>
											</ol>
											</li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/Admissions/Pages/index.aspx">Admissions</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Admissions/Pages/AdmissionRequirements.aspx">Admission 
													Requirements</a></li>
											<li>
												<a href="http://www.aub.edu.lb/admissions/applications/Pages/applications_2009-10.aspx">
													Applications</a></li>
											<li>
												<a href="http://www.aub.edu.lb/registrar/Pages/catalogue.aspx">University Catalogue</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Admissions/Pages/FAQ.aspx">FAQ</a></li>
											</ol> </li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/Academics/Pages/index.aspx">Academics</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/UndergraduateStudies.aspx">Undergraduate 
													Studies</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/GraduateStudies.aspx">Graduate 
													Studies</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/Departments.aspx">Departments</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/Courses.aspx">Courses</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/FacultyDirectory.aspx">Faculty 
													Directory</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/RulesandRegulations.aspx">Rules 
													and Regulations</a></li>
											</ol> </li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/ResearchandOutreach/Pages/index.aspx">
													Research and Outreach</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/ResearchandOutreach/Pages/ResearchCenters.aspx">
													Research Centers</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/ResearchandOutreach/Pages/ResearchFacilities.aspx">
													Research Facilities</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/ResearchandOutreach/Pages/Outreach.aspx">Outreach</a></li>
											</ol> </li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/services.aspx">Services</a></li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/StudentResources/Pages/index.aspx">
													Student Resources</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/StudentResources/Pages/SocietiesandClubs.aspx">Societies 
													and Clubs</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/StudentResources/Pages/PetitionsandForms.aspx">Petitions 
													and Forms</a></li>
											<li>
												<a href="http://moodle.aub.edu.lb/">Moodle</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/StudentResources/Pages/StudentAwards.aspx">Student 
													Awards</a></li>
											</ol> </li>
											<li>
												<a class="active" href="http://fafsweb.aub.edu.lb/career/">FAFS Career Center</a></li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/FacultyResources/Pages/index.aspx">
													Faculty Resources</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/FacultyResources/Pages/FacultyAcademicManual.aspx">
													Faculty Academic Manual</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/FacultyResources/Pages/usefulforms.aspx">Useful 
													Forms</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Academics/Pages/FacultyDirectory.aspx">Faculty 
													Directory</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/FacultyResources/Pages/FacultyAwards.aspx">Faculty 
													Awards</a></li>
											</ol> </li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/alumni.aspx">Alumni and Friends</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/gift.aspx">Make a Gift to FAFS</a></li>
											<li>
												<a class="parent" href="http://www.aub.edu.lb/fafs/employment/Pages/index.aspx">Employment</a>
												<ol>
											<li>
												<a href="http://www.aub.edu.lb/fafs/employment/Pages/FacultyPositions.aspx">Faculty 
													Positions</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/employment/Pages/RAPositions.aspx">RA Positions</a></li>
											</ol> </li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/news_events.aspx">News and Events</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/links.aspx">Useful Links</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/sitemap.aspx">Site Map</a></li>
											<li>
												<a href="http://www.aub.edu.lb/fafs/Pages/contact.aspx">Contact Us</a></li>
											</ol> 
											<!-- 
  The following code is needed for webkit based browsers (Chrome and Safari).
  Those browsers will mess up the look of the website and we use this code
  to fix this by just extending the menu a little further. To avoid complications,
  we only do so in the targeted browsers.
-->
											<span id="menu_extender"></span>
											<script type="text/javascript">
  if(BrowserDetect.browser == 'Chrome' || BrowserDetect.browser == 'Safari') {
    $('#menu_extender').html('&nbsp;<br />&nbsp;<br />');
  }
											</script>
										</td>
									</tr>
								</tbody></table>
						</td>
						<td rowspan="2" valign="top" width="795">
							<table border="0" cellpadding="0" cellspacing="0" width="796">
								<tbody>
									<tr id="bread">
										<td colspan="4" class="textbrown3" bgcolor="#e8e3dd" height="20"><a href="http://www.aub.edu.lb/">AUB 
												Website</a> &gt; <a href="http://www.aub.edu.lb/fafs">Faculty of Agricultural 
												and Food Sciences</a> &gt; FAFS Career Center
										</td>
									</tr>
									<tr>
										<td width="15">&nbsp;</td>
										<td width="1"><img src="fafs_files/spacer.gif" alt="" height="1" width="1"></td>
										<td width="223">&nbsp; 
											<!--
<img src="fafs_files/news_events_big.gif" 
alt="News and Events" height="12" width="138">
-->
										</td>
									</tr>
									<tr>
										<td><img src="fafs_files/spacer.gif" alt="" height="1" width="15"></td>
										<td valign="top" width="556" class="normal">
											<br>
											<br>
											<div id="slider">
												<a href="http://www.dargroup.com" target="_blank" title="Silver supporter: Dar Al Handasah">
													<img src="fafs_files/slider_images/1.jpg" alt=""> </a><a href="http://www.averda.com" target="_blank" title="Platinum supporter: Averda">
													<img src="fafs_files/slider_images/2.jpg" alt=""> </a><a href="http://www.tanmia.com" target="_blank" title="Platinum supporter: Tanmia">
													<img src="fafs_files/slider_images/3.jpg" alt=""> </a>
											</div>
											<br>
											<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:750,
		pauseTime:5000,
		directionNav:false, //Next & Prev
		directionNavHide:true, //Only show on hover
		controlNav:false, //1,2,3...
		keyboardNav:false, //Use left & right arrows
		pauseOnHover:false, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
											</script>
											<br>
											<div align="justify" style="PADDING-RIGHT: 15px">
												<div class="titleW">Welcome!</div>
												<br>
												Your Career, it Starts Today<br>
												<br>
												Welcome to the Faculty of Agricultural and Food Sciences (FAFS) Career 
												Development Center!<br>
												<br>
												Whether you are a FAFS student or alumnus, the FAFS Career Development Center 
												will help guide you to your future careers. The Center is dedicated to helping 
												students and alumni connect to professional excellence, while assisting 
												companies to meet their evolving human resource needs.<br>
												<br>
												At FAFS we strive to:<br>
												<ul style="MARGIN-TOP: 5px; MARGIN-BOTTOM: 5px">
													<li>
													Empower FAFS students and alumni by providing career counseling to help them 
													pinpoint their best personal career paths
													<li>
													Connect FAFS alumni and employers with FAFS for career placement opportunities
													<li>
														Nurture and enhance ties with esteemed companies interested in the recruitment 
														and employment of FAFS graduates and alumni</li>
												</ul>
												We recommend to you to explore our website to know more about our services and 
												how we can support you.<br>
												<br>
											</div>
										</td>
										<td valign="top">
											<table>
												<tbody>
													<tr>
														<td bgcolor="#ecedda" height="400">
															<img src="fafs_files/spacer.gif" alt="" height="1" width="1">
														</td>
													</tr>
												</tbody>
											</table>
										</td>
										<td class="txtgreen" valign="top" width="223" align="center">
											<!-- LOGIN -->
											<table width="200" class="box_table">
												<tr>
													<td colspan="2" align="center" class="normal">
														<h3>Login</h3>
													</td>
												</tr>
												<tr>
													<td class="normal" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;Username</td>
													<td class="normal" valign="top"><asp:textbox id="txtlogin" runat="server" MaxLength="15" Width="100"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="X-Small" ControlToValidate="txtlogin"
															ErrorMessage="*">*</asp:requiredfieldvalidator></td>
												</tr>
												<tr>
													<td class="normal" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;Password</td>
													<td class="normal" valign="top"><asp:textbox id="txtpassword" runat="server" TextMode="Password" MaxLength="20" Width="100"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" Font-Size="X-Small" ControlToValidate="txtpassword"
															ErrorMessage="*">*</asp:requiredfieldvalidator></td>
												</tr>
												<tr>
													<td class="normal" valign="top">&nbsp;</td>
													<td class="normal" valign="top"><asp:button id="btnLogin1" runat="server" Text="Login"></asp:button></td>
												</tr>
												<tr>
													<td class="normal" colspan="2" align="center" valign="top">
														<asp:label id="lblregnote" runat="server" CssClass="validation" ForeColor="Red"></asp:label><br>
														<asp:hyperlink id="HyperLink1" runat="server" CssClass="clSubb1" Font-Italic="True" Target="_blank"
															NavigateUrl="forgot.aspx">Forgot login info? Click here</asp:hyperlink><br>
														<br>
														<a class="c1Subb1" target="_blank" href="http://www.aub.edu.lb/sao/cps/skill/Pages/index.aspx">
															Career Development Tips</a>
													</td>
												</tr>
											</table>
											<br>
											<br>
											<br>
											<br>
											<br>
											<!-- REGISTER -->
											<table width="200" class="box_table">
												<tr>
													<td colspan="2" align="center" class="normal">
														<h3>Register</h3>
													</td>
												</tr>
												<tr>
													<td class="normal" valign="top" align="center" width="100">Register as&nbsp;</td>
													<td class="normal" valign="top" align="left">
														<asp:dropdownlist id="ddlChoice" runat="server" AutoPostBack="True">
															<asp:ListItem Value="Register" Selected="True">Select</asp:ListItem>
															<asp:ListItem Value="Student">Last year Student</asp:ListItem>
															<asp:ListItem Value="Alumni">Alumni</asp:ListItem>
															<asp:ListItem Value="Masters">Masters Student</asp:ListItem>
														</asp:dropdownlist><br>
														<!-- 
			Note: We can't used the button to redirect, since then we'll have to change 
		          the code of the registration page to handle the case where the user
		          doesn't select any option above. (We can't change the options in the
		          Drop down list since we don't have the code for this).
		-->
														<!--
		<br />
		<asp:button id="RegisterButton" runat="server" Text="Register" CausesValidation="False"></asp:button><br />
		-->
														<br>
													</td>
												</tr>
												<tr>
													<td colspan="2" align="center" class="normal">
														<asp:label id="lblusers" CssClass="clSubb" Runat="server">User(s) currently online: </asp:label><span class="clSubb" id="sp"><%=Application["ActiveUsers"]%></span><br>
														<br>
														<br>
														<br>
														<br>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!--
<tr>
<td colspan="3" bgcolor="#ecedda"><img
src="fafs_files/spacer.gif" alt="" height="1" width="1"></td>
<td><img src="fafs_files/spacer.gif" alt="" height="1" width="223"></td>
</tr>
-->
								</tbody></table>
						</td>
					</tr>
					<tr>
						<td colspan="3" height="24" align="center" class="aubFooter">
							<center>
								<a href="http://www.aub.edu.lb/main/aub_files/Pages/contacts.aspx">Contact us</a>
								<a href="http://www.aub.edu.lb/main/employment/Pages/index.aspx">Jobs</a> <a href="http://faq.aub.edu.lb/" target="_blank">
									FAQs</a> <a href="http://www.aub.edu.lb/main/aub_files/Pages/disclaimer.aspx">Disclaimer</a>
								<a href="http://www.aub.edu.lb/main/aub_files/Pages/copyright.aspx">Copyright</a>
							</center>
						</td>
					</tr>
				</tbody></table>
		</form>
		<div align="center" class="normal">
			<a href="http://www.aub.edu.lb/">AUB</a> claims no <a href="http://www.aub.edu.lb/main/aub_files/Pages/disclaimer.aspx">
				responsibility</a> for the material published on its site. All photographs 
			and images are <a href="http://www.aub.edu.lb/main/aub_files/Pages/copyright.aspx">copyright</a>
			© American University of Beirut unless otherwise noted.<br>
			If you have any comments or suggestions about AUB, <a href="http://www.aub.edu.lb/main/aub_files/Pages/contacts.aspx">
				please contact us</a>. Technical contact: <a href="mailto:fafs.careers@aub.edu.lb">
				fafs.careers@aub.edu.lb</a>
			<br>
			<br>
			Last updated:
			<%=dt.ToString()%>
			- <a href="administrator/Login1.aspx">Admin Login</a> - Developed by <a href="http://webfea.aub.edu.lb/fea/">
				FEA</a> (<a href="http://www.aub.edu.lb/fafs/Pages/careercenter.aspx"><strong>Credits</strong></a>). 
			Customized for <a href="http://www.aub.edu.lb/fafs/">FAFS</a> by <a href="http://www.softkube.com/">
				SOFTKUBE</a>
		</div>
	</body>
</HTML>
