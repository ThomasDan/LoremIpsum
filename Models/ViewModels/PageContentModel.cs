using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoremIpsum.Models;

namespace LoremIpsum.Models.ViewModels
{
    public class PageContentModel
    {
        public List<ContentTextModel> Contents { get; set; }
        public List<LanguageModel> Languages { get; set; }

        public PageContentModel() { }
        public PageContentModel(List<ContentTextModel> contents, List<LanguageModel> languages) 
        { 
            this.Contents = contents; 
            this.Languages = languages; 
        }
    }
}
