using System;
using System.Collections;
using System.ComponentModel;
using System.Web;
using System.Web.SessionState;

namespace career 
{
	/// <summary>
	/// Summary description for Global.
	/// </summary>
	public class Global : System.Web.HttpApplication
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		public Global()
		{
			InitializeComponent();
		}	
		
		protected void Application_Start(Object sender, EventArgs e)
		{// Set our user count to 0 when we start the server 
			Application["ActiveUsers"] = 0;

		}
 
		protected void Session_Start(Object sender, EventArgs e)
		{
			//Session.Timeout = 30;
			Session["Start"] = DateTime.Now ;
			Application.Lock() ;
			Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) + 1 ;
			Application.UnLock();
		}

		protected void Application_BeginRequest(Object sender, EventArgs e)
		{
			if (Request.Path.IndexOf('\\') >= 0 ||
				System.IO.Path.GetFullPath(Request.PhysicalPath) != Request.PhysicalPath) 
			{
				throw new HttpException(404, "not found");
			}
		}

		protected void Application_EndRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_Error(Object sender, EventArgs e)
		{

		}

		protected void Session_End(Object sender, EventArgs e)
		{
			Application.Lock(); 
			if(Convert.ToInt32(Application["ActiveUsers"])>0)
			Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) - 1; 
			Application.UnLock();

		}

		protected void Application_End(Object sender, EventArgs e)
		{

		}
			
		#region Web Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.components = new System.ComponentModel.Container();
		}
		#endregion
	}
}

