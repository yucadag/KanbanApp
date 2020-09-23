using Microsoft.AspNetCore.Mvc;

namespace KanbanApp.Web.UI
{
    public class CardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult New()
        {
            return View();
        }

        public IActionResult Update(decimal CardId)
        {
            return View();
        }
    }
}