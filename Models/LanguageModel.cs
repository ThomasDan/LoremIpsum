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
        public string ImageURL { get; set; }

        public LanguageModel() { }
        public LanguageModel(string name, string code, string imageURL) { Name = name;Code = code; ImageURL = imageURL; }

        
    }
}
