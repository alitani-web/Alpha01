using System;
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

namespace career
{
	/// <summary>
	/// Summary description for Announcements.
	/// </summary>
	public class Announcements : System.Web.UI.Page
	{
		protected System.Data.SqlClient.SqlConnection conn;
		protected System.Web.UI.WebControls.DataList dl;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.HtmlControls.HtmlForm Form1;
		protected System.Data.SqlClient.SqlCommand cmdann;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			conn.Open();
			SqlDataAdapter da=new SqlDataAdapter();
			DataSet ds=new DataSet();
			da.SelectCommand=cmdann;
			da.Fill(ds);
			dl.DataSource=ds.Tables[0];
			dl.DataBind();
			conn.Close();
			if(ds.Tables[0].Rows.Count==0)
			{
			
				Label1.Visible=true	;		}
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
			this.conn = new System.Data.SqlClient.SqlConnection();
			this.cmdann = new System.Data.SqlClient.SqlCommand();
			// 
			// conn
			// 
			this.conn.ConnectionString = "workstation id=WEBFEA;packet size=4096;integrated security=SSPI;data source=WEBFE" +
				"A;persist security info=False;initial catalog=careerNEW";
			// 
			// cmdann
			// 
			this.cmdann.CommandText = "[getannouncement]";
			this.cmdann.CommandType = System.Data.CommandType.StoredProcedure;
			this.cmdann.Connection = this.conn;
			this.cmdann.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, false, ((System.Byte)(0)), ((System.Byte)(0)), "", System.Data.DataRowVersion.Current, null));
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
