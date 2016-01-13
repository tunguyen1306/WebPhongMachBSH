using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebMVCPhongMach.Models
{
    public class EmailContact
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string Email_ { get; set; }
        [Required]
        public string Phone { get; set; }
        [Required]
        public string content { get; set; }
    }
}