using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Services;
using System.Net.Configuration;
using System.Net.Mail;
using System.Net;
using System.IO;

public partial class EmailSend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string SendEmail(string name, string email, string phone, string address)
    {
        SmtpSection smtpSection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
        using (MailMessage mm = new MailMessage(smtpSection.From, smtpSection.From))
        {
            mm.Subject = "New Inquiry";
            mm.Body = PopulateBody(name,email,phone,address);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = smtpSection.Network.Host;
            smtp.EnableSsl = true;
            NetworkCredential networkCred = new NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
            smtp.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
            smtp.Credentials = networkCred;
            smtp.Port = smtpSection.Network.Port;
            smtp.Send(mm);
        }

        return "Email sent.";
    }
    [WebMethod]
    public static string SendContact(string name, string email, string message)
    {
        SmtpSection smtpSection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
        using (MailMessage mm = new MailMessage(smtpSection.From, smtpSection.From))
        {
            mm.Subject = "Contact Us Inquiry";
            mm.Body = PopulateBodyContact(name, email, message);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = smtpSection.Network.Host;
            smtp.EnableSsl = true;
            NetworkCredential networkCred = new NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
            smtp.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
            smtp.Credentials = networkCred;
            smtp.Port = smtpSection.Network.Port;
            smtp.Send(mm);
        }

        return "Email sent.";
    }
    private static string PopulateBody(string name, string email, string phone, string address)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/EmailTemplate/EmailTemplate.html")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{Name}", name);
        body = body.Replace("{Email}", email);
        body = body.Replace("{Phone}", phone);
        body = body.Replace("{Address}", address);
        return body;
    }
    private static string PopulateBodyContact(string name, string email, string message)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/EmailTemplate/EmailContactTemplate.html")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{Name}", name);
        body = body.Replace("{Email}", email);
        body = body.Replace("{Message}", message);
        return body;
    }
}
