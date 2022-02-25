using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using LoremIpsum.Models;

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


        internal List<ContentTextModel> GetAllTranslatedPageContent(string pageName, string languageCode)
        {
            List<ContentTextModel> content = new List<ContentTextModel>();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(@"SELECT text, Content.name AS contentName FROM Translation 
                                                JOIN Content ON translation.contentID = Content.id
                                                JOIN Page ON Content.pageID = Page.id
                                                WHERE Page.name = @pageName AND Translation.languageCode = @languageCode
                                                ORDER BY Content.id");
            cmd.Parameters.AddWithValue("@pageName", pageName);
            cmd.Parameters.AddWithValue("@languageCode", languageCode);
            cmd.Connection = con;

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                content.Add(new ContentTextModel(
                    reader["contentName"].ToString(),
                    reader["text"].ToString()
                    ));
            }
            con.Close();

            return content;
        }


        internal List<LanguageModel> GetAllLanguages()
        {
            List<LanguageModel> languages = new List<LanguageModel>();


            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(@"SELECT name, code, imageURL FROM Language");
            cmd.Connection = con;

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                languages.Add(new LanguageModel(
                    reader["name"].ToString(),
                    reader["code"].ToString(),
                    reader["imageURL"].ToString()
                    ));
            }
            con.Close();

            return languages;
        }
    }
}
