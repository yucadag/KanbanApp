using System;
using System.Collections.Generic;
using System.Text;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Services.DTO.OutPut.CardServiceOutput
{
    public class CardGetListOutPut
    {
        public string CardId { get; internal set; }
        public string Description { get; internal set; }
        public string Name { get; internal set; }
        public CardType CardType { get; internal set; }
    }
}
