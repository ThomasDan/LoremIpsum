using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoremIpsum.Models.ViewModels
{
    public class PageContentModel
    {
        public List<string> Texts { get; set; }

        public PageContentModel() { }
        public PageContentModel(List<string> texts) { this.Texts = texts; }
    }
}
