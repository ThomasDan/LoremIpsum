using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace LoremIpsum.DAL
{
    internal class DBManager
    {
        private readonly IConfiguration configuration;
        private readonly string connectionString;
        internal DBManager(IConfiguration _configuration)
        {
            this.configuration = _configuration;
            connectionString = configuration.GetConnectionString("DBContext");
        }

        internal string GetTranslatedContentText(string pageName, string contentName, string languageCode)
        {
            string text = "";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(@"SELECT text FROM Translation 
                                                JOIN Content ON translation.contentID = Content.id
                                                JOIN Page ON Content.pageID = Page.id
                                                WHERE Page.name = @pageName AND Content.name = @contentName AND Translation.languageCode = @languageCode");
            cmd.Parameters.AddWithValue("@pageName", pageName);
            cmd.Parameters.AddWithValue("@contentName", contentName);
            cmd.Parameters.AddWithValue("@languageCode", languageCode);

            con.Open();
            text = (string)cmd.ExecuteScalar();
            con.Close();
            return text;
        }
    }
}
