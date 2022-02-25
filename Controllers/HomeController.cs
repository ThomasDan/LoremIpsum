using LoremIpsum.Models;
using LoremIpsum.Models.ViewModels;
using LoremIpsum.DAL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace LoremIpsum.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration configuration;

        public HomeController(IConfiguration _configuration, ILogger<HomeController> logger)
        {
            this.configuration = _configuration;
            _logger = logger;
        }

        public IActionResult Index()
        {
            DBManager dbm = new DBManager(configuration);

            PageContentModel pgm = new PageContentModel();

            pgm.Languages = dbm.GetAllLanguages();
            string language = "";

            if (HttpContext.Session.GetString("Language") == "" || HttpContext.Session.GetString("Language") == null || !pgm.Languages.Any(l => l.Code.Equals(HttpContext.Session.GetString("Language"))))
            {
                // Setting up the Language session string
                language = HttpContext.Request.Headers["Accept-Language"].ToString().Split(',')[0];
                HttpContext.Session.SetString("Language", pgm.Languages.Any(l => l.Code.Equals(language)) ? language : "en-UK");
            }
            
            language = HttpContext.Session.GetString("Language");
            

            pgm.Contents = dbm.GetAllTranslatedPageContent("Frontpage", language);
            return View(pgm);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult SelectLanguage(string language)
        {
            HttpContext.Session.SetString("Language", language);
            return Index();
        }
    }
}
