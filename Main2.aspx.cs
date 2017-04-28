using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;

using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Web.UI;

namespace career
{
	/// <summary>
	/// Summary description for Main.
	/// </summary>
	public class Main2 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button btnLogin;
		protected System.Data.SqlClient.SqlCommand cmdloginstudents;
		protected System.Data.SqlClient.SqlConnection conn;
		protected System.Data.SqlClient.SqlCommand cmdann;
		protected System.Data.SqlClient.SqlCommand cmdfindcount;
		protected System.Data.SqlClient.SqlCommand cmdlogincomp;
		protected System.Data.SqlClient.SqlCommand cmdresetatt;
		protected System.Data.SqlClient.SqlCommand cmdstat;
		protected System.Data.SqlClient.SqlCommand cmdbfattack;
		protected System.Web.UI.WebControls.Image bimage;
		protected System.Web.UI.HtmlControls.HtmlImage im3;
		protected System.Web.UI.HtmlControls.HtmlImage im5;
		public DateTime dt;
		protected System.Web.UI.WebControls.Calendar cale;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.Label lblupcoming;
		protected System.Web.UI.WebControls.Label lup;
		protected System.Web.UI.WebControls.Label lblinterns;
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.Label lblprevious;
		protected System.Web.UI.WebControls.Label Label3;
		protected System.Web.UI.WebControls.Image Image3;
		protected System.Web.UI.WebControls.Image Image5;
		protected System.Web.UI.WebControls.Image Image1;
		protected System.Web.UI.HtmlControls.HtmlImage Img4;
		protected System.Web.UI.HtmlControls.HtmlImage Img9;
		protected System.Web.UI.HtmlControls.HtmlImage Img10;
		protected System.Web.UI.HtmlControls.HtmlImage Img2;
		protected System.Web.UI.HtmlControls.HtmlImage Img14;
		protected System.Web.UI.HtmlControls.HtmlImage Img6;
		protected System.Web.UI.HtmlControls.HtmlImage Img11;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.HtmlControls.HtmlImage Img15;
		protected System.Web.UI.HtmlControls.HtmlImage Img16;
		protected System.Web.UI.HtmlControls.HtmlImage Img17;
		protected System.Web.UI.HtmlControls.HtmlImage Img19;
		protected System.Web.UI.HtmlControls.HtmlImage Img20;
		protected System.Web.UI.HtmlControls.HtmlImage Img22;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Web.UI.WebControls.Image Image2;
		protected System.Web.UI.HtmlControls.HtmlImage Img8;
		protected System.Web.UI.HtmlControls.HtmlImage Img1;
		protected System.Web.UI.HtmlControls.HtmlImage Img5;
		protected System.Web.UI.HtmlControls.HtmlImage Img7;
		protected System.Web.UI.HtmlControls.HtmlImage Img12;
		protected System.Web.UI.HtmlControls.HtmlImage Img18;
		protected System.Web.UI.HtmlControls.HtmlImage Img13;
		protected System.Web.UI.HtmlControls.HtmlImage Img21;
		protected System.Web.UI.HtmlControls.HtmlImage Img3;
		protected System.Web.UI.HtmlControls.HtmlImage Img23;
		protected System.Web.UI.HtmlControls.HtmlImage Img24;
		protected System.Web.UI.HtmlControls.HtmlImage Img25;
		protected System.Data.SqlClient.SqlCommand cmdgetDiv;
		protected System.Web.UI.WebControls.Button RegisterButton;
		protected System.Web.UI.WebControls.TextBox txtlogin;
		protected System.Web.UI.WebControls.TextBox txtpassword;
		protected System.Web.UI.WebControls.Button btnLogin1;
		protected System.Web.UI.WebControls.Label lblregnote;
		protected System.Web.UI.WebControls.HyperLink HyperLink1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.DropDownList ddlChoice;
		protected System.Web.UI.WebControls.Label lblusers;
		protected DataSet dsHolidays;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			
				
				string sPath;
			sPath = (string) Request.ServerVariables["Path_Translated"];
			dt = File.GetLastWriteTime(sPath );
			
			
			
			try
			{
				lblregnote.Text=Request.QueryString["q"].ToString();
			}
			catch{lblregnote.Text="";}
			
			

			if(!Page.IsPostBack)
			{
				ddlChoice.Items.Clear();
				FEALib.library obj=new FEALib.library();
				obj.binddrops(ddlChoice,cmdgetDiv,"Select","0","division","divid");
			
			}
			
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			System.Configuration.AppSettingsReader configurationAppSettings = new System.Configuration.AppSettingsReader();
			this.cmdloginstudents = new System.Data.SqlClient.SqlCommand();
			this.conn = new System.Data.SqlClient.SqlConnection();
			this.cmdann = new System.Data.SqlClient.SqlCommand();
			this.cmdfindcount = new System.Data.SqlClient.SqlCommand();
			this.cmdlogincomp = new System.Data.SqlClient.SqlCommand();
			this.cmdresetatt = new System.Data.SqlClient.SqlCommand();
			this.cmdstat = new System.Data.SqlClient.SqlCommand();
			this.cmdbfattack = new System.Data.SqlClient.SqlCommand();
			this.cmdgetDiv = new System.Data.SqlClient.SqlCommand();
			// 
			// cmdloginstudents
			// 
			this.cmdloginstudents.CommandText = "[CheckLoginStudents]";
			this.cmdloginstudents.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdloginstudents.Connection = this.conn;
			this.cmdloginstudents.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdloginstudents.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Username", System.Data.SqlDbType.VarChar, 30));
			this.cmdloginstudents.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Password", System.Data.SqlDbType.VarChar, 50));
			// 
			// conn
			// 
			this.conn.ConnectionString = ((string)(configurationAppSettings.GetValue("conn2", typeof(string))));
			// 
			// cmdann
			// 
			this.cmdann.CommandText = "[getannouncement]";
			this.cmdann.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdann.Connection = this.conn;
			this.cmdann.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			// 
			// cmdfindcount
			// 
			this.cmdfindcount.CommandText = "dbo.[checkifreached6]";
			this.cmdfindcount.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdfindcount.Connection = this.conn;
			this.cmdfindcount.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdfindcount.Parameters.Add(new System.Data.SqlClient.SqlParameter("@username", System.Data.SqlDbType.NVarChar, 50));
			this.cmdfindcount.Parameters.Add(new System.Data.SqlClient.SqlParameter("@att", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Output, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			// 
			// cmdlogincomp
			// 
			this.cmdlogincomp.CommandText = "[CheckLoginComp]";
			this.cmdlogincomp.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdlogincomp.Connection = this.conn;
			this.cmdlogincomp.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdlogincomp.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Username", System.Data.SqlDbType.VarChar, 30));
			this.cmdlogincomp.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Password", System.Data.SqlDbType.VarChar, 50));
			// 
			// cmdresetatt
			// 
			this.cmdresetatt.CommandText = "[resetattempts]";
			this.cmdresetatt.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdresetatt.Connection = this.conn;
			this.cmdresetatt.Parameters.Add(new System.Data.SqlClient.SqlParameter("@id", System.Data.SqlDbType.BigInt));
			// 
			// cmdstat
			// 
			this.cmdstat.CommandText = "[stat]";
			this.cmdstat.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdstat.Connection = this.conn;
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Date", System.Data.SqlDbType.VarChar, 10));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Students", System.Data.SqlDbType.BigInt, 8));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Employers", System.Data.SqlDbType.BigInt, 8));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Login", System.Data.SqlDbType.NVarChar, 30));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ldate", System.Data.SqlDbType.DateTime, 8));
			this.cmdstat.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sid", System.Data.SqlDbType.BigInt));
			// 
			// cmdbfattack
			// 
			this.cmdbfattack.CommandText = "[countattempts]";
			this.cmdbfattack.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdbfattack.Connection = this.conn;
			this.cmdbfattack.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdbfattack.Parameters.Add(new System.Data.SqlClient.SqlParameter("@username", System.Data.SqlDbType.NVarChar, 50));
			// 
			// cmdgetDiv
			// 
			this.cmdgetDiv.CommandText = "dbo.[getdivisions]";
			this.cmdgetDiv.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdgetDiv.Connection = this.conn;
			this.cmdgetDiv.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.btnLogin1.Click += new System.EventHandler(this.btnLogin1_Click);
			this.ddlChoice.SelectedIndexChanged += new System.EventHandler(this.ddlChoice_SelectedIndexChanged);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	
		private void btnLogin1_Click(object sender, System.EventArgs e)
		{
			if(Page.IsValid)
			{	
				#region auth
				SHA256Managed sha = new  SHA256Managed();
				string pass = Convert.ToBase64String(sha.ComputeHash(Encoding.Default.GetBytes(txtpassword.Text.ToString())));
				
				lblregnote.Visible=false;
				cmdloginstudents.Parameters["@Username"].Value=txtlogin.Text;
				cmdloginstudents.Parameters["@Password"].Value=pass;
				
				cmdlogincomp.Parameters["@Username"].Value=txtlogin.Text;
				cmdlogincomp.Parameters["@Password"].Value=pass;
				conn.Open();
						
				SqlDataReader drs = cmdloginstudents.ExecuteReader(CommandBehavior.CloseConnection);
						
				if (drs.Read())
				{
									
					FormsAuthentication.RedirectFromLoginPage(txtlogin.Text,false);
					Session["username"]=drs.GetValue(1);
					Session["SID"]=drs.GetValue(0);
					Session["Sname"]=drs.GetValue(4);
					//added role here
					Session["role"]=drs.GetValue(5);
					Session["divid"]=drs.GetValue(6);
					drs.Close();
					conn.Open();
					cmdstat.Parameters["@students"].Value=1;
					cmdstat.Parameters["@Employers"].Value=0;
					cmdstat.Parameters["@Date"].Value=DateTime.Now.Day+"/"+DateTime.Now.Month+"/"+DateTime.Now.Year;
					cmdstat.Parameters["@login"].Value=Session["username"];
					cmdstat.Parameters["@ldate"].Value=DateTime.Now;
					cmdstat.Parameters["@sid"].Value=Convert.ToInt32(Session["SID"].ToString());
					cmdstat.ExecuteNonQuery();

					cmdresetatt.Parameters["@id"].Value=Convert.ToInt32(Session["SID"].ToString());
					cmdresetatt.ExecuteScalar();

					conn.Close();

					Response.Redirect("./StudentsAl/Account.aspx");
				}
						
						

				else 
				{//Label3.Text="in";
					drs.Close();
					conn.Open();
					SqlDataReader drc = cmdlogincomp.ExecuteReader(CommandBehavior.CloseConnection);
					if (drc.Read())
					{
						FormsAuthentication.RedirectFromLoginPage(txtlogin.Text,false);
						Session["username"]=drc.GetValue(1);
						Session["CID"]=drc.GetValue(0);
						Session["Cname"]=drc.GetValue(2);
						//added role here
						Session["role"]=drc.GetValue(3);
						//add email here//removed
						//Session["Cemail"]=drc.GetValue(4);
						drc.Close();
						conn.Open();
						cmdstat.Parameters["@students"].Value=0;
						cmdstat.Parameters["@Employers"].Value=1;
						cmdstat.Parameters["@Date"].Value=DateTime.Now.Day+"/"+DateTime.Now.Month+"/"+DateTime.Now.Year;
						cmdstat.Parameters["@login"].Value=Session["username"];
						cmdstat.Parameters["@ldate"].Value=DateTime.Now;
						cmdstat.Parameters["@sid"].Value=Convert.ToInt32(Session["CID"].ToString());
						cmdstat.ExecuteNonQuery();
						Response.Redirect("./Companies/Account2.aspx");	
							
						conn.Close();
					}
					else
					{
						drc.Close();
						conn.Open();
						cmdbfattack.Parameters["@username"].Value=txtlogin.Text.ToString().Trim();
						cmdbfattack.ExecuteScalar();
								
						conn.Close();

						lblregnote.Text="Invalid Login or Account Inactive.";
						lblregnote.Visible=true;
					}
							
				}
				//check if account was disabled
				try
				{
					conn.Open();

					cmdfindcount.Parameters["@username"].Value=txtlogin.Text;
					cmdfindcount.ExecuteScalar();
				
					if(Convert.ToInt16(cmdfindcount.Parameters["@att"].Value)==6)
					{
						lblregnote.Text="Your account was disabled, contact webmaster";
					//	career.Administrator.sendmail s1= new career.Administrator.sendmail();
					//	s1.sendemail("fafs.careers@aub.edu.lb","","","fafs.careers@aub.edu.lb","Account inactivated","The Account: "+txtlogin.Text+" has been inactivated due to several login attempts.\n\nRegards\nFAFS Career Website","");
					}
					conn.Close();
				}
				catch{}
				#endregion
			
			}
			

					
		}

		

		

		

		private void RegisterButton_Click(object sender, System.EventArgs e)
		{
			//Not used for now. Check comment in the ASPX file.
		}

		private void ddlChoice_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Session["Division"]=ddlChoice.SelectedItem.Text;
			Session["divid"]=ddlChoice.SelectedItem.Value;
			Response.Redirect("studentreg.aspx");
		}

		

		

		
		


		
	}
}
