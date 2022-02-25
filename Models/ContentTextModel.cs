using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoremIpsum.Models
{
    public class ContentTextModel
    {
        public string Name { get; set; }
        public string Text { get; set; }
        public ContentTextModel() { }
        public ContentTextModel(string name, string text) 
        {
            Name = name;
            Text = text;
        }
    }
}
