using KanbanApp.Domain.Entities;
using KanbanApp.Web.UI.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace KanbanApp.Web.UI
{

    public class BoardController : Controller
    {
        public IActionResult Index()
        {

            BoardViewModel model = new BoardViewModel();
            model.BoardList = new List<Board>();

            model.BoardList.Add(new Board() { BoardId = "1", Name = "Yapilacak Isler" });
            model.BoardList.Add(new Board() { BoardId = "2", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "3", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "4", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "5", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "6", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "7", Name = "Isler" });
            model.BoardList.Add(new Board() { BoardId = "8", Name = "Isler" });
            return View(model);
        }

        public IActionResult New()
        {

            BoardNewViewModel model = new BoardNewViewModel();

            return View(model);
        }

        public IActionResult Update(string BoardId)
        {



            return View();
        }

        public IActionResult List()
        {



            return View();
        }


        public IActionResult Deneme()
        {

            return View();
        }

        public IActionResult LTETest()
        {

            return View();
        }


        public IActionResult LTETestJKanban()
        {

            return View();
        }

        /*[HttpPost]
        public async Task<ActionResult<TodoItem>> PostTodoItem(TodoItem item)
        {
            _context.TodoItems.Add(item);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetTodoItem), new { id = item.Id }, item);
        }*/
    }
}