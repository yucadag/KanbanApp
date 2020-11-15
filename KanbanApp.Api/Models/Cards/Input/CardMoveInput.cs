using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.Cards.Input
{
    public class CardMoveInput
    {
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
    }
}
