using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tahsinsoyakblog.Classes
{
    public class File
    {
        [Key]
        public int FileID { get; set; }
        public string CodeLang { get; set; }
        public int MemberID { get; set; }
        public virtual Member Members { get; set; }
    }
}