using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoremIpsum.Models
{
    public class LanguageModel
    {
        public string Name { get; set; }
        public string Code { get; set; }

        public LanguageModel() { }
        public LanguageModel(string name, string code) { Name = name;Code = code; }

        public string GetImagePath()
        {
            return "~/Assets/Pictures/" + this.Code + ".png";
        }
    }
}
