using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace KanbanApp.Services.DTO.Input.BoardServiceInput
{
    public class BoardUpdateInput
    {
        [Required]
        public string BoardId { get; set; }
        [Required]
        public string OwnerId { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }

    }
}
