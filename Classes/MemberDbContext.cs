using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace tahsinsoyakblog.Classes
{
    public class MemberDbContext : DbContext
    {
        public DbSet<Member> Members { get; set; }
        public DbSet<File> Files { get; set; }
    }
}