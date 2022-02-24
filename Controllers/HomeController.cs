using LoremIpsum.Models;
using LoremIpsum.Models.ViewModels;
using LoremIpsum.DAL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace LoremIpsum.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration configuration;
        private LanguageLogic ll;

        public HomeController(IConfiguration _configuration, ILogger<HomeController> logger)
        {
            this.configuration = _configuration;
            this.ll = new LanguageLogic();
            _logger = logger;
        }

        public IActionResult Index()
        {
            DBManager dbm = new DBManager(configuration);

            PageContentModel pgm = new PageContentModel();

            pgm.Texts = new List<string>() { dbm.GetTranslatedContentText("Frontpage", "WelcomeText", "da-DK") };
            return View(pgm);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
