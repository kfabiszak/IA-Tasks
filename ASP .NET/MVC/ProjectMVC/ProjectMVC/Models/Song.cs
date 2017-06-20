﻿using System.ComponentModel.DataAnnotations;

namespace ProjectMVC.Models
{
    public class Song
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Name is required!")]
        [StringLength(100, ErrorMessage = "Maximal length of the name of a song is 100 characters!")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Artist is required!")]
        [StringLength(100, ErrorMessage = "Maximal length of the artist of a song is 100 characters!")]
        public string Artist { get; set; }
        public int GenreId { get; set; }
    }
}