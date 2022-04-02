using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SAEP22.Models
{
    public class Comentarios
    {

        [Key]
        public int Id { get; set; }
        public string Comentario { get; set; }

        [ForeignKey("Equipamentos")]
        public int IdEquipamento { get; set; }
        public Equipamentos Equipamentos { get; set; }

        [ForeignKey("Perfis")]
        public int IdPerfil { get; set; }
        public Perfis Perfis { get; set; }

        public DateTime Data { get; set; }
    }
}
