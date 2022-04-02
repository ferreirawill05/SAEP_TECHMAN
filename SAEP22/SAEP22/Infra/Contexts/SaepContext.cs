using Microsoft.EntityFrameworkCore;
using SAEP22.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SAEP22.Infra
{
    public class SaepContext : DbContext
    {
        public SaepContext(DbContextOptions<SaepContext> options) : base(options)
        {

        }

        public DbSet<Perfis> Perfis { get; set; }
        public DbSet<Usuarios> Usuarios { get; set; }
        public DbSet<Equipamentos> Equipamentos { get; set; }
        public DbSet<Comentarios> Comentarios { get; set; }
    }
}
