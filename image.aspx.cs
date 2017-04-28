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
	/// Summary description for image.
	/// </summary>
	public class image : System.Web.UI.Page
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			//Session["CheckCode"] = this.CreateRandomCode(8);
			Session.Timeout=50;
			CreateImage(Session["CheckCode"].ToString()) ;// Put user code to initialize the page here
		}


		private void CreateImage(string checkCode)
		{
      
			System.Drawing.Bitmap image = new System.Drawing.Bitmap(Convert.ToInt32(Math.Ceiling((double)(checkCode.Length * 17))), 30);
			Graphics g = Graphics.FromImage(image);
        

			try
			{
           
				Random random = new Random();
				g.Clear(Color.FromArgb(198,96,30));//#c6601e
            
				/*  for (int i = 0; i < 5; i++)
				  {
					  int x1 = random.Next(image.Width);
					  int x2 = random.Next(image.Width);
					  int y1 = random.Next(image.Height);
					  int y2 = random.Next(image.Height);

					  g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
				  }
				  */

				Font font = new System.Drawing.Font("Comic Sans MS", 16, System.Drawing.FontStyle.Bold);
				// System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.Black, Color.DarkRed, 1.2f, true);
				g.DrawString(checkCode, font, new SolidBrush(Color.Yellow), 2, 2);

            
				for (int i = 0; i < 40; i++)
				{
					int x = random.Next(image.Width);
					int y = random.Next(image.Height);

					image.SetPixel(x, y,Color.IndianRed);
				}
            
				g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);

				System.IO.MemoryStream ms = new System.IO.MemoryStream();
				image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
				Response.ClearContent();
				Response.ContentType = "image/Gif";
				Response.BinaryWrite(ms.ToArray());
			}
			finally
			{
				g.Dispose();
				image.Dispose();
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
