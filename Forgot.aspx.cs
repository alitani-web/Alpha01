using System;
using System.Web.Mail;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace career
{
	/// <summary>
	/// Summary description for Forgot.
	/// </summary>
	public class Forgot : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Label Label3;
		protected System.Web.UI.HtmlControls.HtmlForm Form1;
		protected System.Web.UI.WebControls.Panel Panel1;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.TextBox TxtEmail;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.TextBox TxtIDNum;
		protected System.Web.UI.WebControls.Button BtnSend;
		protected System.Web.UI.WebControls.HyperLink HyperLink2;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Data.SqlClient.SqlConnection conn;
		protected System.Data.SqlClient.SqlCommand cmdSend;
		protected System.Web.UI.WebControls.TextBox txtcpass;
		protected System.Web.UI.WebControls.TextBox txtpass;
		protected System.Web.UI.WebControls.CompareValidator CompareValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator5;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator4;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.Label lblnote;
		protected System.Data.SqlClient.SqlCommand cmdupdatepass;
		protected System.Data.SqlClient.SqlConnection conn2;
		protected string MyConn; 
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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
			this.conn = new System.Data.SqlClient.SqlConnection();
			this.cmdSend = new System.Data.SqlClient.SqlCommand();
			this.cmdupdatepass = new System.Data.SqlClient.SqlCommand();
			this.conn2 = new System.Data.SqlClient.SqlConnection();
			this.BtnSend.Click += new System.EventHandler(this.BtnSend_Click);
			// 
			// conn
			// 
			this.conn.ConnectionString = ((string)(configurationAppSettings.GetValue("conn2", typeof(string))));
			// 
			// cmdSend
			// 
			this.cmdSend.CommandText = "dbo.[SendPass]";
			this.cmdSend.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdSend.Connection = this.conn;
			this.cmdSend.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdSend.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Semail", System.Data.SqlDbType.NVarChar, 30));
			this.cmdSend.Parameters.Add(new System.Data.SqlClient.SqlParameter("@SIDNum", System.Data.SqlDbType.NVarChar, 30));
			// 
			// cmdupdatepass
			// 
			this.cmdupdatepass.CommandText = "dbo.[UpdateStudentPassNew]";
			this.cmdupdatepass.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdupdatepass.Connection = this.conn2;
			this.cmdupdatepass.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.cmdupdatepass.Parameters.Add(new System.Data.SqlClient.SqlParameter("@id", System.Data.SqlDbType.BigInt, 8));
			this.cmdupdatepass.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pass", System.Data.SqlDbType.VarChar, 50));
			// 
			// conn2
			// 
			this.conn2.ConnectionString = ((string)(configurationAppSettings.GetValue("conn2", typeof(string))));
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void BtnSend_Click(object sender, System.EventArgs e)
		{
			int ck=0;
			String x = Request.Form.ToString();
			for(int i=0;i<x.Length;i++)	
			{
				int y=x.IndexOf("'",0);
				//int z=x.IndexOf("<",0);
				if(y > 0)
				{
					lblnote.Text="Don't Try To hack me!";
					ck=1;
					break;
					  	
				}
				
			}
	
			if (ck!=1)
			{
				lblnote.Text="";

				SHA256Managed sha = new  SHA256Managed();
				string pass = Convert.ToBase64String(sha.ComputeHash(Encoding.Default.GetBytes(txtcpass.Text.ToString())));
			
			
			cmdSend.Parameters["@Semail"].Value=Convert.ToString(TxtEmail.Text.Trim());
			cmdSend.Parameters["@SIDNum"].Value=Convert.ToString(TxtIDNum.Text.Trim());
			
			
			conn.Open();
			SqlDataReader drSendPass = cmdSend.ExecuteReader();
			if (drSendPass.Read())
			{
				try
				{
					FEALib.library sendm=new FEALib.library();
					sendm.sendemail("FAFSCareerLostLogin@aub.edu.lb","fafs.careers@aub.edu.lb","","","FAFS Career website login information",
						"user:" + drSendPass.GetValue(4).ToString()+ " has reset his password.\nID"+ drSendPass.GetValue(0).ToString()
						+"\n\nRegards, \nFAFS Career Website \n\nP.S:This is an automated message, Please Do Not Reply\n\n ");
					
					sendm.sendemail("FAFSCareerLostLogin@aub.edu.lb","","",TxtEmail.Text,"FAFS Career website login information",
						"Dear "+drSendPass.GetValue(4).ToString()+",\n\nPlease note that your password has been reset at "+DateTime.Now
						+".\n\nRegards, \nFAFS Career Website \n\nP.S:This is an automated message, Please Do Not Reply\n\n ");
					

					conn2.Open();
					cmdupdatepass.Parameters["@id"].Value=int.Parse(drSendPass.GetValue(0).ToString());
					cmdupdatepass.Parameters["@pass"].Value=pass;
					int aff=cmdupdatepass.ExecuteNonQuery();
					if(aff>0)
					lblnote.Text="your username:"+drSendPass.GetValue(1).ToString()+" and your password was reset.";
					else
						lblnote.Text="password was not reset! error occured.";
					TxtEmail.Text="";TxtIDNum.Text="";

					conn2.Close();
				}
				catch(Exception ex)
				{
					lblnote.Text="an error has occured. Administrator was notified.";
					FEALib.library sendm=new FEALib.library();
					sendm.sendemail("FAFSCareerError@aub.edu.lb","","","fafs.careers@aub.edu.lb","FAFS Career error in forgot pass",ex.ToString());

				}
				

			}
			else
			{lblnote.Text="Invalid Email or ID Number or Account inactive";}
			}
			else{lblnote.Text="Don't Try To hack me!";}
		}

		
	}
}
