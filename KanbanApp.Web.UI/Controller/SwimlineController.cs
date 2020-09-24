using KanbanApp.Domain.Entities;
using KanbanApp.Web.UI.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace KanbanApp.Web.UI
{
    public class SwimlineController : Controller
    {
        public IActionResult Index()
        {
            SwimlineViewModel model = new SwimlineViewModel();
            model.SwimLaneList = new List<SwimLane>();

            model.BoardItem = new Board()
            {
                BoardId = Guid.NewGuid().ToString(),
                Name = "Yapilacak Isler"
            };


            model.SwimLaneList.Add(new SwimLane()
            {
                SwimLaneId = Guid.NewGuid().ToString(),
                Name = "Yapilacaklar",
                Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 1", Description = "Aciklama 1" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 2", Description = "Aciklama 2" } }
            });

            model.SwimLaneList.Add(new SwimLane()
            {
                SwimLaneId = Guid.NewGuid().ToString(),
                Name = "Yapiliyor",
                Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 3", Description = "Aciklama 3" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 4", Description = "Aciklama 4" } }
            });

            model.SwimLaneList.Add(new SwimLane()
            {
                SwimLaneId = Guid.NewGuid().ToString(),
                Name = "Yapildi",
                Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 5", Description = "Aciklama 5" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 6", Description = "Aciklama 6" } }
            });     

            return View(model);
        }
    }
}