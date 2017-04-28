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

namespace career
{
	/// <summary>
	/// Summary description for studreg21.
	/// </summary>
	public class studreg21 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Label Label1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here

            //string petitionURL = "https://www.surveymonkey.com/s/L85SPBW?c=" + Request.QueryString[0].ToString();
            //Response.AddHeader ("Refresh", "15;URL=Main.aspx");
			Response.AddHeader ("Refresh", "3;URL=Main2.aspx");
			

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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
