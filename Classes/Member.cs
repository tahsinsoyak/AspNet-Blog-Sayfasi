using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tahsinsoyakblog.Classes
{
    public class Member
    {
        [Key]
        public int MemberID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public virtual List<File> Files { get; set; }


    }
}